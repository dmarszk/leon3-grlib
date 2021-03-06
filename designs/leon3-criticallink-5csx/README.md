# Overview

Note: This design is EXPERIMENTAL.

This LEON3 design is tailored for the Altera Cyclone V SX SoC on the
Criticallink 5CSX-42A board synthesizable with Quartus II 16.1

Design utilises:
  * LEON3 running at 50 MHz
  * 256 GiB DDR3 running at 300 MHz using Altera UniPHY memory controller IP
  * FPGA2HPS bridge allowing the LEON3 system to access the hard processor
    address space.
  * HPS2FPGA bridge allowing the hard processor system to access the LEON3
    address space.
  * JTAG debug port connected to on-board USB blaster II (currently not working properly)
  * UART debug port
  * 2 peripheral UART ports (1 for system console, 1 extra)
  * CAN controller connected to the dev board's second CAN interface
  * GPIO controller
  * Routing to the dev board's LEDs and Push Buttons
  * HPS-FPGA H2F GPIO routing for ease of controlling the SoC from HPS
  

Information about the hard processor system can be found in:
https://www.altera.com/en_US/pdfs/literature/hb/cyclone-v/cv_5v4.pdf

# Important notes

* The HPS (Hard Processing System) part of the system requires ARM-processor to be booted. If
  the HPS system is not booted, the bridges will not work.
* This project was designed having in mind a Linux image delivered
  with the board.
* The JTAG debug link requires a system clock frequency several times
  higher than the JTAG clock to function properly. To reduce the
  chance of any synchronization errors it is possible to lower the
  altera JTAG clock frequency by using the command:
  ```
  jtagconfig --setparam <cable number> JtagClock <clock freq>
  ```
  Available options for clock freq are 6M, 16M and 24M where 24M is
  the default value. If you unplug the USB Blaster II cable the value
  will be reset to 24M.

# Recommended hardware
- Criticallink MitySOM-5CSx Development Kit with 5CSX-42A SOM
- TDRB-HTG (M) HSMC P0033 adapter
- Minimum 2 of USB-UART 3.3V bridges

# Design details

## LEDs
3 LEDs (LED1-LED3) and 3 push-buttons (SW1-SW3) are connected to HPS
and exposed to the FPGA through IO Loaner interface.

LED assignments:
* LED3 (red)    - CPU in error mode
* LED2 (yellow) - DSU active
* LED1 (green)  - Main PLL LOCK

## Push buttons
Push button assignments:
* SW3 - DSU break
* SW2 - Reset LEON system
* SW1 - unused

## Additional ports
Additional ports (for debugging purposes only):
* HSMC1_TX15 (out)  - CLK2DDR (100MHz) divided by 2^26. Approx. 1.5Hz.
* HSMC1_TX14_N (in) - see below
* HSMC1_TX14 (out)  - logical AND of HSMC1_TX14_N input with signal seen on HSMC1_TX15

## GRGPIO
GRGPIO IP-core in the design has 16 pins, out of which 8 are mapped to the FPGA pins. Remaining 8 are connected to HPS-FPGA interface. Pins 0-11 of the pins are capable of generating an interrupt.

GRGPIO port mapping:
* GPIO[0] - HSMC_TX0
* GPIO[1] - HSMC_TX0_N
* GPIO[2] - HSMC_TX1
* GPIO[3] - HSMC_TX1_N
* GPIO[4] - HSMC_TX2
* GPIO[5] - HSMC_TX2_N
* GPIO[6] - HSMC_TX3
* GPIO[7] - HSMC_TX3_N
* GPIO[8] - H2F GPO[8] (input only)
* GPIO[9] - H2F GPO[9] (input only)
* GPIO[10] - H2F GPO[10] (input only)
* GPIO[11] - H2F GPO[11] (input only)
* GPIO[12] - H2F GPI[12] (output only)
* GPIO[13] - H2F GPI[13] (output only)
* GPIO[14] - H2F GPI[14] (output only)
* GPIO[15] - H2F GPI[15] (output only)

## CAN interface
CAN pins routing is done through HPS->FPGA loan IO, the IP-Core is Gaisler wrapper for OpenCores CAN (documentation in grip.pdf)

CAN port mapping:
* CAN_OC RX - HPS CAN2 RX
* CAN_OC TX - HPS CAN2 TX

## Debug UART
Debug UART port mapping:
* AHB Debug UART TX - HSMC1_RX6_N
* AHB Debug UART RX - HSMC1_RX7_N

## Peripheral UART ports (APBUART)
Peripheral UART ports mapping:
* UART1 TX (console stdout) - HSMC1_RX10_N
* UART1 RX (console stdin ) - HSMC1_RX10
* UART2 TX - HSMC1_RX11_N
* UART2 RX - HSMC1_RX11

