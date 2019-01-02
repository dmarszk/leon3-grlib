/**
 * Loader of LEON software ELF images.
 * Also allows control of bus and CPU reset signals.
 * This program is executed on HPS side of Altera Cyclone V system with LEON and H2F bridge.
 *
 * Contains parts of ELF-parser by TheCodeArtist.
 * Source: https://github.com/TheCodeArtist/elf-parser
 *
 * Installation:
 *  arm-linux-gnueabihf-gcc leon-loader.c -o leon-loader
 *
 **/

#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <stdbool.h>
#include <sys/mman.h>
#include <ctype.h>

#include <elf.h>

#define DEBUG 0

#define FPGA_MANAGER_BASE 0xFF706000
#define FPGA_MANAGER_GPO_OFF 0x10
#define FPGA_MANAGER_GPI_OFF 0x14

#define GPO_BUS_RESET_BIT 0
#define GPO_LEON_NRESET_BIT 1

#define debug(...) \
            do { if (DEBUG) printf("<debug>:"__VA_ARGS__); } while (0)

typedef struct memory_map_entry
{
  uint32_t leon_base;
  uint32_t hps_base;
  uint32_t size;
} Memory_Map_Entry;

// Memory map HPS base should be aligned to the Kernel Page Size (typically 4096 bytes)
Memory_Map_Entry memory_map[] =
{
  {0x40000000, 0xC0000000, 0x10000000},
  // There is no memory under this address in the current design
  // because MitySOM5CSX-42A has only 256 MiB of FPGA memory
  //{0x50000000, 0xD0000000, 0x10000000},
  {0x80000000, 0xE0000000, 0x10000000},
  {0x90000000, 0xF0000000, 0x0C000000},
  {0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF}
};
static int host_endian;
static int swap_endian = 0;
static int valid = 1;
static int memfd;
static const char* input_file;
static int boot_leon = 0;
static int reset_bus = 0;
static int dry_run = 0;
static uint32_t page_size;

static void* fpga_manager_va;

static uint16_t read_uint16(void* ptr)
{
  uint16_t val = *(uint16_t*)ptr;
  if(!swap_endian)
    return val;
  return (val << 8) | ((val >> 8) & 0xFF);
}

static uint32_t read_uint32(void* ptr)
{
  uint32_t val = *(uint32_t*)ptr;
  if(!swap_endian)
    return val;
  val = ((val << 8) & 0xFF00FF00 ) | ((val >> 8) & 0xFF00FF );
  return (val << 16) | (val >> 16);
}

static void fix_ehdr_endianess(Elf32_Ehdr *elf_header)
{
  if(swap_endian)
  {
    elf_header->e_type = read_uint16(&elf_header->e_type);
    elf_header->e_machine = read_uint16(&elf_header->e_machine);
    elf_header->e_version = read_uint32(&elf_header->e_version);
    elf_header->e_entry = read_uint32(&elf_header->e_entry);
    elf_header->e_phoff = read_uint32(&elf_header->e_phoff);
    elf_header->e_shoff = read_uint32(&elf_header->e_shoff);
    elf_header->e_flags = read_uint32(&elf_header->e_flags);
    elf_header->e_ehsize = read_uint16(&elf_header->e_ehsize);
    elf_header->e_phentsize = read_uint16(&elf_header->e_phentsize);
    elf_header->e_phnum = read_uint16(&elf_header->e_phnum);
    elf_header->e_shentsize = read_uint16(&elf_header->e_shentsize);
    elf_header->e_shnum = read_uint16(&elf_header->e_shnum);
    elf_header->e_shstrndx = read_uint16(&elf_header->e_shstrndx);
  }
}

