------------------------------------------------------------------------------
--  LEON3 Demonstration design test bench
--  Copyright (C) 2004 Jiri Gaisler, Gaisler Research
------------------------------------------------------------------------------
--  This file is a part of the GRLIB VHDL IP LIBRARY
--  Copyright (C) 2003 - 2008, Gaisler Research
--  Copyright (C) 2008 - 2014, Aeroflex Gaisler
--  Copyright (C) 2015, Cobham Gaisler
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

    clkperiod : integer := 20;		-- system clock period
    romdepth  : integer := 25;          -- rom address depth
    sramwidth  : integer := 32;         -- ram data width (8/16/32)
    sramdepth  : integer := 20;         -- ram address depth
    srambanks  : integer := 2           -- number of ram banks
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
      B7A_CAN1_RX       : in    std_logic;
      B7A_CAN1_TX       : out   std_logic;
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
      HSMC1_TX0         : out std_logic;
      HSMC1_TX1         : out std_logic;
      HSMC1_TX2         : out std_logic;
      HSMC1_TX3         : out std_logic;
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
      HSMC1_TX0_N       : out std_logic;
      HSMC1_TX1_N       : out std_logic;
      HSMC1_TX2_N       : out std_logic;
      HSMC1_TX3_N       : out std_logic;
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
      HSMC1_RX10        : out std_logic;
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
      HSMC1_RX7_N       : out std_logic;
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

signal clk50, clkout: std_ulogic := '0';
signal rst: std_ulogic;
signal user_led: std_logic_vector(3 downto 0);

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
signal gpio	: std_logic_vector(7 downto 0);
signal GND      : std_ulogic := '0';
signal VCC      : std_ulogic := '1';
signal NC       : std_ulogic := 'Z';
signal clk2     : std_ulogic := '1';
    
signal plllock    : std_ulogic;       
signal txd1, rxd1 : std_ulogic;
  

constant lresp : boolean := false;

begin

