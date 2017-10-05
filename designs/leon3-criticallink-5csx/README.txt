Overview
--------

Note: This design is EXPERIMENTAL.

This LEON3 design is tailored for the Altera Cyclone V SX SoC on the
Criticallink 5CSX-42A board synthesizable with Quartus II 16.1

Design contains:
  * LEON3 running at 50 MHz
  * 256 GiB DDR3 running at 300 MHz using Altera  memory controller IP
  * FPGA2HPS bridge allowing the LEON3 system to access the hard processor
    address space.
  * HPS2FPGA bridge allowing the hard processor system to access the LEON3
    address space.
  * JTAG debug link connected to on-board USB blaster II (currently not working properly)
  * UART debug link

Information about the hard processor system can be found in:
https://www.altera.com/en_US/pdfs/literature/hb/cyclone-v/cv_5v4.pdf

Important notes
---------------

* The HPS part of the system requires ARM-processor to be booted. If
  the HPS system is not booted, the bridges will not work.

* The access to the HPS peripherals is given an offset in the AHB2AXI
  bridge (example: 0xCF700000 translates to 0xFF700000). This can be
  changed by the user.

* The access to the LEON peripherals from HPS is done through AXI2AHB
  bridge mapped in HPS under 0xC0000000 - 0xFBFFFFFF address space,
	with dynamic address translation of 4 memory regions:
	- 0xC0000000 -> 0x40000000 (RAM)
	- 0xD0000000 -> 0x50000000 (RAM)
	- 0xE0000000 -> 0x80000000 (APB peripherals)
	- 0xF0000000 -> 0x90000000 (DSU)

* This template was designed with using the Linux image delivered
  with the board in mind.

* The JTAG debug link requires a system clock frequency several times
  higher than the JTAG clock to function properly. To reduce the
  chance of any synchronization errors it is possible to lower the
  altera JTAG clock frequency by using the command:

	jtagconfig --setparam <cable number> JtagClock <clock freq>

  Avaiable options for clock freq are 6M, 16M and 24M where 24M is
  the default value. If you unplug the USB Blaster II cable the value
  will be reset to 24M.

---This might be irrelevant for the current design---
* Note that there is an issue with Quartus II 14.1 running on Ubuntu 14.04.
  It is a library issue that causes the automatic tcl scipts for pin
  assignments to fail. To bypass this issue, comment out the field QSF_NEXT
  in the Makefile and POST_MODULE_SCRIPT_FILE in qsf_append.qsf. Then run
  the implementation in the Quartus II gui by running "make quartus-launch".
  Run the "Analysis & Synthesis" step in Quartus, then run the pin assignment
  tcl scipts for the HPS and the DDR3 manually before running the full
  implementation.

Design details
--------------

3 LEDs (LED1-LED3) and 3 push-buttons (SW1-SW3) are connected to HPS
and exposed to the FPGA through IO Loaner interface.

LED assignments:
  LED3 (red)    - CPU in error mode
  LED2 (yellow) - DSU active
  LED1 (green)  - Main PLL LOCK

Push button assignments:
  SW3 - DSU break
  SW2 - Reset LEON system
  SW1 - unused

HPS-FPGA control signals:
	LEON starts in reset mode.
	HPS-LEON active low reset is controlled by HPS using H2F General Purpose Output signal GPO[0].
	It allows writing to the LEON memory from HPS side before releasing the reset.
	GPO control register address on HPS bus is 0xFF706010.
	To release the reset write value 0x1 to the control register.


Interrupts:
  7 - APB UART
  8 - Timer

-----------
Simulation
-----------
The standard GRLIB flow with "make vsim" and then "vsim testbench" can be used to
simulate the design. The simulation uses a simplified DDR3 controller.

-----------
Programming
-----------
To synthesize the design (requires Quartus II 16.1), first build the megafunctions
using "make qwiz", then use the "make quartus" command to synthesize. To synthesize
in the Quartus II gui use "make quartus-launch".

Use "make quartus-prog-fpga" to program the FPGA. Make sure that the JTAG CHAIN SW
on the board is set to "00", otherwise the programming will fail.

-----------
Debugging
-----------
Debugging can be done over the debug UART interface (JTAG currently does not work properly).

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


grmon2> load ~/dhry.exe; verify ~/dhry.exe; run
  40000000 .text                     56.8kB /  56.8kB   [===============>] 100%
  4000E330 .data                      2.7kB /   2.7kB   [===============>] 100%
  Total size: 59.50kB (2.75Mbit/s)
  Entry point 0x40000000
  Image ~/dhry.exe loaded
  40000000 .text                     56.8kB /  56.8kB   [===============>] 100%
  4000E330 .data                      2.7kB /   2.7kB   [===============>] 100%
  Total size: 59.50kB (107.74kbit/s)
  Entry point 0x40000000
  Image of ~/dhry.exe verified without errors
Execution starts, 400000 runs through Dhrystone
Microseconds for one run through Dhrystone:    6.4
Dhrystones per Second:                      156862.8

Dhrystones MIPS      :                        89.3


  Program exited normally.





