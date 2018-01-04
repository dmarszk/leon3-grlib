------------------------------------------------------------------------------
--  LEON3 Criticallink MityARM 5CSX design test bench
--  Copyright (C) 2017 Dominik Marszk, European Space Agency
------------------------------------------------------------------------------
--  This file is derived from the GRLIB VHDL IP LIBRARY
--  Copyright (C) 2003 - 2008, Gaisler Research
--  Copyright (C) 2008 - 2014, Aeroflex Gaisler
--  Copyright (C) 2015, Cobham Gaisler
--  Copyright (C) 2017, European Space Agency
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library gaisler;
use gaisler.libdcom.all;
use gaisler.sim.all;
library techmap;
use techmap.gencomp.all;
library micron;
use micron.components.all;
use work.debug.all;

use work.config.all;	-- configuration

entity testbench is
  generic (
    fabtech   : integer := CFG_FABTECH;
    memtech   : integer := CFG_MEMTECH;
    padtech   : integer := CFG_PADTECH;
    ncpu      : integer := CFG_NCPU;
    disas     : integer := CFG_DISAS;	-- Enable disassembly to console
    dbguart   : integer := CFG_DUART;	-- Print UART on console
    pclow     : integer := CFG_PCLOW;

    romdepth  : integer := 25          -- rom address depth
  );
end; 

architecture behav of testbench is

constant promfile  : string := "prom.srec";  -- rom contents
constant sramfile  : string := "ram.srec";  -- ram contents
constant sdramfile : string := "ram.srec"; -- sdram contents