static void fix_shdr_endianess(Elf32_Shdr *section_header)
{
  if(swap_endian)
  {
    section_header->sh_name = read_uint32(&section_header->sh_name);
    section_header->sh_type = read_uint32(&section_header->sh_type);
    section_header->sh_flags = read_uint32(&section_header->sh_flags);
    section_header->sh_addr = read_uint32(&section_header->sh_addr);
    section_header->sh_offset = read_uint32(&section_header->sh_offset);
    section_header->sh_size = read_uint32(&section_header->sh_size);
    section_header->sh_link = read_uint32(&section_header->sh_link);
    section_header->sh_info = read_uint32(&section_header->sh_info);
    section_header->sh_addralign = read_uint32(&section_header->sh_addralign);
    section_header->sh_entsize = read_uint32(&section_header->sh_entsize);
  }
}

static void read_elf_header(int32_t fd, Elf32_Ehdr *elf_header)
{
  assert(elf_header != NULL);
  assert(lseek(fd, (off_t)0, SEEK_SET) == (off_t)0);
  assert(read(fd, (void *)elf_header, sizeof(Elf32_Ehdr)) == sizeof(Elf32_Ehdr));

  switch(elf_header->e_ident[EI_DATA])
  {
    case ELFDATA2LSB:
      if (host_endian == 1)
        swap_endian = 1;
      break;
    case ELFDATA2MSB:
      if (host_endian == 0)
        swap_endian = 1;
      break;
    default:
      break;
  }

  fix_ehdr_endianess(elf_header);
}

static bool is_ELF(Elf32_Ehdr eh)
{
  /* ELF magic bytes are 0x7f,'E','L','F'
   * Using  octal escape sequence to represent 0x7f
   */
  if(!strncmp((char*)eh.e_ident, "\177ELF", 4))
  {
    printf("ELFMAGIC \t= ELF\n");
    /* IS a ELF file */
    return 1;
  } else {
    printf("ELFMAGIC mismatch!\n");
    /* Not ELF file */
    return 0;
  }
}

static void print_elf_header(Elf32_Ehdr elf_header)
{
  /* Storage capacity class */
  printf("Storage class\t= ");
  switch(elf_header.e_ident[EI_CLASS])
  {
    case ELFCLASS32:
      printf("32-bit objects\n");
      break;
    default:
      printf("INVALID CLASS\n");
      valid = 0;
      break;
  }

  /* Data Format */
  printf("Data format\t= ");
  switch(elf_header.e_ident[EI_DATA])
  {
    case ELFDATA2LSB:
      printf("2's complement, little endian\n");
      break;

    case ELFDATA2MSB:
      printf("2's complement, big endian\n");
      break;

    default:
      printf("INVALID Format\n");
      valid = 0;
      break;
  }

  /* OS ABI */
  printf("OS ABI\t\t= ");
  switch(elf_header.e_ident[EI_OSABI])
  {
    case ELFOSABI_SYSV:
      printf("UNIX System V ABI\n");
      break;

    case ELFOSABI_LINUX:
      printf("Linux\n");
      break;

    case ELFOSABI_STANDALONE:
      printf("Standalone (embedded) app\n");
      break;

    default:
      printf("Unknown (0x%x)\n", elf_header.e_ident[EI_OSABI]);
      valid = 0;
      break;
  }

  /* ELF filetype */
  printf("Filetype \t= ");
  switch(elf_header.e_type)
  {
    case ET_EXEC:
      printf("Executable\n");
      break;
    case ET_DYN:
      printf("Shared Object\n");
      break;
    default:
      printf("Unknown (0x%x)\n", elf_header.e_type);
      valid = 0;
      break;
  }

  /* ELF Machine-id */
  printf("Machine\t\t= ");
  switch(elf_header.e_machine)
  {
    case EM_NONE:
      printf("None (0x0)\n");
      valid = 0;
      break;
    case EM_SPARC:
      printf("SPARC (0x%x)\n", EM_SPARC);
      break;
    default:
      printf("Machine\t= 0x%x\n", elf_header.e_machine);
      valid = 0;
      break;
  }

  /* Entry point */
  printf("Entry point\t= 0x%08x\n", elf_header.e_entry);

  /* ELF header size in bytes */
  printf("ELF header size\t= 0x%08x\n", elf_header.e_ehsize);
  printf("ELF phdr size\t= 0x%08x\n", elf_header.e_phentsize);

  /* Program Header */
  printf("\nProgram Header\t= ");
  printf("0x%08x\n", elf_header.e_phoff);   /* start */
  printf("\t\t  %d entries\n", elf_header.e_phnum); /* num entry */
  printf("\t\t  %d bytes\n", elf_header.e_phentsize); /* size/entry */

  /* Section header starts at */
  printf("\nSection Header\t= ");
  printf("0x%08x\n", elf_header.e_shoff);   /* start */
  printf("\t\t  %d entries\n", elf_header.e_shnum); /* num entry */
  printf("\t\t  %d bytes\n", elf_header.e_shentsize); /* size/entry */
  printf("\t\t  0x%08x (string table offset)\n", elf_header.e_shstrndx);

  /* File flags (Machine specific)*/
  printf("\nFile flags \t= 0x%08x\n", elf_header.e_flags);

  /* ELF file flags are machine specific.
   * SPARC has no flags
   */

  printf("\n"); /* End of ELF header */

}