-- clock and reset

  clk50 <= not clk50 after 20 ns;

  rst <= dsurst;
  dsubren <= '1'; rxd1 <= '1';

  d3 : leon3mp
    generic map ( fabtech, memtech, padtech, disas, dbguart, pclow )
    port map (

      DDR3_A        => open,
      DDR3_BA       => open,
      DDR3_CAS_n    => open,
      DDR3_CKE      => open,
      DDR_CK_n      => open,
      DDR3_CK_p     => open,
      DDR3_CS_n     => open,
      DDR3_DM       => open,
      DDR3_DQ       => open,
      DDR3_DQS_n    => open,
      DDR3_DQS_p    => open,
      DDR3_ODT      => open,
      DDR3_RAS_n    => open,
      DDR3_RESET_n  => open,
      DDR3_RZQ      => '0',
      DDR3_WE_n     => open,

      HPS_CONV_USB_n      => open,
      HPS_DDR3_A          => open,
      HPS_DDR3_BA         => open,
      HPS_DDR3_CAS_n      => open,
      HPS_DDR3_CKE        => open,
      HPS_DDR3_CK_n       => open,
      HPS_DDR3_CK_p       => open,
      HPS_DDR3_CS_n       => open,
      HPS_DDR3_DM         => open,
      HPS_DDR3_DQ         => open,
      HPS_DDR3_DQS_n      => open,
      HPS_DDR3_DQS_p      => open,
      HPS_DDR3_ODT        => open,
      HPS_DDR3_RAS_n      => open,
      HPS_DDR3_RESET_n    => open,
      HPS_DDR3_RZQ        => '0',
      HPS_DDR3_WE_n       => open,
      HPS_ENET_GTX_CLK    => open,
      HPS_ENET_INT_n      => open,
      HPS_ENET_MDC        => open,
      HPS_ENET_MDIO       => open,
      HPS_ENET_RX_CLK     => '0',
      HPS_ENET_RX_DATA    => (others => '0'),
      HPS_ENET_RX_DV      => '0',
      HPS_ENET_TX_DATA    => open,
      HPS_ENET_TX_EN      => open,
      HPS_FLASH_DATA      => open,
      HPS_FLASH_DCLK      => open,
      HPS_FLASH_NCSO      => open,
      HPS_GSENSOR_INT     => open,
      HPS_I2C_CLK         => open,
      HPS_I2C_SDA         => open,
      HPS_LCM_BK          => open,
      HPS_LCM_D_C         => open,
      HPS_LCM_RST_N       => open,
      HPS_LCM_SPIM_CLK    => open,
      HPS_LCM_SPIM_MOSI   => open,
      HPS_LCM_SPIM_SS     => open,
      HPS_LCM_SPIM_MISO   => '0',
      HPS_LED             => open,
      HPS_LTC_GPIO        => open,
      HPS_SD_CLK          => open,
      HPS_SD_CMD          => open,
      HPS_SD_DATA         => open,
      HPS_SPIM_CLK        => open,
      HPS_SPIM_MISO       => '0',
      HPS_SPIM_MOSI       => open,
      HPS_SPIM_SS         => open,
      HPS_UART_RX         => '0',
      HPS_UART_TX         => open,
      HPS_USB_CLKOUT      => '0',
      HPS_USB_DATA        => open,
      HPS_USB_DIR         => '0',
      HPS_USB_NXT         => '0',
      HPS_USB_STP         => open,

      OSC_50_B3B => clk50,
      OSC_50_B4A => clk50,
      OSC_50_B5B => clk50,
      OSC_50_B8A => clk50,
      
      --RESET--
      RESET_n => rst,
		
      --KEY (PUSHBUTTONS)--
      KEY => "0000",

      --LED--
      LED => user_led,
		
	--SW (SWITCHES)--
      SW => "1111"
    );

  -- 16 bit prom
  prom0 : sram16 generic map (index => 4, abits => romdepth, fname => promfile)
	port map (address(romdepth downto 1), data, 
		  romsn, romsn, romsn, rwen, oen);

  data <= buskeep(data), (others => 'H') after 250 ns;

  error <= user_led(3);

   iuerr : process
   begin
     wait for 2500 ns;
     if to_x01(error) = '1' then wait on error; end if;
     assert (to_x01(error) = '1') 
       report "*** IU in error mode, simulation halted ***"
         severity failure ;
   end process;

  test0 :  grtestmod generic map (width => 16)
    port map ( rst, clk50, error, address(21 downto 2), data,
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

    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#00#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#2f#, txp);
    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#91#, 16#00#, 16#00#, 16#00#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#6f#, txp);
    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#11#, 16#00#, 16#00#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#00#, txp);
    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#40#, 16#00#, 16#04#, txp);
    txa(dsutx, 16#00#, 16#02#, 16#20#, 16#01#, txp);
    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#20#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#02#, txp);

    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#20#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#0f#, txp);

    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#40#, 16#00#, 16#43#, 16#10#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#0f#, txp);

    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#91#, 16#40#, 16#00#, 16#24#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#24#, txp);
    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#91#, 16#70#, 16#00#, 16#00#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#03#, txp);





    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#20#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#ff#, 16#ff#, txp);

    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#40#, 16#00#, 16#48#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#00#, 16#12#, txp);

    txc(dsutx, 16#c0#, txp);
    txa(dsutx, 16#90#, 16#40#, 16#00#, 16#60#, txp);
    txa(dsutx, 16#00#, 16#00#, 16#12#, 16#10#, txp);

    txc(dsutx, 16#80#, txp);
    txa(dsutx, 16#90#, 16#00#, 16#00#, 16#00#, txp);
    rxi(dsurx, w32, txp, lresp);

    txc(dsutx, 16#a0#, txp);
    txa(dsutx, 16#40#, 16#00#, 16#00#, 16#00#, txp);
    rxi(dsurx, w32, txp, lresp);

    end;

  begin

    dsucfg(dsutx, dsurx);

    wait;
  end process;
end ;