component leon3mp is
  generic (
    fabtech : integer := CFG_FABTECH;
    memtech : integer := CFG_MEMTECH;
    padtech : integer := CFG_PADTECH;
    disas   : integer := CFG_DISAS;     -- Enable disassembly to console
    dbguart : integer := CFG_DUART;     -- Print UART on console
    pclow   : integer := CFG_PCLOW
    );
  port (

      -- HPS DDR
      HPS_DDR_A         : out   std_logic_vector(14 downto 0);
      HPS_DDR_BAS       : out   std_logic_vector(2 downto 0);
      HPS_DDR_CK_P      : out   std_logic;
      HPS_DDR_CK_N      : out   std_logic;
      HPS_DDR_CKE       : out   std_logic;
      HPS_DDR_CS0_N     : out   std_logic;
      HPS_DDR_RAS_N     : out   std_logic;
      HPS_DDR_CAS_N     : out   std_logic;
      HPS_DDR_WE_N      : out   std_logic;
      HPS_DDR_RESET_N   : out   std_logic;
      HPS_DDR_D         : inout std_logic_vector(39 downto 0);
      HPS_DDR_DQS_P     : inout std_logic_vector(4 downto 0);
      HPS_DDR_DQS_N     : inout std_logic_vector(4 downto 0);
      HPS_DDR_DQM       : out   std_logic_vector(4 downto 0);
      HPS_RZQ0          : in    std_logic;
      HPS_ODT           : out   std_logic;
      -- RGMII1
      RGMII1_TX_CLK     : out   std_logic;
      RGMII1_TXD0       : out   std_logic;
      RGMII1_TXD1       : out   std_logic;
      RGMII1_TXD2       : out   std_logic;
      RGMII1_TXD3       : out   std_logic;
      RGMII1_RXD0       : in    std_logic;
      RGMII1_MDIO       : inout std_logic;
      RGMII1_MDC        : out   std_logic;
      RGMII1_RX_CTL     : in    std_logic;
      RGMII1_TX_CTL     : out   std_logic;
      RGMII1_RX_CLK     : in    std_logic;
      RGMII1_RXD1       : in    std_logic;
      RGMII1_RXD2       : in    std_logic;
      RGMII1_RXD3       : in    std_logic;
      RGMII1_RESETn     : inout std_logic;
      -- QSPI
      QSPI_DQ0          : inout std_logic;
      QSPI_DQ1          : inout std_logic;
      QSPI_DQ2          : inout std_logic;
      QSPI_DQ3          : inout std_logic;
      QSPI_SS0          : out   std_logic;
      QSPI_SS1          : out   std_logic;
      QSPI_CLK          : out   std_logic;
      -- SDMMC
      SDMMC_CMD         : inout std_logic;
      SDMMC_D0          : inout std_logic;
      SDMMC_D1          : inout std_logic;
      SDMMC_CLK         : out   std_logic;
      SDMMC_D2          : inout std_logic;
      SDMMC_D3          : inout std_logic;
      -- USB1
      USB1_ULPI_D0      : inout std_logic;
      USB1_ULPI_D1      : inout std_logic;
      USB1_ULPI_D2      : inout std_logic;
      USB1_ULPI_D3      : inout std_logic;
      USB1_ULPI_D4      : inout std_logic;
      USB1_ULPI_D5      : inout std_logic;
      USB1_ULPI_D6      : inout std_logic;
      USB1_ULPI_D7      : inout std_logic;
      USB1_ULPI_CLK     : in    std_logic;
      USB1_ULPI_STP     : out   std_logic;
      USB1_ULPI_DIR     : in    std_logic;
      USB1_ULPI_NXT     : in    std_logic;
      USB1_ULPI_CS      : inout std_logic;
      USB1_ULPI_RESET_N : inout std_logic;
      -- UART0
      B7A_UART0_RX      : in    std_logic;
      B7A_UART0_TX      : out   std_logic;
      -- I2C0
      B7A_I2C0_SDA      : inout std_logic;
      B7A_I2C0_SCL      : inout std_logic;
      -- CAN0
      B7A_CAN0_RX       : in    std_logic;
      B7A_CAN0_TX       : out   std_logic;
      -- CAN1
      B7A_CAN1_RX       : inout    std_logic;
      B7A_CAN1_TX       : inout   std_logic;
      -- I2C1
      I2C1_SCL          : inout std_logic;
      I2C1_SDA          : inout std_logic;
      -- LEDs
      LED1              : inout std_logic;
      LED2              : inout std_logic;
      LED3              : inout std_logic;
      -- Switches
      SW1               : inout std_logic;
      SW2               : inout std_logic;
      SW3               : inout std_logic;

      -- HSMC1
      HSMC1_SMSDA       : out std_logic;
      HSMC1_SMSCL       : out std_logic;
      HSMC1_CLKOUT0     : out std_logic;
      HSMC1_CLKOUT1     : out std_logic;
      HSMC1_CLKOUT2     : out std_logic;
      HSMC1_CLKIN0      : out std_logic;
      HSMC1_CLKIN1      : out std_logic;
      HSMC1_CLKIN2      : out std_logic;
      HSMC1_CLKOUT1_N   : out std_logic;
      HSMC1_CLKOUT2_N   : out std_logic;
      HSMC1_CLKIN1_N    : out std_logic;
      HSMC1_CLKIN2_N    : out std_logic;
      HSMC1_PRSNTn      : out std_logic;
      HSMC1_D0          : out std_logic;
      HSMC1_D1          : out std_logic;
      HSMC1_D2          : out std_logic;
      HSMC1_D3          : out std_logic;
      HSMC1_TX0         : inout std_logic;
      HSMC1_TX1         : inout std_logic;
      HSMC1_TX2         : inout std_logic;
      HSMC1_TX3         : inout std_logic;
      HSMC1_TX4         : out std_logic;
      HSMC1_TX5         : out std_logic;
      HSMC1_TX6         : out std_logic;
      HSMC1_TX7         : out std_logic;
      HSMC1_TX8         : out std_logic;
      HSMC1_TX9         : out std_logic;
      HSMC1_TX10        : out std_logic;
      HSMC1_TX11        : out std_logic;
      HSMC1_TX12        : out std_logic;
      HSMC1_TX13        : out std_logic;
      HSMC1_TX14        : out std_logic;
      HSMC1_TX15        : out std_logic;
      HSMC1_TX16        : out std_logic;
      HSMC1_TX0_N       : inout std_logic;
      HSMC1_TX1_N       : inout std_logic;
      HSMC1_TX2_N       : inout std_logic;
      HSMC1_TX3_N       : inout std_logic;
      HSMC1_TX4_N       : out std_logic;
      HSMC1_TX5_N       : out std_logic;
      HSMC1_TX6_N       : out std_logic;
      HSMC1_TX7_N       : out std_logic;
      HSMC1_TX8_N       : out std_logic;
      HSMC1_TX9_N       : out std_logic;
      HSMC1_TX10_N      : out std_logic;
      HSMC1_TX11_N      : out std_logic;
      HSMC1_TX12_N      : out std_logic;
      HSMC1_TX13_N      : out std_logic;
      HSMC1_TX14_N      : in std_logic;
      HSMC1_TX15_N      : out std_logic;
      HSMC1_TX16_N      : out std_logic;
      HSMC1_RX0         : out std_logic;
      HSMC1_RX1         : out std_logic;
      HSMC1_RX2         : out std_logic;
      HSMC1_RX3         : out std_logic;
      HSMC1_RX4         : out std_logic;
      HSMC1_RX5         : out std_logic;
      HSMC1_RX6         : out std_logic;
      HSMC1_RX7         : out std_logic;
      HSMC1_RX8         : out std_logic;
      HSMC1_RX9         : out std_logic;
      HSMC1_RX10        : in std_logic;
      HSMC1_RX11        : out std_logic;
      HSMC1_RX12        : out std_logic;
      HSMC1_RX13        : out std_logic;
      HSMC1_RX14        : out std_logic;
      HSMC1_RX15        : out std_logic;
      HSMC1_RX16        : out std_logic;
      HSMC1_RX0_N       : out std_logic;
      HSMC1_RX1_N       : out std_logic;
      HSMC1_RX2_N       : out std_logic;
      HSMC1_RX3_N       : out std_logic;
      HSMC1_RX4_N       : out std_logic;
      HSMC1_RX5_N       : out std_logic;
      HSMC1_RX6_N       : out std_logic;
      HSMC1_RX7_N       : in std_logic;
      HSMC1_RX8_N       : out std_logic;
      HSMC1_RX9_N       : out std_logic;
      HSMC1_RX10_N      : out std_logic;
      HSMC1_RX11_N      : out std_logic;
      HSMC1_RX12_N      : out std_logic;
      HSMC1_RX13_N      : out std_logic;
      HSMC1_RX14_N      : out std_logic;
      HSMC1_RX15_N      : out std_logic;
      HSMC1_RX16_N      : out std_logic;
      HSMC2_SMSDA       : out std_logic;
      HSMC2_D1_P        : out std_logic;
      HSMC2_D1_N        : out std_logic;
      HSMC2_TX0_P       : out std_logic;
      HSMC2_TX0_N       : out std_logic;
      HSMC2_TX1         : out std_logic;
      HSMC2_SMSCL       : out std_logic;
      HSMC2_D2_P        : out std_logic;
      HSMC2_D2_N        : out std_logic;
      HSMC2_RX0_P       : out std_logic;
      HSMC2_RX0_N       : out std_logic;
      HSMC2_RX1_P       : out std_logic;
      HSMC2_RX1_N       : out std_logic;
      HSMC2_PRSNTN      : out std_logic;
      -- FPGA DDR
      FPGA_DDR_A        : out   std_logic_vector(14 downto 0);
      FPGA_DDR_BAS      : out   std_logic_vector(2 downto 0);
      FPGA_DDR_CK_P     : out   std_logic_vector(0 downto 0);
      FPGA_DDR_CK_N     : out   std_logic_vector(0 downto 0);
      FPGA_DDR_CKE      : out   std_logic_vector(0 downto 0);
      FPGA_DDR_DQM0     : out   std_logic_vector(0 downto 0);
      FPGA_DDR_RAS_N    : out   std_logic_vector(0 downto 0);
      FPGA_DDR_CAS_N    : out   std_logic_vector(0 downto 0);
      FPGA_DDR_WE_N     : out   std_logic_vector(0 downto 0);
      FPGA_DDR_RESET_N  : out   std_logic;
      FPGA_DDR_D        : inout std_logic_vector(7 downto 0);
      FPGA_DDR_DQS0_P   : inout std_logic_vector(0 downto 0);
      FPGA_DDR_DQS0_N   : inout std_logic_vector(0 downto 0);
      FPGA_DDR_CS_N     : out   std_logic_vector(0 downto 0);
      RZQ_2             : in    std_logic;
      CLK2DDR           : in    std_logic
    );