static void read_section_header_table(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[])
{
  uint32_t i;

  assert(lseek(fd, (off_t)eh.e_shoff, SEEK_SET) == (off_t)eh.e_shoff);

  for(i=0; i<eh.e_shnum; i++)
  {
    assert(read(fd, (void *)&sh_table[i], eh.e_shentsize)
       == eh.e_shentsize);
    fix_shdr_endianess(&sh_table[i]);
  }

}

static void read_section_to_buf(int32_t fd, Elf32_Shdr* sh, char * buf)
{
  assert(buf != NULL);
  assert(lseek(fd, (off_t)sh->sh_offset, SEEK_SET) == (off_t)sh->sh_offset);
  assert(read(fd, (void *)buf, sh->sh_size) == sh->sh_size);
}

static char * read_section(int32_t fd, Elf32_Shdr* sh)
{
  char* buff = malloc(sh->sh_size);
  if(!buff)
  {
    printf("%s:Failed to allocate %dbytes\n",
      __func__, sh->sh_size);
    exit(-2);
  }

  read_section_to_buf(fd, sh, buff);

  return buff;
}

static uint32_t get_hps_section_address(Elf32_Shdr* shdr, Memory_Map_Entry** map_entry)
{
  Memory_Map_Entry* curr_entry = memory_map;
  *map_entry = NULL;
  while(curr_entry->leon_base != 0xFFFFFFFF)
  {
    if(curr_entry->leon_base <= shdr->sh_addr && curr_entry->leon_base + curr_entry->size > shdr->sh_addr)
    {
      if(curr_entry->leon_base + curr_entry->size >= shdr->sh_addr + shdr->sh_size)
        break;
      else
        printf("Section 0x%08x matches the memory map entry"
          "(0x%08x, 0x%08x, 0x%08x) but is too big (0x%08x).\n",
          shdr->sh_addr, curr_entry->leon_base, curr_entry->hps_base,
          curr_entry->size, shdr->sh_size);
    }
    curr_entry++;
  }
  // Rebase to the HPS memory space
  if(curr_entry->leon_base != 0xFFFFFFFF)
  {
    *map_entry = curr_entry;
    return shdr->sh_addr - curr_entry->leon_base + curr_entry->hps_base;
  }
  return 0xFFFFFFFF;
}

