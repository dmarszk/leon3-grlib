#include <stdio.h>
#include <stdint.h>
#include "config.h"


#define APB_UART0_BASE (0x80000100)

#define APB_UART0_DATA (APB_UART0_BASE + 0x0)
#define APB_UART0_STATUS (APB_UART0_BASE + 0x4)
#define APB_UART0_CTRL (APB_UART0_BASE + 0x8)
#define APB_UART0_SCALER (APB_UART0_BASE + 0xC)
#define APB_UART0_FIFO_DBG (APB_UART0_BASE + 0x10)

#define MHZ (1000000LL)
#define SRC_CLK (150 * MHZ)

#define MAIN_CLOCK (SRC_CLK*CONFIG_CLK_MUL/CONFIG_CLK_DIV)
#define UART0_BAUD_RATE (115200)
#define UART0_SCALER_VALUE ((MAIN_CLOCK + UART0_BAUD_RATE * 4) / (UART0_BAUD_RATE * 8))

void delay_loop(int n)
{
  int i;
  for(i = 0; i < n; ++i)
    __asm("nop");
}
#define AREA_START 0x40100000
#define AREA_LENGTH  0x00100000 //*4

//uint32_t pattern[] = {0x1234ABCD, 0xABCDABCD, 0x12341234, 0x55555555};

#define PATTERN_LEN 4

#define ENABLE_PRINTS 0

int main(void)
{
  *(uint32_t*)(APB_UART0_SCALER) = UART0_SCALER_VALUE;
  *(uint32_t*)(APB_UART0_CTRL) = 0x80000003; // Enable FIFO, TX and RX
  register int i;
#if ENABLE_PRINTS
  puts("Mem fill\n");
#endif
  register uint32_t* ptr = (uint32_t*)AREA_START;
  for(i = 0; i < AREA_LENGTH; ++i)
  {
    /*
    switch(i&0x3)
    {
      case 0:
        (*ptr) = 0x1234ABCD;
        break;
      case 1:
        (*ptr) = 0xABCDABCD;
        break;
      case 2:
        (*ptr) = 0x12341234;
        break;
      case 3:
        (*ptr) = 0x55555555;
        break;
    }*/
    (*ptr) = (uint32_t)ptr;
    //(*ptr) = pattern[i % PATTERN_LEN];
    ++ptr;
  }
#if ENABLE_PRINTS
  puts("Done, checking...\n");
#endif
  while(1)
  {
    ptr = (uint32_t*)AREA_START;
    for(i = 0; i < AREA_LENGTH; ++i)
    {
      //if((*ptr) != pattern[i % PATTERN_LEN])
      if((*ptr) != (uint32_t)ptr)
      {
#if ENABLE_PRINTS
        puts("FAIL...\n");
#endif
        __asm("ta 0x1");
      }
      /*
      switch(i&0x3)
      {
        case 0:
          if((*ptr) != 0x1234ABCD)
            __asm("ta 0x0");
          break;
        case 1:
          if((*ptr) != 0xABCDABCD)
            __asm("ta 0x0");
          break;
        case 2:
          if((*ptr) != 0x12341234)
            __asm("ta 0x0");
          break;
        case 3:
          if((*ptr) != 0x55555555)
            __asm("ta 0x0");
          break;
      }*/
      ++ptr;
    }
  }
  return 0;
}