end component;

  signal clk100 : std_ulogic := '0';
  signal sw : std_logic_vector(3 downto 1) := "111";
  signal led : std_logic_vector(3 downto 1);

  signal address  : std_logic_vector(26 downto 1);
  signal data     : std_logic_vector(15 downto 0);

  signal ramsn    : std_ulogic;
  signal ramoen   : std_ulogic;
  signal rwen     : std_ulogic;
  signal mben     : std_logic_vector(3 downto 0);
  --signal rwenx    : std_logic_vector(3 downto 0);
  signal romsn    : std_logic;
  signal iosn     : std_ulogic;
  signal oen      : std_ulogic;
  --signal read     : std_ulogic;
  signal writen   : std_ulogic;
  signal brdyn    : std_ulogic;
  signal bexcn    : std_ulogic;
  signal wdog     : std_ulogic;
  signal dsuen, dsutx, dsurx, dsubren, dsuact : std_ulogic;
  signal dsurst   : std_ulogic;
  signal test     : std_ulogic;
  signal error    : std_logic;
  signal GND      : std_ulogic := '0';
  signal VCC      : std_ulogic := '1';
  signal NC       : std_ulogic := 'Z';
  signal clk2     : std_ulogic := '1';
      
  signal plllock    : std_ulogic;       
  signal txd1, rxd1 : std_ulogic;


  SIGNAL B7A_CAN0_RX : STD_LOGIC;
  SIGNAL B7A_CAN0_TX : STD_LOGIC;
  SIGNAL B7A_CAN1_RX : STD_LOGIC;
  SIGNAL B7A_CAN1_TX : STD_LOGIC;
  SIGNAL B7A_I2C0_SCL : STD_LOGIC;
  SIGNAL B7A_I2C0_SDA : STD_LOGIC;
  SIGNAL B7A_UART0_RX : STD_LOGIC;
  SIGNAL B7A_UART0_TX : STD_LOGIC;
  SIGNAL CLK2DDR : STD_LOGIC;
  SIGNAL FPGA_DDR_A : STD_LOGIC_VECTOR(14 DOWNTO 0);
  SIGNAL FPGA_DDR_BAS : STD_LOGIC_VECTOR(2 DOWNTO 0);
  SIGNAL FPGA_DDR_CAS_N : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_CK_N : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_CK_P : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_CKE : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_CS_N : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_D : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL FPGA_DDR_DQM0 : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_DQS0_N : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_DQS0_P : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_RAS_N : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL FPGA_DDR_RESET_N : STD_LOGIC;
  SIGNAL FPGA_DDR_WE_N : STD_LOGIC_VECTOR(0 DOWNTO 0);
  SIGNAL HPS_DDR_A : STD_LOGIC_VECTOR(14 DOWNTO 0);
  SIGNAL HPS_DDR_BAS : STD_LOGIC_VECTOR(2 DOWNTO 0);
  SIGNAL HPS_DDR_CAS_N : STD_LOGIC;
  SIGNAL HPS_DDR_CK_N : STD_LOGIC;
  SIGNAL HPS_DDR_CK_P : STD_LOGIC;
  SIGNAL HPS_DDR_CKE : STD_LOGIC;
  SIGNAL HPS_DDR_CS0_N : STD_LOGIC;
  SIGNAL HPS_DDR_D : STD_LOGIC_VECTOR(39 DOWNTO 0);
  SIGNAL HPS_DDR_DQM : STD_LOGIC_VECTOR(4 DOWNTO 0);
  SIGNAL HPS_DDR_DQS_N : STD_LOGIC_VECTOR(4 DOWNTO 0);
  SIGNAL HPS_DDR_DQS_P : STD_LOGIC_VECTOR(4 DOWNTO 0);
  SIGNAL HPS_DDR_RAS_N : STD_LOGIC;
  SIGNAL HPS_DDR_RESET_N : STD_LOGIC;
  SIGNAL HPS_DDR_WE_N : STD_LOGIC;
  SIGNAL HPS_ODT : STD_LOGIC;
  SIGNAL HPS_RZQ0 : STD_LOGIC;
  SIGNAL HSMC1_CLKIN0 : STD_LOGIC;
  SIGNAL HSMC1_CLKIN1 : STD_LOGIC;
  SIGNAL HSMC1_CLKIN1_N : STD_LOGIC;
  SIGNAL HSMC1_CLKIN2 : STD_LOGIC;
  SIGNAL HSMC1_CLKIN2_N : STD_LOGIC;
  SIGNAL HSMC1_CLKOUT0 : STD_LOGIC;
  SIGNAL HSMC1_CLKOUT1 : STD_LOGIC;
  SIGNAL HSMC1_CLKOUT1_N : STD_LOGIC;
  SIGNAL HSMC1_CLKOUT2 : STD_LOGIC;
  SIGNAL HSMC1_CLKOUT2_N : STD_LOGIC;
  SIGNAL HSMC1_D0 : STD_LOGIC;
  SIGNAL HSMC1_D1 : STD_LOGIC;
  SIGNAL HSMC1_D2 : STD_LOGIC;
  SIGNAL HSMC1_D3 : STD_LOGIC;
  SIGNAL HSMC1_PRSNTn : STD_LOGIC;
  SIGNAL HSMC1_RX0 : STD_LOGIC;
  SIGNAL HSMC1_RX0_N : STD_LOGIC;
  SIGNAL HSMC1_RX1 : STD_LOGIC;
  SIGNAL HSMC1_RX1_N : STD_LOGIC;
  SIGNAL HSMC1_RX2 : STD_LOGIC;
  SIGNAL HSMC1_RX2_N : STD_LOGIC;
  SIGNAL HSMC1_RX3 : STD_LOGIC;
  SIGNAL HSMC1_RX3_N : STD_LOGIC;
  SIGNAL HSMC1_RX4 : STD_LOGIC;
  SIGNAL HSMC1_RX4_N : STD_LOGIC;
  SIGNAL HSMC1_RX5 : STD_LOGIC;
  SIGNAL HSMC1_RX5_N : STD_LOGIC;
  SIGNAL HSMC1_RX6 : STD_LOGIC;
  SIGNAL HSMC1_RX6_N : STD_LOGIC;
  SIGNAL HSMC1_RX7 : STD_LOGIC;
  SIGNAL HSMC1_RX7_N : STD_LOGIC;
  SIGNAL HSMC1_RX8 : STD_LOGIC;
  SIGNAL HSMC1_RX8_N : STD_LOGIC;
  SIGNAL HSMC1_RX9 : STD_LOGIC;
  SIGNAL HSMC1_RX9_N : STD_LOGIC;
  SIGNAL HSMC1_RX10 : STD_LOGIC;
  SIGNAL HSMC1_RX10_N : STD_LOGIC;
  SIGNAL HSMC1_RX11 : STD_LOGIC;
  SIGNAL HSMC1_RX11_N : STD_LOGIC;
  SIGNAL HSMC1_RX12 : STD_LOGIC;
  SIGNAL HSMC1_RX12_N : STD_LOGIC;
  SIGNAL HSMC1_RX13 : STD_LOGIC;
  SIGNAL HSMC1_RX13_N : STD_LOGIC;
  SIGNAL HSMC1_RX14 : STD_LOGIC;
  SIGNAL HSMC1_RX14_N : STD_LOGIC;
  SIGNAL HSMC1_RX15 : STD_LOGIC;
  SIGNAL HSMC1_RX15_N : STD_LOGIC;
  SIGNAL HSMC1_RX16 : STD_LOGIC;
  SIGNAL HSMC1_RX16_N : STD_LOGIC;
  SIGNAL HSMC1_SMSCL : STD_LOGIC;
  SIGNAL HSMC1_SMSDA : STD_LOGIC;
  SIGNAL HSMC1_TX0 : STD_LOGIC;
  SIGNAL HSMC1_TX0_N : STD_LOGIC;
  SIGNAL HSMC1_TX1 : STD_LOGIC;
  SIGNAL HSMC1_TX1_N : STD_LOGIC;
  SIGNAL HSMC1_TX2 : STD_LOGIC;
  SIGNAL HSMC1_TX2_N : STD_LOGIC;
  SIGNAL HSMC1_TX3 : STD_LOGIC;
  SIGNAL HSMC1_TX3_N : STD_LOGIC;
  SIGNAL HSMC1_TX4 : STD_LOGIC;
  SIGNAL HSMC1_TX4_N : STD_LOGIC;
  SIGNAL HSMC1_TX5 : STD_LOGIC;
  SIGNAL HSMC1_TX5_N : STD_LOGIC;
  SIGNAL HSMC1_TX6 : STD_LOGIC;
  SIGNAL HSMC1_TX6_N : STD_LOGIC;
  SIGNAL HSMC1_TX7 : STD_LOGIC;
  SIGNAL HSMC1_TX7_N : STD_LOGIC;
  SIGNAL HSMC1_TX8 : STD_LOGIC;
  SIGNAL HSMC1_TX8_N : STD_LOGIC;
  SIGNAL HSMC1_TX9 : STD_LOGIC;
  SIGNAL HSMC1_TX9_N : STD_LOGIC;
  SIGNAL HSMC1_TX10 : STD_LOGIC;
  SIGNAL HSMC1_TX10_N : STD_LOGIC;
  SIGNAL HSMC1_TX11 : STD_LOGIC;
  SIGNAL HSMC1_TX11_N : STD_LOGIC;
  SIGNAL HSMC1_TX12 : STD_LOGIC;
  SIGNAL HSMC1_TX12_N : STD_LOGIC;
  SIGNAL HSMC1_TX13 : STD_LOGIC;
  SIGNAL HSMC1_TX13_N : STD_LOGIC;
  SIGNAL HSMC1_TX14 : STD_LOGIC;
  SIGNAL HSMC1_TX14_N : STD_LOGIC;
  SIGNAL HSMC1_TX15 : STD_LOGIC;
  SIGNAL HSMC1_TX15_N : STD_LOGIC;
  SIGNAL HSMC1_TX16 : STD_LOGIC;
  SIGNAL HSMC1_TX16_N : STD_LOGIC;
  SIGNAL HSMC2_D1_N : STD_LOGIC;
  SIGNAL HSMC2_D1_P : STD_LOGIC;
  SIGNAL HSMC2_D2_N : STD_LOGIC;
  SIGNAL HSMC2_D2_P : STD_LOGIC;
  SIGNAL HSMC2_PRSNTN : STD_LOGIC;
  SIGNAL HSMC2_RX0_N : STD_LOGIC;
  SIGNAL HSMC2_RX0_P : STD_LOGIC;
  SIGNAL HSMC2_RX1_N : STD_LOGIC;
  SIGNAL HSMC2_RX1_P : STD_LOGIC;
  SIGNAL HSMC2_SMSCL : STD_LOGIC;
  SIGNAL HSMC2_SMSDA : STD_LOGIC;
  SIGNAL HSMC2_TX0_N : STD_LOGIC;
  SIGNAL HSMC2_TX0_P : STD_LOGIC;
  SIGNAL HSMC2_TX1 : STD_LOGIC;
  SIGNAL I2C1_SCL : STD_LOGIC;
  SIGNAL I2C1_SDA : STD_LOGIC;
  SIGNAL LED1 : STD_LOGIC;
  SIGNAL LED2 : STD_LOGIC;
  SIGNAL LED3 : STD_LOGIC;
  SIGNAL QSPI_CLK : STD_LOGIC;
  SIGNAL QSPI_DQ0 : STD_LOGIC;
  SIGNAL QSPI_DQ1 : STD_LOGIC;
  SIGNAL QSPI_DQ2 : STD_LOGIC;
  SIGNAL QSPI_DQ3 : STD_LOGIC;
  SIGNAL QSPI_SS0 : STD_LOGIC;
  SIGNAL QSPI_SS1 : STD_LOGIC;
  SIGNAL RGMII1_MDC : STD_LOGIC;
  SIGNAL RGMII1_MDIO : STD_LOGIC;
  SIGNAL RGMII1_RESETn : STD_LOGIC;
  SIGNAL RGMII1_RX_CLK : STD_LOGIC;
  SIGNAL RGMII1_RX_CTL : STD_LOGIC;
  SIGNAL RGMII1_RXD0 : STD_LOGIC;
  SIGNAL RGMII1_RXD1 : STD_LOGIC;
  SIGNAL RGMII1_RXD2 : STD_LOGIC;
  SIGNAL RGMII1_RXD3 : STD_LOGIC;
  SIGNAL RGMII1_TX_CLK : STD_LOGIC;
  SIGNAL RGMII1_TX_CTL : STD_LOGIC;
  SIGNAL RGMII1_TXD0 : STD_LOGIC;
  SIGNAL RGMII1_TXD1 : STD_LOGIC;
  SIGNAL RGMII1_TXD2 : STD_LOGIC;
  SIGNAL RGMII1_TXD3 : STD_LOGIC;
  SIGNAL RZQ_2 : STD_LOGIC;
  SIGNAL SDMMC_CLK : STD_LOGIC;
  SIGNAL SDMMC_CMD : STD_LOGIC;
  SIGNAL SDMMC_D0 : STD_LOGIC;
  SIGNAL SDMMC_D1 : STD_LOGIC;
  SIGNAL SDMMC_D2 : STD_LOGIC;
  SIGNAL SDMMC_D3 : STD_LOGIC;
  SIGNAL SW1 : STD_LOGIC;
  SIGNAL SW2 : STD_LOGIC;
  SIGNAL SW3 : STD_LOGIC;
  SIGNAL USB1_ULPI_CLK : STD_LOGIC;
  SIGNAL USB1_ULPI_CS : STD_LOGIC;
  SIGNAL USB1_ULPI_D0 : STD_LOGIC;
  SIGNAL USB1_ULPI_D1 : STD_LOGIC;
  SIGNAL USB1_ULPI_D2 : STD_LOGIC;
  SIGNAL USB1_ULPI_D3 : STD_LOGIC;
  SIGNAL USB1_ULPI_D4 : STD_LOGIC;
  SIGNAL USB1_ULPI_D5 : STD_LOGIC;
  SIGNAL USB1_ULPI_D6 : STD_LOGIC;
  SIGNAL USB1_ULPI_D7 : STD_LOGIC;
  SIGNAL USB1_ULPI_DIR : STD_LOGIC;
  SIGNAL USB1_ULPI_NXT : STD_LOGIC;
  SIGNAL USB1_ULPI_RESET_N : STD_LOGIC;
  SIGNAL USB1_ULPI_STP : STD_LOGIC;

  signal rst: std_ulogic;

  constant lresp : boolean := false;