static void load_section(int32_t fd, Elf32_Shdr* sh, uint32_t hps_addr, Memory_Map_Entry* map_entry, char* section_name)
{
  uint32_t pa_base, offset, mmap_size;
  void* va_base;
  char* va_buf;
  pa_base = hps_addr & ~(page_size - 1);
  offset = hps_addr - pa_base;
  mmap_size = ((hps_addr + sh->sh_size + page_size) & ~(page_size - 1)) - pa_base;
  printf(" - mapping 0x%08X bytes PA 0x%08X (target offset 0x%08X) [%s]\n",
    mmap_size, pa_base, offset, section_name);
  if(!dry_run)
  {
    va_base = mmap(0, mmap_size, PROT_READ | PROT_WRITE, MAP_SHARED, memfd, pa_base);
    if (va_base == NULL)
    {
      printf(" Can't map memory to user space.\n");
      exit(-2);
    }
    va_buf = (char*)va_base + offset;
    switch (sh->sh_type)
    {
      case SHT_PROGBITS:
        printf(" - loading 0x%08X bytes to VA buf 0x%08X (VA base 0x%08X) [%s]\n",
          sh->sh_size, (uint32_t)va_buf, (uint32_t)va_base, section_name);
        read_section_to_buf(fd, sh, va_buf);
        break;
      case SHT_NOBITS:
        printf(" - Skipping load for NOBITS section\n");
        break;
      default:
        printf(" - Don't know how to handle section type 0x%X\n", sh->sh_type);
        break;
    }
    if (munmap(va_base, mmap_size) == -1)
    {
      printf(" Can't unmap memory from user space.\n");
      exit(-2);
    }
  }

}

static void load_sections_to_memory(int32_t fd, Elf32_Ehdr eh, Elf32_Shdr sh_table[])
{
  uint32_t i;
  Memory_Map_Entry* map_entry;
  uint32_t hps_section_address;
  char* sh_str; /* section-header string-table is also a section. */

  printf("Loading sections to memory:\n");
  /* Read section-header string-table */
  sh_str = read_section(fd, &sh_table[eh.e_shstrndx]);

  printf("====================================================");
  printf("========================================\n");
  printf(" idx offset     load-addr  hps-addr   size       algn"
     " flags      type       section\n");
  printf("====================================================");
  printf("========================================\n");

  for(i=0; i<eh.e_shnum; i++)
  {
    if((sh_table[i].sh_flags & SHF_ALLOC) == 0)
      continue;
    printf(" %03d ", i);
    printf("0x%08x ", sh_table[i].sh_offset);
    printf("0x%08x ", sh_table[i].sh_addr);
    hps_section_address = get_hps_section_address(&sh_table[i], &map_entry);
    printf("0x%08x ", hps_section_address);
    printf("0x%08x ", sh_table[i].sh_size);
    printf("%4d ", sh_table[i].sh_addralign);
    printf("0x%08x ", sh_table[i].sh_flags);
    printf("0x%08x ", sh_table[i].sh_type);
    printf("%s\t", (sh_str + sh_table[i].sh_name));
    printf("\n");
  }
  printf("====================================================");
  printf("========================================\n");
  printf("\n"); /* end of section header table */

  for(i=0; i<eh.e_shnum; i++)
  {
    if((sh_table[i].sh_flags & SHF_ALLOC) == 0)
      continue;
    hps_section_address = get_hps_section_address(&sh_table[i], &map_entry);
    load_section(fd, &sh_table[i], hps_section_address, map_entry, (sh_str + sh_table[i].sh_name));
  }
  free(sh_str);
}

void print_usage(const char* exename)
{
  printf("LEON software loader for Cyclone V\n");
  printf("Usage: %s [-f <ELF-file>] [-dbr]\n", exename);
  printf(" -d dry run (does not write anything to memory)\n");
  printf(" -b boot LEON CPU - puts LEON CPU in reset and releases\n"
         "                    it after software load\n");
  printf(" -r reset LEON bus - resets LEON bus before software load,\n"
  "                            power cycling all peripherals and controllers\n");
}