## HPS-FPGA control signals
HPS-FPGA control signals:
* LEON CPU starts in reset mode, controlled by HPS.
* LEON system active high reset is controlled by HPS using H2F General Purpose Output signal GPO[0].
* LEON CPU active low reset is controlled by HPS using H2F General Purpose Output signal GPO[1].
  It allows writing to the LEON memory from HPS side before releasing the CPU reset.
  GPO control register address on HPS bus is 0xFF706010.
  To set the bus reset - write value 0x1 to the control register.
  To release the CPU reset - write value 0x2 to the control register.
  Example:
  ```
  peekpoke -b 0xFF706010 w.l 0x0 0x2
  ```
  In general, leon-loader application should be used on the HPS side (see [Booting Hello World on LEON from HPS](#booting-hello-world-on-leon-from-hps)).

## LEON Memory Map
LEON AHB Memory Map:
* 0x00000000 - PROM, size 1 Mbyte, cacheable, prefetch
* 0x20000000 (Simulation only) - Test report module, size 1 Mbyte
* 0x40000000 - Avalon-MM memory controller, size 256 Mbyte
* 0x80000000 - AHB-APB bridge, size 1 Mbyte
  * 0x80000100 - Generic UART, size 256 byte
  * 0x80000200 - Multi-processor Interrupt Ctrl., size 256 byte
  * 0x80000300 - Modular Timer Unit, size 256 byte
  * 0x80000700 - AHB Debug UART, size 256 byte
  * 0x80000800 - General Purpose I/O port, size 256 byte
* 0x90000000 - LEON3 Debug Support Unit, size 256 Mbyte
* 0xc0000000 - AMBA AHB/AXI Bridge, size 256 Mbyte
* 0xfffc0000 - OC CAN AHB interface, size 256 byte
	
## HPS-FPGA bridge
The access to the LEON peripherals from HPS is done through AXI2AHB
bridge mapped in HPS under 0xC0000000 - 0xFBFFFFFF address space,
with dynamic address translation of 4 memory regions:
* 0xC0000000 -> 0x40000000 (RAM)
* 0xD0000000 -> 0x50000000 (RAM)
* 0xE0000000 -> 0x80000000 (APB peripherals)
* 0xF0000000 -> 0x90000000 (DSU)
The LEON bus reset has to be programatically released before issuing
any reads on HPS-FPGA bridge. Otherwise the system will freeze.

## FPGA-HPS bridge
The access to the HPS peripherals is given an offset in the AHB2AXI bridge (example: 0xCF700000 translates to 0xFF700000). This can be modified in the design config.

## LEON Interrupts
* 2 - APB UART1 (console)
* 3 - APB UART2
* 7 - AHB status register (disabled in the default config)
* 8 - Timer
* 13 - CAN_OC
* GRGPIO can generate signal on any of the LEON IRQ lines.

# Simulation
The standard GRLIB flow with "make vsim" and then "vsim testbench" can be used to
simulate the design. The simulation uses a simplified DDR3 controller.

# Programming
To synthesize the design (requires Quartus II 16.1), first build the megafunctions
using "make qwiz", then use the "make quartus" command to synthesize. To synthesize
in the Quartus II gui use "make quartus-launch".

Use "make quartus-prog-fpga" to program the FPGA. Make sure that the JTAG CHAIN SW
on the board is set to "00", otherwise the programming will fail.


# HPS software loader
The project includes an application allowing to boot software on LEON from linux running on HPS.

Compile it using:
```
arm-linux-gnueabihf-gcc leon-loader.c -o leon-loader
```
Then copy leon-loader to the target board filesystem.


# Booting Hello World on LEON from HPS
Compile Hello World using:
```
sparc-gaisler-elf-clang -g -Wall -msoft-float hello_world.c -o hello_world.exe
```
If FPU has been enabled in the project config, use:
```
sparc-gaisler-elf-clang -g -Wall hello_world.c -o hello_world.exe
```
Note: This will **_not_** work with the default project configuration (FPU is disabled by default for licensing reasons).

For use with Bare-C Cross Compiler System v1, replace "sparc-gaisler-elf-clang" with "sparc-elf-gcc"

Copy hello_world.exe to the target board and invoke there.
```
leon-loader -f leon_software.exe -br
```
It causes loader to reset LEON bus, put CPU into reset, load the software through shared memory and release CPU reset.

Alternatively, grmon can be used (see [Program Load](#program-load))


# Known issues and future evolution
- JTAG interface to the DSU does not work - UART connection is required.

- There is a bug within ahb2avl bridge, used to bridge LEON to the DDR3 UniPHY controller.
It does not properly handle long burst transfers where the slave can introduce a gap into the
responses. It can cause a cache line corruption and an undefined behavior.
This has been mitigated by reducing the burst size on the DDR interface to 2 AVL words.
Otherwise, the recommended burst size is to match the cache line size (8 AVL words).

- While H2F GPO pins can trigger interrupt on LEON side using GRGPIO functionality,
the F2H GPI pins are not capable of triggering interrupt on HPS side.
This can be improved by hooking F2H GPI lines to dedicated HPS_F2H IRQ lane.

- System images of RTEMS do not work out of the box (i.e. no UART output is produced) when executed directly from system reset (using only `leon-loader`).
A workaround for that involves: connecting to the target using a debugger (e.g. `grmon`), which initialises the peripheral interfaces (i.e. clocks, etc), then loading the image through `leon-loader -bf` and either detaching the debugger, or resuming the execution, if the use of debugger is desired.
Further tackling this issue could involve performing all the proper initialization in the ROM code.

# Debugging
Debugging can be done over the debug UART interface (JTAG currently does not work properly).
CPU reset has to be released (HPS2FPGA GPO[1] set to high) before running software on the core.
Recommended way is to run ```leon-loader -b``` on HPS system **_before_** initializing grmon connection.

## Debugger connection
(replace /dev/ttyUSB2 with the port assigned to the USB-UART converter connected to the LEON DSU port)
```
user@OSMitySOM:~$ grmon -uart /dev/ttyUSB2

  GRMON2 LEON debug monitor v2.0.86 64-bit eval version

  Copyright (C) 2017 Cobham Gaisler - All rights reserved.
  For latest updates, go to http://www.gaisler.com/
  Comments or bug-reports to support@gaisler.com

  This eval version will expire on 06/03/2018

  Detected frequency:  50 MHz

  Component                            Vendor
  LEON3 SPARC V8 Processor             Cobham Gaisler
  AHB Debug UART                       Cobham Gaisler
  JTAG Debug Link                      Cobham Gaisler
  AMBA AXI/AHB Bridge                  Cobham Gaisler
  Generic AHB ROM                      Cobham Gaisler
  AHB/APB Bridge                       Cobham Gaisler
  LEON3 Debug Support Unit             Cobham Gaisler
  Avalon-MM memory controller          Cobham Gaisler
  AMBA AHB/AXI Bridge                  Cobham Gaisler
  Generic UART                         Cobham Gaisler
  Multi-processor Interrupt Ctrl.      Cobham Gaisler
  Modular Timer Unit                   Cobham Gaisler

  Use command 'info sys' to print a detailed report of attached cores

grmon2> info sys
  cpu0      Cobham Gaisler  LEON3 SPARC V8 Processor
            AHB Master 0
  ahbuart0  Cobham Gaisler  AHB Debug UART
            AHB Master 1
            APB: 80000700 - 80000800
            Baudrate 115200, AHB frequency 50.00 MHz
  ahbjtag0  Cobham Gaisler  JTAG Debug Link
            AHB Master 2
  adev3     Cobham Gaisler  AMBA AXI/AHB Bridge
            AHB Master 3
  adev4     Cobham Gaisler  Generic AHB ROM
            AHB: 00000000 - 00100000
  apbmst0   Cobham Gaisler  AHB/APB Bridge
            AHB: 80000000 - 80100000
  dsu0      Cobham Gaisler  LEON3 Debug Support Unit
            AHB: 90000000 - A0000000
            AHB trace: 64 lines, 32-bit bus
            CPU0:  win 8, hwbp 2, itrace 256, V8 mul/div, srmmu, lddel 1
                   stack pointer 0x5ffffff0
                   icache 2 * 4 kB, 32 B/line
                   dcache 2 * 4 kB, 32 B/line, snoop tags
  ahb2avla0 Cobham Gaisler  Avalon-MM memory controller
            AHB: 40000000 - 60000000
            AHB: FFF00000 - 00000000
            SDRAM: 512 Mbyte
  adev8     Cobham Gaisler  AMBA AHB/AXI Bridge
            AHB: C0000000 - D0000000
  uart0     Cobham Gaisler  Generic UART
            APB: 80000100 - 80000200
            IRQ: 2
            Baudrate 38343, FIFO debug mode
  irqmp0    Cobham Gaisler  Multi-processor Interrupt Ctrl.
            APB: 80000200 - 80000300
  gptimer0  Cobham Gaisler  Modular Timer Unit
            APB: 80000300 - 80000400
            IRQ: 8
            8-bit scalar, 2 * 32-bit timers, divisor 50
``` 
## Program load
```
grmon2> load hello_world.exe; verify hello_world.exe; run
  40000000 .text                     23.7kB /  23.7kB   [===============>] 100%
  40005ED0 .data                      2.7kB /   2.7kB   [===============>] 100%
  Total size: 26.38kB (107.10kbit/s)
  Entry point 0x40000000
  Image /home/user/leon/grlib-repo/designs/leon3-criticallink-5csx/hello_world.exe loaded
  40000000 .text                     23.7kB /  23.7kB   [===============>] 100%
  40005ED0 .data                      2.7kB /   2.7kB   [===============>] 100%
  Total size: 26.38kB (53.78kbit/s)
  Entry point 0x40000000
  Image of /home/user/leon/grlib-repo/designs/leon3-criticallink-5csx/hello_world.exe verified without errors
  Program exited normally.
```