begin

  SW1 <= sw(1);
  SW2 <= sw(2);
  SW3 <= sw(3);
  led(1) <= LED1;
  led(2) <= LED2;
  led(3) <= LED3;
  
  -- clock and reset

  -- 100 MHz clock
  clk100 <= not clk100 after 5 ns;
  CLK2DDR <= clk100;
  
  sw(1) <= '1';
  sw(2) <= rst;
  sw(3) <= '1';
  rst <= dsurst;
  dsubren <= '1'; rxd1 <= '1';

  d3 : leon3mp
    generic map ( fabtech, memtech, padtech, disas, dbguart, pclow )
    port map (
      B7A_CAN0_RX => B7A_CAN0_RX,
      B7A_CAN0_TX => B7A_CAN0_TX,
      B7A_CAN1_RX => B7A_CAN1_RX,
      B7A_CAN1_TX => B7A_CAN1_TX,
      B7A_I2C0_SCL => B7A_I2C0_SCL,
      B7A_I2C0_SDA => B7A_I2C0_SDA,
      B7A_UART0_RX => B7A_UART0_RX,
      B7A_UART0_TX => B7A_UART0_TX,
      CLK2DDR => CLK2DDR,
      FPGA_DDR_A => FPGA_DDR_A,
      FPGA_DDR_BAS => FPGA_DDR_BAS,
      FPGA_DDR_CAS_N => FPGA_DDR_CAS_N,
      FPGA_DDR_CK_N => FPGA_DDR_CK_N,
      FPGA_DDR_CK_P => FPGA_DDR_CK_P,
      FPGA_DDR_CKE => FPGA_DDR_CKE,
      FPGA_DDR_CS_N => FPGA_DDR_CS_N,
      FPGA_DDR_D => FPGA_DDR_D,
      FPGA_DDR_DQM0 => FPGA_DDR_DQM0,
      FPGA_DDR_DQS0_N => FPGA_DDR_DQS0_N,
      FPGA_DDR_DQS0_P => FPGA_DDR_DQS0_P,
      FPGA_DDR_RAS_N => FPGA_DDR_RAS_N,
      FPGA_DDR_RESET_N => FPGA_DDR_RESET_N,
      FPGA_DDR_WE_N => FPGA_DDR_WE_N,
      HPS_DDR_A => HPS_DDR_A,
      HPS_DDR_BAS => HPS_DDR_BAS,
      HPS_DDR_CAS_N => HPS_DDR_CAS_N,
      HPS_DDR_CK_N => HPS_DDR_CK_N,
      HPS_DDR_CK_P => HPS_DDR_CK_P,
      HPS_DDR_CKE => HPS_DDR_CKE,
      HPS_DDR_CS0_N => HPS_DDR_CS0_N,
      HPS_DDR_D => HPS_DDR_D,
      HPS_DDR_DQM => HPS_DDR_DQM,
      HPS_DDR_DQS_N => HPS_DDR_DQS_N,
      HPS_DDR_DQS_P => HPS_DDR_DQS_P,
      HPS_DDR_RAS_N => HPS_DDR_RAS_N,
      HPS_DDR_RESET_N => HPS_DDR_RESET_N,
      HPS_DDR_WE_N => HPS_DDR_WE_N,
      HPS_ODT => HPS_ODT,
      HPS_RZQ0 => HPS_RZQ0,
      HSMC1_CLKIN0 => HSMC1_CLKIN0,
      HSMC1_CLKIN1 => HSMC1_CLKIN1,
      HSMC1_CLKIN1_N => HSMC1_CLKIN1_N,
      HSMC1_CLKIN2 => HSMC1_CLKIN2,
      HSMC1_CLKIN2_N => HSMC1_CLKIN2_N,
      HSMC1_CLKOUT0 => HSMC1_CLKOUT0,
      HSMC1_CLKOUT1 => HSMC1_CLKOUT1,
      HSMC1_CLKOUT1_N => HSMC1_CLKOUT1_N,
      HSMC1_CLKOUT2 => HSMC1_CLKOUT2,
      HSMC1_CLKOUT2_N => HSMC1_CLKOUT2_N,
      HSMC1_D0 => HSMC1_D0,
      HSMC1_D1 => HSMC1_D1,
      HSMC1_D2 => HSMC1_D2,
      HSMC1_D3 => HSMC1_D3,
      HSMC1_PRSNTn => HSMC1_PRSNTn,
      HSMC1_RX0 => HSMC1_RX0,
      HSMC1_RX0_N => HSMC1_RX0_N,
      HSMC1_RX1 => HSMC1_RX1,
      HSMC1_RX1_N => HSMC1_RX1_N,
      HSMC1_RX2 => HSMC1_RX2,
      HSMC1_RX2_N => HSMC1_RX2_N,
      HSMC1_RX3 => HSMC1_RX3,
      HSMC1_RX3_N => HSMC1_RX3_N,
      HSMC1_RX4 => HSMC1_RX4,
      HSMC1_RX4_N => HSMC1_RX4_N,
      HSMC1_RX5 => HSMC1_RX5,
      HSMC1_RX5_N => HSMC1_RX5_N,
      HSMC1_RX6 => HSMC1_RX6,
      HSMC1_RX6_N => HSMC1_RX6_N,
      HSMC1_RX7 => HSMC1_RX7,
      HSMC1_RX7_N => HSMC1_RX7_N,
      HSMC1_RX8 => HSMC1_RX8,
      HSMC1_RX8_N => HSMC1_RX8_N,
      HSMC1_RX9 => HSMC1_RX9,
      HSMC1_RX9_N => HSMC1_RX9_N,
      HSMC1_RX10 => HSMC1_RX10,
      HSMC1_RX10_N => HSMC1_RX10_N,
      HSMC1_RX11 => HSMC1_RX11,
      HSMC1_RX11_N => HSMC1_RX11_N,
      HSMC1_RX12 => HSMC1_RX12,
      HSMC1_RX12_N => HSMC1_RX12_N,
      HSMC1_RX13 => HSMC1_RX13,
      HSMC1_RX13_N => HSMC1_RX13_N,
      HSMC1_RX14 => HSMC1_RX14,
      HSMC1_RX14_N => HSMC1_RX14_N,
      HSMC1_RX15 => HSMC1_RX15,
      HSMC1_RX15_N => HSMC1_RX15_N,
      HSMC1_RX16 => HSMC1_RX16,
      HSMC1_RX16_N => HSMC1_RX16_N,
      HSMC1_SMSCL => HSMC1_SMSCL,
      HSMC1_SMSDA => HSMC1_SMSDA,
      HSMC1_TX0 => HSMC1_TX0,
      HSMC1_TX0_N => HSMC1_TX0_N,
      HSMC1_TX1 => HSMC1_TX1,
      HSMC1_TX1_N => HSMC1_TX1_N,
      HSMC1_TX2 => HSMC1_TX2,
      HSMC1_TX2_N => HSMC1_TX2_N,
      HSMC1_TX3 => HSMC1_TX3,
      HSMC1_TX3_N => HSMC1_TX3_N,
      HSMC1_TX4 => HSMC1_TX4,
      HSMC1_TX4_N => HSMC1_TX4_N,
      HSMC1_TX5 => HSMC1_TX5,
      HSMC1_TX5_N => HSMC1_TX5_N,
      HSMC1_TX6 => HSMC1_TX6,
      HSMC1_TX6_N => HSMC1_TX6_N,
      HSMC1_TX7 => HSMC1_TX7,
      HSMC1_TX7_N => HSMC1_TX7_N,
      HSMC1_TX8 => HSMC1_TX8,
      HSMC1_TX8_N => HSMC1_TX8_N,
      HSMC1_TX9 => HSMC1_TX9,
      HSMC1_TX9_N => HSMC1_TX9_N,
      HSMC1_TX10 => HSMC1_TX10,
      HSMC1_TX10_N => HSMC1_TX10_N,
      HSMC1_TX11 => HSMC1_TX11,
      HSMC1_TX11_N => HSMC1_TX11_N,
      HSMC1_TX12 => HSMC1_TX12,
      HSMC1_TX12_N => HSMC1_TX12_N,
      HSMC1_TX13 => HSMC1_TX13,
      HSMC1_TX13_N => HSMC1_TX13_N,
      HSMC1_TX14 => HSMC1_TX14,
      HSMC1_TX14_N => HSMC1_TX14_N,
      HSMC1_TX15 => HSMC1_TX15,
      HSMC1_TX15_N => HSMC1_TX15_N,
      HSMC1_TX16 => HSMC1_TX16,
      HSMC1_TX16_N => HSMC1_TX16_N,
      HSMC2_D1_N => HSMC2_D1_N,
      HSMC2_D1_P => HSMC2_D1_P,
      HSMC2_D2_N => HSMC2_D2_N,
      HSMC2_D2_P => HSMC2_D2_P,
      HSMC2_PRSNTN => HSMC2_PRSNTN,
      HSMC2_RX0_N => HSMC2_RX0_N,
      HSMC2_RX0_P => HSMC2_RX0_P,
      HSMC2_RX1_N => HSMC2_RX1_N,
      HSMC2_RX1_P => HSMC2_RX1_P,
      HSMC2_SMSCL => HSMC2_SMSCL,
      HSMC2_SMSDA => HSMC2_SMSDA,
      HSMC2_TX0_N => HSMC2_TX0_N,
      HSMC2_TX0_P => HSMC2_TX0_P,
      HSMC2_TX1 => HSMC2_TX1,
      I2C1_SCL => I2C1_SCL,
      I2C1_SDA => I2C1_SDA,
      LED1 => LED1,
      LED2 => LED2,
      LED3 => LED3,
      QSPI_CLK => QSPI_CLK,
      QSPI_DQ0 => QSPI_DQ0,
      QSPI_DQ1 => QSPI_DQ1,
      QSPI_DQ2 => QSPI_DQ2,
      QSPI_DQ3 => QSPI_DQ3,
      QSPI_SS0 => QSPI_SS0,
      QSPI_SS1 => QSPI_SS1,
      RGMII1_MDC => RGMII1_MDC,
      RGMII1_MDIO => RGMII1_MDIO,
      RGMII1_RESETn => RGMII1_RESETn,
      RGMII1_RX_CLK => RGMII1_RX_CLK,
      RGMII1_RX_CTL => RGMII1_RX_CTL,
      RGMII1_RXD0 => RGMII1_RXD0,
      RGMII1_RXD1 => RGMII1_RXD1,
      RGMII1_RXD2 => RGMII1_RXD2,
      RGMII1_RXD3 => RGMII1_RXD3,
      RGMII1_TX_CLK => RGMII1_TX_CLK,
      RGMII1_TX_CTL => RGMII1_TX_CTL,
      RGMII1_TXD0 => RGMII1_TXD0,
      RGMII1_TXD1 => RGMII1_TXD1,
      RGMII1_TXD2 => RGMII1_TXD2,
      RGMII1_TXD3 => RGMII1_TXD3,
      RZQ_2 => RZQ_2,
      SDMMC_CLK => SDMMC_CLK,
      SDMMC_CMD => SDMMC_CMD,
      SDMMC_D0 => SDMMC_D0,
      SDMMC_D1 => SDMMC_D1,
      SDMMC_D2 => SDMMC_D2,
      SDMMC_D3 => SDMMC_D3,
      SW1 => SW1,
      SW2 => SW2,
      SW3 => SW3,
      USB1_ULPI_CLK => USB1_ULPI_CLK,
      USB1_ULPI_CS => USB1_ULPI_CS,
      USB1_ULPI_D0 => USB1_ULPI_D0,
      USB1_ULPI_D1 => USB1_ULPI_D1,
      USB1_ULPI_D2 => USB1_ULPI_D2,
      USB1_ULPI_D3 => USB1_ULPI_D3,
      USB1_ULPI_D4 => USB1_ULPI_D4,
      USB1_ULPI_D5 => USB1_ULPI_D5,
      USB1_ULPI_D6 => USB1_ULPI_D6,
      USB1_ULPI_D7 => USB1_ULPI_D7,
      USB1_ULPI_DIR => USB1_ULPI_DIR,
      USB1_ULPI_NXT => USB1_ULPI_NXT,
      USB1_ULPI_RESET_N => USB1_ULPI_RESET_N,
      USB1_ULPI_STP => USB1_ULPI_STP
    );

  -- 16 bit prom
  prom0 : sram16 generic map (index => 4, abits => romdepth, fname => promfile)
	port map (address(romdepth downto 1), data, 
		  romsn, romsn, romsn, rwen, oen);

  data <= buskeep(data), (others => 'H') after 250 ns;

  error <= led(3);

   iuerr : process
   begin
     wait for 2500 ns;
     if to_x01(error) = '1' then wait on error; end if;
     assert (to_x01(error) = '1') 
       report "*** IU in error mode, simulation halted ***"
         severity failure ;
   end process;

  test0 :  grtestmod generic map (width => 16)
    port map ( rst, CLK2DDR, error, address(21 downto 2), data,
    	       iosn, oen, writen, brdyn);

  dsucom : process
    procedure dsucfg(signal dsurx : in std_ulogic; signal dsutx : out std_ulogic) is
    variable w32 : std_logic_vector(31 downto 0);
    variable c8  : std_logic_vector(7 downto 0);
    constant txp : time := 160 * 1 ns;
    begin
    dsutx <= '1';
    dsurst <= '0';
    wait for 500 ns;
    dsurst <= '1';
    wait;
    wait for 5000 ns;
    txc(dsutx, 16#55#, txp);		-- sync uart

--    txc(dsutx, 16#c0#, txp);
--    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#00#, txp);
--    txa(dsutx, 16#00#, 16#00#, 16#02#, 16#ae#, txp);
--    txc(dsutx, 16#c0#, txp);
--    txa(dsutx, 16#91#, 16#00#, 16#00#, 16#00#, txp);
--    txa(dsutx, 16#00#, 16#00#, 16#06#, 16#ae#, txp);
--    txc(dsutx, 16#c0#, txp);
--    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#24#, txp);
--    txa(dsutx, 16#00#, 16#00#, 16#06#, 16#03#, txp);
--    txc(dsutx, 16#c0#, txp);
--    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#20#, txp);
--    txa(dsutx, 16#00#, 16#00#, 16#06#, 16#fc#, txp);

    -- -- W 0x0000002F @ DSU CPU0 CTRL
    -- -- BZ, BS, BW, BE, TE
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#00#, 16#00#, 16#00#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#2f#, txp);
    
    -- -- W 0x0000006F @ DSU CPU1 CTRL
    -- -- DM(???), BZ, BS, BW, BE, TE
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#91#, 16#00#, 16#00#, 16#00#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#6f#, txp);
    
    -- -- W 0x00000000 @ DSU CPU0 IT CTRL0
    -- -- No filter, ptr 0
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#11#, 16#00#, 16#00#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#00#, txp);
    
    
    -- -- W 0x00022001 @ DSU CPU0 PSR
    -- -- Some SPARCv8 flags
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#40#, 16#00#, 16#04#, txp);
    -- txa(dsutx, 16#00#, 16#02#, 16#20#, 16#01#, txp);
    
    
    -- -- W 0x00000002 @ DSU Break and Single Step reg
    -- -- Force CPU1 into debug mode and break
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#00#, 16#00#, 16#20#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#02#, txp);

    -- -- W 0x0000000F @ DSU Break and Single Step reg
    -- -- Force CPU0-CPU3 into debug mode and break
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#00#, 16#00#, 16#20#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#0f#, txp);

    -- -- W 0x0000000F @ RAM @ 0x4310
    -- -- Force CPU0-CPU3 into debug mode and break
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#40#, 16#00#, 16#43#, 16#10#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#0f#, txp);

    
    -- -- W 0x00000024 @ DSU CPU1 ASI
    -- -- Set Address Space Identifier to 0x24 (??????)
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#91#, 16#40#, 16#00#, 16#24#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#24#, txp);
    
    
    -- -- W 0x00000003 @ DSU CPU1 ASI-mapped area offset 0x0
    -- -- ??????
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#91#, 16#70#, 16#00#, 16#00#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#03#, txp);





    -- -- W 0x0000FFFF @ DSU Break and Single Step reg
    -- -- Force CPU0-CPU15 into debug mode and break
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#00#, 16#00#, 16#20#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#ff#, 16#ff#, txp);

    
    -- -- W 0x00000012 @ DSU CPU0 ASR18
    -- -- 32 LSBs of MAC operation
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#40#, 16#00#, 16#48#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#00#, 16#12#, txp);

    -- -- W 0x00001210 @ DSU CPU0 ASR24
    -- -- Disabled HW breakpoint @ 0x1210
    -- txc(dsutx, 16#c0#, txp);
    -- txa(dsutx, 16#90#, 16#40#, 16#00#, 16#60#, txp);
    -- txa(dsutx, 16#00#, 16#00#, 16#12#, 16#10#, txp);

    -- -- R DSU CPU0 CTRL
    -- txc(dsutx, 16#80#, txp);
    -- txa(dsutx, 16#90#, 16#00#, 16#00#, 16#00#, txp);
    -- rxi(dsurx, w32, txp, lresp);

    -- -- R 33 x 32bit RAM @ 0x00000000
    -- txc(dsutx, 16#a0#, txp);
    -- txa(dsutx, 16#40#, 16#00#, 16#00#, 16#00#, txp);
    -- rxi(dsurx, w32, txp, lresp);

    end;

  begin

    dsucfg(dsutx, dsurx);

    wait;
  end process;
end ;