void parse_arguments(int argc, char** argv)
{
  int c;
  if (argc == 1)
  {
    print_usage(argv[0]);
    exit(-1);
  }
  while ((c = getopt (argc, argv, "dbrf:")) != -1)
  {
    switch (c)
      {
      case 'd':
        dry_run = 1;
        break;
      case 'b':
        boot_leon = 1;
        break;
      case 'r':
        reset_bus = 1;
        break;
      case 'f':
        input_file = optarg;
        break;
      case '?':
        if (optopt == 'f')
          printf("Option -%c requires an argument.\n", optopt);
        else if (isprint (optopt))
        {
          printf("Unknown argument '%c'\n", optopt);
          print_usage(argv[0]);
          exit(-1);
        }
        else
        {
          printf("Unknown option character `\\x%x'.\n",
                 optopt);
          print_usage(argv[0]);
          exit(-1);
        }
      default:
        printf("Argument parsing error.\n");
        print_usage(argv[0]);
        exit(-1);
      }
  }
}

int main(int argc, char** argv)
{
  uint16_t endian_test = 0x1234;
  int32_t fd;
  Elf32_Ehdr eh;    /* elf-header is fixed size */
  Elf32_Shdr* sh_tbl; /* section-header table is variable size */
  uint32_t* fpga_gpo;
  page_size = sysconf(_SC_PAGESIZE);

  if (((uint8_t*)&endian_test)[0] == 0x12)
    host_endian = 1; // big endian
  else
    host_endian = 0; // little endian

  parse_arguments(argc, argv);
  if(!dry_run)
  {
    memfd = open("/dev/mem", O_RDWR | O_SYNC);
    if (memfd == -1)
    {
      printf("Can't open /dev/mem.\n");
      exit(-2);
    }

    fpga_manager_va = mmap(0, page_size, PROT_READ | PROT_WRITE, MAP_SHARED, memfd, FPGA_MANAGER_BASE);
    if (fpga_manager_va == NULL)
    {
      printf("Can't map FPGA manager to user space.\n");
      exit(-2);
    }
    fpga_gpo = (uint32_t*)(((uint32_t) fpga_manager_va) + FPGA_MANAGER_GPO_OFF);
    if (reset_bus)
    {
      printf("Resetting LEON bus... ");
      *fpga_gpo |= (1 << GPO_BUS_RESET_BIT);
      usleep(10000);
      *fpga_gpo &= ~(1 << GPO_BUS_RESET_BIT);
      usleep(10000);
      printf("Done.\n");
    }
    if (boot_leon)
    {
      printf("Pulling LEON CPU reset... ");
      *fpga_gpo &= ~(1 << GPO_LEON_NRESET_BIT);
      usleep(10000);
      printf("Done.\n");
    }
  }

  if(input_file != NULL)
  {
    printf("===== Loading Software =====\n");
    fd = open(input_file, O_RDONLY|O_SYNC);
    if(fd < 0)
    {
      printf("Error %d Unable to open %s\n", fd, argv[1]);
      exit(-2);
    }
    /* ELF header : at start of file */
    read_elf_header(fd, &eh);
    if(!is_ELF(eh))
    {
      exit(-2);
    }
    print_elf_header(eh);

    /* Section header table :  */
    sh_tbl = malloc(eh.e_shentsize * eh.e_shnum);
    if(!sh_tbl)
    {
      printf("Failed to allocate %d bytes\n",
        (eh.e_shentsize * eh.e_shnum));
      exit(-2);
    }
    read_section_header_table(fd, eh, sh_tbl);
    load_sections_to_memory(fd, eh, sh_tbl);
    printf("===== Done =====\n");
  }

  if(!dry_run)
  {
    if(boot_leon)
    {
      printf("Releasing LEON CPU reset... ");
      *fpga_gpo |= (1 << GPO_LEON_NRESET_BIT);
      usleep(10000);
      printf("Done.\n");
    }
    if (munmap(fpga_manager_va, page_size) == -1)
    {
      printf("Can't unmap FPGA manager from user space.\n");
      exit(-2);
    }
  }
  return 0;
}
