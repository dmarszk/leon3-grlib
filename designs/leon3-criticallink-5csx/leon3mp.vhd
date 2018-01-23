-----------------------------------------------------------------------------
--  LEON3 Criticallink MitySOM 5CSX demonstration design
--  By Dominik Marszk
------------------------------------------------------------------------------
--  This file is based on the GRLIB VHDL IP LIBRARY demos
--  Copyright (C) 2003 - 2008, Gaisler Research
--  Copyright (C) 2008 - 2014, Aeroflex Gaisler
--  Copyright (C) 2015 - 2016, Cobham Gaisler
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
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library grlib, techmap;
use grlib.amba.all;
use grlib.devices.all;
use grlib.stdlib.all;
library techmap;
use techmap.gencomp.all;
library gaisler;
use gaisler.memctrl.all;
use gaisler.leon3.all;
use gaisler.uart.all;
use gaisler.misc.all;
use gaisler.can.all;
use gaisler.jtag.all;
use gaisler.spi.all;
use gaisler.i2c.all;
use gaisler.net.all;
--pragma translate_off
use gaisler.sim.all;
--pragma translate_on
library esa;
use esa.memoryctrl.all;
use work.config.all;

entity leon3mp is
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
      HPS_DDR_D         : inout std_logic_vector(39 downto 0) := (others => 'X');
      HPS_DDR_DQS_P     : inout std_logic_vector(4 downto 0)  := (others => 'X');
      HPS_DDR_DQS_N     : inout std_logic_vector(4 downto 0)  := (others => 'X');
      HPS_DDR_DQM       : out   std_logic_vector(4 downto 0);
      HPS_RZQ0          : in    std_logic                     := 'X';
      HPS_ODT           : out   std_logic;
      -- RGMII1
      RGMII1_TX_CLK     : out   std_logic;
      RGMII1_TXD0       : out   std_logic;
      RGMII1_TXD1       : out   std_logic;
      RGMII1_TXD2       : out   std_logic;
      RGMII1_TXD3       : out   std_logic;
      RGMII1_RXD0       : in    std_logic                     := 'X';
      RGMII1_MDIO       : inout std_logic                     := 'X';
      RGMII1_MDC        : out   std_logic;
      RGMII1_RX_CTL     : in    std_logic                     := 'X';
      RGMII1_TX_CTL     : out   std_logic;
      RGMII1_RX_CLK     : in    std_logic                     := 'X';
      RGMII1_RXD1       : in    std_logic                     := 'X';
      RGMII1_RXD2       : in    std_logic                     := 'X';
      RGMII1_RXD3       : in    std_logic                     := 'X';
      RGMII1_RESETn     : inout std_logic;
      -- QSPI
      QSPI_DQ0          : inout std_logic                     := 'X';
      QSPI_DQ1          : inout std_logic                     := 'X';
      QSPI_DQ2          : inout std_logic                     := 'X';
      QSPI_DQ3          : inout std_logic                     := 'X';
      QSPI_SS0          : out   std_logic;
      QSPI_SS1          : out   std_logic;
      QSPI_CLK          : out   std_logic;
      -- SDMMC
      SDMMC_CMD         : inout std_logic                     := 'X';
      SDMMC_D0          : inout std_logic                     := 'X';
      SDMMC_D1          : inout std_logic                     := 'X';
      SDMMC_CLK         : out   std_logic;
      SDMMC_D2          : inout std_logic                     := 'X';
      SDMMC_D3          : inout std_logic                     := 'X';
      -- USB1
      USB1_ULPI_D0      : inout std_logic                     := 'X';
      USB1_ULPI_D1      : inout std_logic                     := 'X';
      USB1_ULPI_D2      : inout std_logic                     := 'X';
      USB1_ULPI_D3      : inout std_logic                     := 'X';
      USB1_ULPI_D4      : inout std_logic                     := 'X';
      USB1_ULPI_D5      : inout std_logic                     := 'X';
      USB1_ULPI_D6      : inout std_logic                     := 'X';
      USB1_ULPI_D7      : inout std_logic                     := 'X';
      USB1_ULPI_CLK     : in    std_logic                     := 'X';
      USB1_ULPI_STP     : out   std_logic;
      USB1_ULPI_DIR     : in    std_logic                     := 'X';
      USB1_ULPI_NXT     : in    std_logic                     := 'X';
      USB1_ULPI_CS      : inout std_logic;
      USB1_ULPI_RESET_N : inout std_logic;
      -- UART0
      B7A_UART0_RX      : in    std_logic                     := 'X';
      B7A_UART0_TX      : out   std_logic;
      -- I2C0
      B7A_I2C0_SDA      : inout std_logic                     := 'X';
      B7A_I2C0_SCL      : inout std_logic                     := 'X';
      -- CAN0
      B7A_CAN0_RX       : in    std_logic                     := 'X';
      B7A_CAN0_TX       : out   std_logic;
      -- CAN1, plugged to an FPGA CAN controller
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
      HSMC1_SMSDA       : out std_logic := '0';
      HSMC1_SMSCL       : out std_logic := '0';
      HSMC1_CLKOUT0     : out std_logic := '0';
      HSMC1_CLKOUT1     : out std_logic := '0';
      HSMC1_CLKOUT2     : out std_logic := '0';
      HSMC1_CLKIN0      : out std_logic := '0';
      HSMC1_CLKIN1      : out std_logic := '0';
      HSMC1_CLKIN2      : out std_logic := '0';
      HSMC1_CLKOUT1_N   : out std_logic := '0';
      HSMC1_CLKOUT2_N   : out std_logic := '0';
      HSMC1_CLKIN1_N    : out std_logic := '0';
      HSMC1_CLKIN2_N    : out std_logic := '0';
      HSMC1_PRSNTn      : out std_logic := '0';
      HSMC1_D0          : out std_logic := '0';
      HSMC1_D1          : out std_logic := '0';
      HSMC1_D2          : out std_logic := '0';
      HSMC1_D3          : out std_logic := '0';
      HSMC1_TX0         : inout std_logic := '0';
      HSMC1_TX1         : inout std_logic := '0';
      HSMC1_TX2         : inout std_logic := '0';
      HSMC1_TX3         : inout std_logic := '0';
      HSMC1_TX4         : out std_logic := '0';
      HSMC1_TX5         : out std_logic := '0';
      HSMC1_TX6         : out std_logic := '0';
      HSMC1_TX7         : out std_logic := '0';
      HSMC1_TX8         : out std_logic := '0';
      HSMC1_TX9         : out std_logic := '0';
      HSMC1_TX10        : out std_logic := '0';
      HSMC1_TX11        : out std_logic := '0';
      HSMC1_TX12        : out std_logic := '0';
      HSMC1_TX13        : out std_logic := '0';
      HSMC1_TX14        : out std_logic;
      HSMC1_TX15        : out std_logic;
      HSMC1_TX16        : out std_logic := '0';
      HSMC1_TX0_N       : inout std_logic := '0';
      HSMC1_TX1_N       : inout std_logic := '0';
      HSMC1_TX2_N       : inout std_logic := '0';
      HSMC1_TX3_N       : inout std_logic := '0';
      HSMC1_TX4_N       : out std_logic := '0';
      HSMC1_TX5_N       : out std_logic := '0';
      HSMC1_TX6_N       : out std_logic := '0';
      HSMC1_TX7_N       : out std_logic := '0';
      HSMC1_TX8_N       : out std_logic := '0';
      HSMC1_TX9_N       : out std_logic := '0';
      HSMC1_TX10_N      : out std_logic := '0';
      HSMC1_TX11_N      : out std_logic := '0';
      HSMC1_TX12_N      : out std_logic := '0';
      HSMC1_TX13_N      : out std_logic := '0';
      HSMC1_TX14_N      : in std_logic;
      HSMC1_TX15_N      : out std_logic := '0';
      HSMC1_TX16_N      : out std_logic := '0';
      HSMC1_RX0         : out std_logic := '0';
      HSMC1_RX1         : out std_logic := '0';
      HSMC1_RX2         : out std_logic := '0';
      HSMC1_RX3         : out std_logic := '0';
      HSMC1_RX4         : out std_logic := '0';
      HSMC1_RX5         : out std_logic := '0';
      HSMC1_RX6         : out std_logic := '0';
      HSMC1_RX7         : out std_logic := '0';
      HSMC1_RX8         : out std_logic := '0';
      HSMC1_RX9         : out std_logic := '0';
      HSMC1_RX10        : in std_logic;
      HSMC1_RX11        : in std_logic;
      HSMC1_RX12        : out std_logic := '0';
      HSMC1_RX13        : out std_logic := '0';
      HSMC1_RX14        : out std_logic := '0';
      HSMC1_RX15        : out std_logic := '0';
      HSMC1_RX16        : out std_logic := '0';
      HSMC1_RX0_N       : out std_logic := '0';
      HSMC1_RX1_N       : out std_logic := '0';
      HSMC1_RX2_N       : out std_logic := '0';
      HSMC1_RX3_N       : out std_logic := '0';
      HSMC1_RX4_N       : out std_logic := '0';
      HSMC1_RX5_N       : out std_logic := '0';
      HSMC1_RX6_N       : out std_logic := '0';
      HSMC1_RX7_N       : in std_logic;
      HSMC1_RX8_N       : out std_logic := '0';
      HSMC1_RX9_N       : out std_logic := '0';
      HSMC1_RX10_N      : out std_logic := '0';
      HSMC1_RX11_N      : out std_logic := '0';
      HSMC1_RX12_N      : out std_logic := '0';
      HSMC1_RX13_N      : out std_logic := '0';
      HSMC1_RX14_N      : out std_logic := '0';
      HSMC1_RX15_N      : out std_logic := '0';
      HSMC1_RX16_N      : out std_logic := '0';
      HSMC2_SMSDA       : out std_logic := '0';
      HSMC2_D1_P        : out std_logic := '0';
      HSMC2_D1_N        : out std_logic := '0';
      HSMC2_TX0_P       : out std_logic := '0';
      HSMC2_TX0_N       : out std_logic := '0';
      HSMC2_TX1         : out std_logic := '0';
      HSMC2_SMSCL       : out std_logic := '0';
      HSMC2_D2_P        : out std_logic := '0';
      HSMC2_D2_N        : out std_logic := '0';
      HSMC2_RX0_P       : out std_logic := '0';
      HSMC2_RX0_N       : out std_logic := '0';
      HSMC2_RX1_P       : out std_logic := '0';
      HSMC2_RX1_N       : out std_logic := '0';
      HSMC2_PRSNTN      : out std_logic := '0';
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
      FPGA_DDR_D        : inout std_logic_vector(7 downto 0)  := (others => 'X');
      FPGA_DDR_DQS0_P   : inout std_logic_vector(0 downto 0)  := (others => 'X');
      FPGA_DDR_DQS0_N   : inout std_logic_vector(0 downto 0)  := (others => 'X');
      FPGA_DDR_CS_N     : out   std_logic_vector(0 downto 0)  := (others => 'X');
      RZQ_2             : in    std_logic                     := 'X';
      CLK2DDR           : in    std_logic                     := 'X'
    );
end;

architecture rtl of leon3mp is

  constant USE_AHBREP: integer := 0
--pragma translate_off
                                  +1
--pragma translate_on
                                  ;

  constant maxahbm : integer := (CFG_LEON3*CFG_NCPU)+3;
  constant maxahbs : integer := 8;
  constant maxapbs : integer := 16;

  signal clklock: std_ulogic;
  signal clkm: std_ulogic;
  signal ssclk: std_ulogic;
  signal rstn: std_ulogic;
  signal cpurstn: std_ulogic;
  signal rstraw: std_ulogic;

  signal apbi  : apb_slv_in_type;
  signal apbo  : apb_slv_out_vector := (others => apb_none);
  signal ahbsi : ahb_slv_in_type;
  signal ahbso : ahb_slv_out_vector := (others => ahbs_none);
  signal ahbmi : ahb_mst_in_type;
  signal ahbmo : ahb_mst_out_vector := (others => ahbm_none);

  signal irqi: irq_in_vector(CFG_NCPU-1 downto 0);
  signal irqo: irq_out_vector(CFG_NCPU-1 downto 0);
  signal dbgi: l3_debug_in_vector(0 to CFG_NCPU-1);
  signal dbgo: l3_debug_out_vector(0 to CFG_NCPU-1);
  signal dsui: dsu_in_type;
  signal dsuo: dsu_out_type;
  signal gpti: gptimer_in_type;

  signal gpioi : gpio_in_type;
  signal gpioo : gpio_out_type;

  signal can_lrx, can_ltx : std_ulogic;

  signal sri: memory_in_type;
  signal sro: memory_out_type;
  signal del_addr: std_logic_vector(26 downto 1);
  signal del_ce: std_logic;
  signal del_bwe, del_bwa, del_bwb: std_logic_vector(1 downto 0);

  signal dbguarti, uart1i, uart2i: uart_in_type;
  signal dbguarto, uart1o, uart2o: uart_out_type;

  signal vcc, gnd: std_ulogic;

  signal cgi : clkgen_in_type;
  signal cgo : clkgen_out_type;

  signal hps_h2f_axi_master_awaddr : std_logic_vector(29 downto 0);
  signal hps_h2f_axi_master_araddr : std_logic_vector(29 downto 0);

  -----------------------------------------------------------------------------
  -- HPS signals and component
  -----------------------------------------------------------------------------
  constant idsize   : integer := 8;
  constant lensize    : integer := 4;
  constant periph_addrsize  : integer := 28;

  type f2h_axi is record
    araddr      : STD_LOGIC_VECTOR ( 31 downto 0 );
    arburst     : STD_LOGIC_VECTOR ( 1 downto 0 );
    arcache     : STD_LOGIC_VECTOR ( 3 downto 0 );
    arid        : STD_LOGIC_VECTOR ( 11 downto 0 );
    arlen       : STD_LOGIC_VECTOR ( 3 downto 0 );
    arlock      : STD_LOGIC_VECTOR ( 1 downto 0 ); --
    arprot      : STD_LOGIC_VECTOR ( 2 downto 0 );
    arqos       : STD_LOGIC_VECTOR ( 3 downto 0 );  --
    awqos       : STD_LOGIC_VECTOR ( 3 downto 0 );  --
    arready     : STD_LOGIC;
    arsize      : STD_LOGIC_VECTOR ( 2 downto 0 );
    arvalid     : STD_LOGIC;
    awaddr      : STD_LOGIC_VECTOR ( 31 downto 0 );
    awburst     : STD_LOGIC_VECTOR ( 1 downto 0 );
    awcache     : STD_LOGIC_VECTOR ( 3 downto 0 );
    awid        : STD_LOGIC_VECTOR ( 11 downto 0 );
    awlen       : STD_LOGIC_VECTOR ( 3 downto 0 );
    awlock      : STD_LOGIC_VECTOR ( 1 downto 0 ); --
    awprot      : STD_LOGIC_VECTOR ( 2 downto 0 );
    awready     : STD_LOGIC;
    awsize      : STD_LOGIC_VECTOR ( 2 downto 0 );
    awvalid     : STD_LOGIC;
    bid         : STD_LOGIC_VECTOR ( 11 downto 0 );
    bready      : STD_LOGIC;
    bresp       : STD_LOGIC_VECTOR ( 1 downto 0 );
    bvalid      : STD_LOGIC;
    rdata       : STD_LOGIC_VECTOR ( 31 downto 0 );
    rid         : STD_LOGIC_VECTOR ( 11 downto 0 );
    rlast       : STD_LOGIC;
    rready      : STD_LOGIC;
    rresp       : STD_LOGIC_VECTOR ( 1 downto 0 );
    rvalid      : STD_LOGIC;
    wdata       : STD_LOGIC_VECTOR ( 31 downto 0 );
    wlast       : STD_LOGIC;
    wready      : STD_LOGIC;
    wstrb       : STD_LOGIC_VECTOR ( 3 downto 0 );
    wvalid      : STD_LOGIC;
    wid         : STD_LOGIC_VECTOR ( 11 downto 0 );  --
  end record;

  signal h2f, f2h : f2h_axi;

  component dev_hps is
    port (
      hps_ddr_mem_a                    : out   std_logic_vector(14 downto 0);                    -- mem_a
      hps_ddr_mem_ba                   : out   std_logic_vector(2 downto 0);                     -- mem_ba
      hps_ddr_mem_ck                   : out   std_logic;                                        -- mem_ck
      hps_ddr_mem_ck_n                 : out   std_logic;                                        -- mem_ck_n
      hps_ddr_mem_cke                  : out   std_logic;                                        -- mem_cke
      hps_ddr_mem_cs_n                 : out   std_logic;                                        -- mem_cs_n
      hps_ddr_mem_ras_n                : out   std_logic;                                        -- mem_ras_n
      hps_ddr_mem_cas_n                : out   std_logic;                                        -- mem_cas_n
      hps_ddr_mem_we_n                 : out   std_logic;                                        -- mem_we_n
      hps_ddr_mem_reset_n              : out   std_logic;                                        -- mem_reset_n
      hps_ddr_mem_dq                   : inout std_logic_vector(39 downto 0) := (others => 'X'); -- mem_dq
      hps_ddr_mem_dqs                  : inout std_logic_vector(4 downto 0)  := (others => 'X'); -- mem_dqs
      hps_ddr_mem_dqs_n                : inout std_logic_vector(4 downto 0)  := (others => 'X'); -- mem_dqs_n
      hps_ddr_mem_odt                  : out   std_logic;                                        -- mem_odt
      hps_ddr_mem_dm                   : out   std_logic_vector(4 downto 0);                     -- mem_dm
      hps_ddr_oct_rzqin                : in    std_logic                     := 'X';             -- oct_rzqin
      hps_io_hps_io_emac1_inst_TX_CLK  : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
      hps_io_hps_io_emac1_inst_TXD0    : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
      hps_io_hps_io_emac1_inst_TXD1    : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
      hps_io_hps_io_emac1_inst_TXD2    : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
      hps_io_hps_io_emac1_inst_TXD3    : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
      hps_io_hps_io_emac1_inst_RXD0    : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
      hps_io_hps_io_emac1_inst_MDIO    : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
      hps_io_hps_io_emac1_inst_MDC     : out   std_logic;                                        -- hps_io_emac1_inst_MDC
      hps_io_hps_io_emac1_inst_RX_CTL  : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
      hps_io_hps_io_emac1_inst_TX_CTL  : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
      hps_io_hps_io_emac1_inst_RX_CLK  : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
      hps_io_hps_io_emac1_inst_RXD1    : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
      hps_io_hps_io_emac1_inst_RXD2    : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
      hps_io_hps_io_emac1_inst_RXD3    : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
      hps_io_hps_io_qspi_inst_SS1      : out   std_logic;                                        -- hps_io_qspi_inst_SS1
      hps_io_hps_io_qspi_inst_IO0      : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO0
      hps_io_hps_io_qspi_inst_IO1      : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO1
      hps_io_hps_io_qspi_inst_IO2      : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO2
      hps_io_hps_io_qspi_inst_IO3      : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO3
      hps_io_hps_io_qspi_inst_SS0      : out   std_logic;                                        -- hps_io_qspi_inst_SS0
      hps_io_hps_io_qspi_inst_CLK      : out   std_logic;                                        -- hps_io_qspi_inst_CLK
      hps_io_hps_io_sdio_inst_CMD      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
      hps_io_hps_io_sdio_inst_D0       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
      hps_io_hps_io_sdio_inst_D1       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
      hps_io_hps_io_sdio_inst_CLK      : out   std_logic;                                        -- hps_io_sdio_inst_CLK
      hps_io_hps_io_sdio_inst_D2       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
      hps_io_hps_io_sdio_inst_D3       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
      hps_io_hps_io_usb1_inst_D0       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
      hps_io_hps_io_usb1_inst_D1       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
      hps_io_hps_io_usb1_inst_D2       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
      hps_io_hps_io_usb1_inst_D3       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
      hps_io_hps_io_usb1_inst_D4       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
      hps_io_hps_io_usb1_inst_D5       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
      hps_io_hps_io_usb1_inst_D6       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
      hps_io_hps_io_usb1_inst_D7       : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
      hps_io_hps_io_usb1_inst_CLK      : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
      hps_io_hps_io_usb1_inst_STP      : out   std_logic;                                        -- hps_io_usb1_inst_STP
      hps_io_hps_io_usb1_inst_DIR      : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
      hps_io_hps_io_usb1_inst_NXT      : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
      hps_io_hps_io_uart0_inst_RX      : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
      hps_io_hps_io_uart0_inst_TX      : out   std_logic;                                        -- hps_io_uart0_inst_TX
      hps_io_hps_io_i2c0_inst_SDA      : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SDA
      hps_io_hps_io_i2c0_inst_SCL      : inout std_logic                     := 'X';             -- hps_io_i2c0_inst_SCL
      hps_io_hps_io_i2c1_inst_SDA      : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
      hps_io_hps_io_i2c1_inst_SCL      : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
      hps_io_hps_io_can0_inst_RX       : in    std_logic                     := 'X';             -- hps_io_can0_inst_RX
      hps_io_hps_io_can0_inst_TX       : out   std_logic;                                        -- hps_io_can0_inst_TX
      hps_io_hps_io_gpio_inst_GPIO00   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO00
      hps_io_hps_io_gpio_inst_GPIO09   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
      hps_io_hps_io_gpio_inst_GPIO28   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO28
      hps_io_hps_io_gpio_inst_LOANIO40 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO40
      hps_io_hps_io_gpio_inst_LOANIO41 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO41
      hps_io_hps_io_gpio_inst_LOANIO37 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO37
      hps_io_hps_io_gpio_inst_LOANIO48 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO48
      hps_io_hps_io_gpio_inst_LOANIO49 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO49
      hps_io_hps_io_gpio_inst_LOANIO50 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO50
      hps_io_hps_io_gpio_inst_LOANIO59 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO59
      hps_io_hps_io_gpio_inst_LOANIO60 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO60
      hps_loan_io_in                   : out   std_logic_vector(66 downto 0);                    -- in
      hps_loan_io_out                  : in    std_logic_vector(66 downto 0) := (others => 'X'); -- out
      hps_loan_io_oe                   : in    std_logic_vector(66 downto 0) := (others => 'X'); -- oe
      hps_h2f_gp_gp_in                 : in    std_logic_vector(31 downto 0) := (others => 'X'); -- gp_in
      hps_h2f_gp_gp_out                : out   std_logic_vector(31 downto 0);                    -- gp_out
      bus_clock_clk                    : in    std_logic                     := 'X';             -- clk
      bus_reset_reset_n                : in    std_logic                     := 'X';             -- reset_n
      hps_h2f_100mhz_clock_clk         : out   std_logic;                                        -- clk
      hps_h2f_reset_reset_n            : out   std_logic;                                        -- reset_n
      hps_h2f_axi_master_awid          : out   std_logic_vector(11 downto 0);                    -- awid
      hps_h2f_axi_master_awaddr        : out   std_logic_vector(29 downto 0);                    -- awaddr
      hps_h2f_axi_master_awlen         : out   std_logic_vector(3 downto 0);                     -- awlen
      hps_h2f_axi_master_awsize        : out   std_logic_vector(2 downto 0);                     -- awsize
      hps_h2f_axi_master_awburst       : out   std_logic_vector(1 downto 0);                     -- awburst
      hps_h2f_axi_master_awlock        : out   std_logic_vector(1 downto 0);                     -- awlock
      hps_h2f_axi_master_awcache       : out   std_logic_vector(3 downto 0);                     -- awcache
      hps_h2f_axi_master_awprot        : out   std_logic_vector(2 downto 0);                     -- awprot
      hps_h2f_axi_master_awvalid       : out   std_logic;                                        -- awvalid
      hps_h2f_axi_master_awready       : in    std_logic                     := 'X';             -- awready
      hps_h2f_axi_master_wid           : out   std_logic_vector(11 downto 0);                    -- wid
      hps_h2f_axi_master_wdata         : out   std_logic_vector(31 downto 0);                    -- wdata
      hps_h2f_axi_master_wstrb         : out   std_logic_vector(3 downto 0);                     -- wstrb
      hps_h2f_axi_master_wlast         : out   std_logic;                                        -- wlast
      hps_h2f_axi_master_wvalid        : out   std_logic;                                        -- wvalid
      hps_h2f_axi_master_wready        : in    std_logic                     := 'X';             -- wready
      hps_h2f_axi_master_bid           : in    std_logic_vector(11 downto 0) := (others => 'X'); -- bid
      hps_h2f_axi_master_bresp         : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- bresp
      hps_h2f_axi_master_bvalid        : in    std_logic                     := 'X';             -- bvalid
      hps_h2f_axi_master_bready        : out   std_logic;                                        -- bready
      hps_h2f_axi_master_arid          : out   std_logic_vector(11 downto 0);                    -- arid
      hps_h2f_axi_master_araddr        : out   std_logic_vector(29 downto 0);                    -- araddr
      hps_h2f_axi_master_arlen         : out   std_logic_vector(3 downto 0);                     -- arlen
      hps_h2f_axi_master_arsize        : out   std_logic_vector(2 downto 0);                     -- arsize
      hps_h2f_axi_master_arburst       : out   std_logic_vector(1 downto 0);                     -- arburst
      hps_h2f_axi_master_arlock        : out   std_logic_vector(1 downto 0);                     -- arlock
      hps_h2f_axi_master_arcache       : out   std_logic_vector(3 downto 0);                     -- arcache
      hps_h2f_axi_master_arprot        : out   std_logic_vector(2 downto 0);                     -- arprot
      hps_h2f_axi_master_arvalid       : out   std_logic;                                        -- arvalid
      hps_h2f_axi_master_arready       : in    std_logic                     := 'X';             -- arready
      hps_h2f_axi_master_rid           : in    std_logic_vector(11 downto 0) := (others => 'X'); -- rid
      hps_h2f_axi_master_rdata         : in    std_logic_vector(31 downto 0) := (others => 'X'); -- rdata
      hps_h2f_axi_master_rresp         : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- rresp
      hps_h2f_axi_master_rlast         : in    std_logic                     := 'X';             -- rlast
      hps_h2f_axi_master_rvalid        : in    std_logic                     := 'X';             -- rvalid
      hps_h2f_axi_master_rready        : out   std_logic;                                        -- rready
      hps_f2h_irq1_irq                 : in    std_logic_vector(31 downto 0) := (others => 'X'); -- irq
      hps_f2h_irq0_irq                 : in    std_logic_vector(31 downto 0) := (others => 'X'); -- irq
      hps_f2h_axi_slave_awid           : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- awid
      hps_f2h_axi_slave_awaddr         : in    std_logic_vector(31 downto 0) := (others => 'X'); -- awaddr
      hps_f2h_axi_slave_awlen          : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- awlen
      hps_f2h_axi_slave_awsize         : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- awsize
      hps_f2h_axi_slave_awburst        : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- awburst
      hps_f2h_axi_slave_awlock         : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- awlock
      hps_f2h_axi_slave_awcache        : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- awcache
      hps_f2h_axi_slave_awprot         : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- awprot
      hps_f2h_axi_slave_awvalid        : in    std_logic                     := 'X';             -- awvalid
      hps_f2h_axi_slave_awready        : out   std_logic;                                        -- awready
      hps_f2h_axi_slave_awuser         : in    std_logic_vector(4 downto 0)  := (others => 'X'); -- awuser
      hps_f2h_axi_slave_wid            : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- wid
      hps_f2h_axi_slave_wdata          : in    std_logic_vector(31 downto 0) := (others => 'X'); -- wdata
      hps_f2h_axi_slave_wstrb          : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- wstrb
      hps_f2h_axi_slave_wlast          : in    std_logic                     := 'X';             -- wlast
      hps_f2h_axi_slave_wvalid         : in    std_logic                     := 'X';             -- wvalid
      hps_f2h_axi_slave_wready         : out   std_logic;                                        -- wready
      hps_f2h_axi_slave_bid            : out   std_logic_vector(7 downto 0);                     -- bid
      hps_f2h_axi_slave_bresp          : out   std_logic_vector(1 downto 0);                     -- bresp
      hps_f2h_axi_slave_bvalid         : out   std_logic;                                        -- bvalid
      hps_f2h_axi_slave_bready         : in    std_logic                     := 'X';             -- bready
      hps_f2h_axi_slave_arid           : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- arid
      hps_f2h_axi_slave_araddr         : in    std_logic_vector(31 downto 0) := (others => 'X'); -- araddr
      hps_f2h_axi_slave_arlen          : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- arlen
      hps_f2h_axi_slave_arsize         : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- arsize
      hps_f2h_axi_slave_arburst        : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- arburst
      hps_f2h_axi_slave_arlock         : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- arlock
      hps_f2h_axi_slave_arcache        : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- arcache
      hps_f2h_axi_slave_arprot         : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- arprot
      hps_f2h_axi_slave_arvalid        : in    std_logic                     := 'X';             -- arvalid
      hps_f2h_axi_slave_arready        : out   std_logic;                                        -- arready
      hps_f2h_axi_slave_aruser         : in    std_logic_vector(4 downto 0)  := (others => 'X'); -- aruser
      hps_f2h_axi_slave_rid            : out   std_logic_vector(7 downto 0);                     -- rid
      hps_f2h_axi_slave_rdata          : out   std_logic_vector(31 downto 0);                    -- rdata
      hps_f2h_axi_slave_rresp          : out   std_logic_vector(1 downto 0);                     -- rresp
      hps_f2h_axi_slave_rlast          : out   std_logic;                                        -- rlast
      hps_f2h_axi_slave_rvalid         : out   std_logic;                                        -- rvalid
      hps_f2h_axi_slave_rready         : in    std_logic                     := 'X';             -- rready
      hps_h2f_50mhz_clock_clk          : out   std_logic                                         -- clk
    );
  end component dev_hps;

  constant BOARD_FREQ : integer := 100000;        -- Board frequency in KHz
  constant CPU_FREQ : integer := BOARD_FREQ * CFG_CLKMUL / CFG_CLKDIV;  -- cpu frequency in KHz

  signal stati : ahbstat_in_type;

  signal hps_reset_n : std_logic;
  signal sys_rst_n : std_logic;
  signal cpu_rst_n : std_logic;

  signal hps_clock_50mhz : std_logic;
  signal ddr_afi_clk : std_ulogic;

  -- Used for blinking indicator and controlling loaned HPS signals
  signal indicator_counter : std_logic_vector(31 downto 0) := (others => '0');
  signal led_fpga : std_logic_vector(3 downto 1);
  signal sw_fpga : std_logic_vector(3 downto 1);
  signal loaner_out, loaner_oe, loaner_in : std_logic_vector(66 downto 0);

  -- Used to connect HPS_CAN1 (Set1) pins to CAN controller in FPGA
  signal fpga_can_rx, fpga_can_tx : std_logic;

  -- Internal signal allowing HPS to reset LEON bus.
  -- Also GPO[8:11] and GPI[12:15] implement a generic
  -- signaling mechanism between HPS and LEON
  signal hps_h2f_gpo : std_logic_vector(31 downto 0);
  signal hps_h2f_gpi : std_logic_vector(31 downto 0);
  signal h2f_leon_sys_reset_n : std_logic;
  signal h2f_leon_cpu_reset_n : std_logic;
begin

  -- Blinking indicator that FPGA is being clocked properly
  process ( CLK2DDR )
  begin
    if CLK2DDR'event and CLK2DDR = '1' then
      indicator_counter <= indicator_counter + 1;
    end if ;
  end process ;

  -- All H2F GPO signals are initialized with 0
  -- Bus does not start in reset mode, so all peripherals are accessible through H2F bridge.
  -- CPU starts in reset mode, so it does not execute any instructions
  -- until HPS initializes the program in RAM and deasserts the reset.
  h2f_leon_sys_reset_n <= not hps_h2f_gpo(0);
  h2f_leon_cpu_reset_n <= hps_h2f_gpo(1);
  HSMC1_RX6_N <= dbguarto.txd;
  dbguarti.rxd <= HSMC1_RX7_N;

  HSMC1_RX10_N <= uart1o.txd;
  uart1i.rxd <= HSMC1_RX10;

  HSMC1_RX11_N <= uart2o.txd;
  uart2i.rxd <= HSMC1_RX11;

  sw_fpga(1) <= loaner_in(37);
  sw_fpga(2) <= loaner_in(40);
  sw_fpga(3) <= loaner_in(41);
  fpga_can_rx <= loaner_in(59);

  --led_fpga(1) <= indicator_counter(25);
  --led_fpga(2) <= indicator_counter(25) and sw1_fpga;
  --led_fpga(3) <= sw1_fpga;
  HSMC1_TX15 <= indicator_counter(25);
  HSMC1_TX14 <= indicator_counter(25) and HSMC1_TX14_N;
  loaner_oe <= (48|49|50|60 => '1', 37|40|41|59 => '0', others => 'X');
  loaner_out <= (48 => led_fpga(3), 49 => led_fpga(2), 50 => led_fpga(1), 60 => fpga_can_tx, others => 'X');


  vcc <= '1';
  gnd <= '0';

  -----------------------------------------------------------------------------
  -- Clocking and reset
  -----------------------------------------------------------------------------
  led_fpga(1) <= not clklock;

  rstgen0: if CFG_HPS_RESET = 1 generate
    sys_rst_n <= sw_fpga(2) and h2f_leon_sys_reset_n and hps_reset_n;
  end generate;
  nohps: if CFG_HPS_RESET /= 1 generate
    sys_rst_n <= sw_fpga(2) and h2f_leon_sys_reset_n;
  end generate;


  cpu_rst_n <= sys_rst_n and h2f_leon_cpu_reset_n;

  cgi.pllctrl <= "00"; cgi.pllrst <= rstraw;

  clklock <= cgo.clklock;
  clkgen0 : clkgen                      -- clock generator using toplevel generic 'freq'
    generic map (tech    => altera, clk_mul => CFG_CLKMUL,
                 clk_div => CFG_CLKDIV, sdramen => 0,
                 noclkfb => 0,
                 freq => 150000 -- input clock freq
                 )
    port map (clkin => ddr_afi_clk,
              pciclkin => gnd, clk => clkm, clkn => open,
              clk2x => open, sdclk => open, pciclk => open,
              cgi   => cgi, cgo => cgo);

  rstgen1: rstgen
    generic map (syncrst => CFG_NOASYNC)
    port map (sys_rst_n, clkm, clklock, rstn, rstraw);

  cpurstgen1: rstgen
    generic map (syncrst => CFG_NOASYNC)
    port map (cpu_rst_n, clkm, clklock, cpurstn, open);

  -----------------------------------------------------------------------------
  -- AMBA bus fabric
  -----------------------------------------------------------------------------

  ahbctrl0: ahbctrl
    generic map (defmast => CFG_DEFMST, split => CFG_SPLIT,
                 rrobin => CFG_RROBIN,ioaddr => CFG_AHBIO, fpnpen => CFG_FPNPEN,
                 enbusmon => CFG_AHB_MON, assertwarn => CFG_AHB_MONWAR,
                 asserterr => CFG_AHB_MONERR, ahbtrace => CFG_AHB_DTRACE,
                 nahbm => maxahbm, nahbs => maxahbs)
    port map (rstn,clkm,ahbmi,ahbmo,ahbsi,ahbso);

  apbctrl0: apbctrl
    generic map (hindex => 1, haddr => CFG_APBADDR, nslaves => 16)
    port map (rstn,clkm,ahbsi,ahbso(1),apbi,apbo);

  -----------------------------------------------------------------------------
  -- LEON3 Processor(s), DSU
  -----------------------------------------------------------------------------

  -- DEV board LEDs and SWs are active low
  led_fpga(3) <= dbgo(0).error; -- dbgo.error is also active low (see page 1109 of GRIP manual)
  dsui.break <= not(sw_fpga(3));
  led_fpga(2) <= not(dsuo.active);

  l3 : if CFG_LEON3 = 1 generate
    cpu : for i in 0 to CFG_NCPU-1 generate
      u0 : leon3s                         -- LEON3 processor
        generic map (i, fabtech, memtech, CFG_NWIN, CFG_DSU, CFG_FPU, CFG_V8,
                   0, CFG_MAC, pclow, CFG_NOTAG, CFG_NWP, CFG_ICEN, CFG_IREPL, CFG_ISETS, CFG_ILINE,
                   CFG_ISETSZ, CFG_ILOCK, CFG_DCEN, CFG_DREPL, CFG_DSETS, CFG_DLINE, CFG_DSETSZ,
                   CFG_DLOCK, CFG_DSNOOP, CFG_ILRAMEN, CFG_ILRAMSZ, CFG_ILRAMADDR, CFG_DLRAMEN,
                   CFG_DLRAMSZ, CFG_DLRAMADDR, CFG_MMUEN, CFG_ITLBNUM, CFG_DTLBNUM, CFG_TLB_TYPE, CFG_TLB_REP,
                   CFG_LDDEL, disas, CFG_ITBSZ, CFG_PWD, CFG_SVT, CFG_RSTADDR, CFG_NCPU-1)
        port map (clkm, cpurstn, ahbmi, ahbmo(i), ahbsi, ahbso,
                irqi(i), irqo(i), dbgi(i), dbgo(i));
    end generate;

    dsugen : if CFG_DSU = 1 generate
      dsu0 : dsu3                         -- LEON3 Debug Support Unit
        generic map (hindex => 2, haddr => 16#900#, hmask => 16#F00#,
                   ncpu   => CFG_NCPU, tbits => 30, tech => memtech, irq => 0, kbytes => CFG_ATBSZ)
        port map (rstn, clkm, ahbmi, ahbsi, ahbso(2), dbgo, dbgi, dsui, dsuo);
      dsui.enable <= '1';
    end generate;
  end generate;
  noleon: if CFG_LEON3 = 0 generate
    irqo <= (others => ('0',"0000",'0','0','0'));
    dbgo <= (others => dbgo_none);
  end generate;
  nodsu : if CFG_DSU = 0 or CFG_LEON3 = 0 generate
    dsuo.tstop <= '0'; dsuo.active <= '0'; ahbso(2) <= ahbs_none;
  end generate;

  -----------------------------------------------------------------------------
  -- APB Slaves
  -----------------------------------------------------------------------------

  ua1 : if CFG_UART1_ENABLE /= 0 generate
  uart1 : apbuart
      generic map (pindex   => 1, paddr => 1, pirq => 2, console => dbguart,
                   fifosize => CFG_UART1_FIFO)
      port map (rstn, clkm, apbi, apbo(1), uart1i, uart1o);
    uart1i.ctsn   <= '0';
    uart1i.extclk <= '0';
  end generate;

  ua2 : if CFG_UART2_ENABLE /= 0 generate
  uart2 : apbuart
      generic map (pindex   => 9, paddr => 9, pirq => 3,
                   fifosize => CFG_UART2_FIFO)
      port map (rstn, clkm, apbi, apbo(9), uart2i, uart2o);
    uart2i.ctsn   <= '0';
    uart2i.extclk <= '0';
  end generate;

  irqctrl : if CFG_IRQ3_ENABLE /= 0 generate
    irqctrl0 : irqmp                    -- interrupt controller
      generic map (pindex => 2, paddr => 2, ncpu => CFG_NCPU)
      port map (rstn, clkm, apbi, apbo(2), irqo, irqi);
  end generate;
  irq3 : if CFG_IRQ3_ENABLE = 0 generate
    x : for i in 0 to CFG_NCPU-1 generate
      irqi(i).irl <= "0000";
    end generate;
    apbo(2) <= apb_none;
  end generate;

  gpt : if CFG_GPT_ENABLE /= 0 generate
    timer0 : gptimer                    -- timer unit
      generic map (pindex => 3, paddr => 3, pirq => CFG_GPT_IRQ,
                   sepirq => CFG_GPT_SEPIRQ, sbits => CFG_GPT_SW, ntimers => CFG_GPT_NTIM,
                   nbits  => CFG_GPT_TW)
      port map (rstn, clkm, apbi, apbo(3), gpti, open);
    gpti <= gpti_dhalt_drive(dsuo.tstop);
  end generate;

  nogpt : if CFG_GPT_ENABLE = 0 generate apbo(3) <= apb_none; end generate;

  gpio0 : if CFG_GRGPIO_ENABLE /= 0 generate     -- GPIO unit
    grgpio0: grgpio
    generic map(pindex => 8, paddr => 8, imask => CFG_GRGPIO_IMASK, nbits => CFG_GRGPIO_WIDTH)
    port map(rst => rstn, clk => clkm, apbi => apbi, apbo => apbo(8), gpioi => gpioi, gpioo => gpioo);

    pio_pad0 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX0, gpioo.dout(0), gpioo.oen(0), gpioi.din(0));
    pio_pad1 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX0_N, gpioo.dout(1), gpioo.oen(1), gpioi.din(1));
    pio_pad2 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX1, gpioo.dout(2), gpioo.oen(2), gpioi.din(2));
    pio_pad3 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX1_N, gpioo.dout(3), gpioo.oen(3), gpioi.din(3));
    pio_pad4 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX2, gpioo.dout(4), gpioo.oen(4), gpioi.din(4));
    pio_pad5 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX2_N, gpioo.dout(5), gpioo.oen(5), gpioi.din(5));
    pio_pad6 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX3, gpioo.dout(6), gpioo.oen(6), gpioi.din(6));
    pio_pad7 : iopad generic map (tech => padtech, level => cmos, voltage => x25v)
      port map (HSMC1_TX3_N, gpioo.dout(7), gpioo.oen(7), gpioi.din(7));

    pio_pads2 : for i in 8 to 11 generate
      gpioi.din(i) <= hps_h2f_gpo(i);
    end generate;
    pio_pads3 : for i in 12 to 15 generate
      hps_h2f_gpi(i) <= gpioo.dout(i);
    end generate;
  end generate;

  ahbs : if CFG_AHBSTAT = 1 generate   -- AHB status register
    stati <= ahbstat_in_none;
    ahbstat0 : ahbstat generic map (pindex => 15, paddr => 15, pirq => 7,
   nftslv => CFG_AHBSTATN)
      port map (rstn, clkm, ahbmi, ahbsi, stati, apbi, apbo(15));
  end generate;


  -----------------------------------------------------------------------------
  -- Debug links
  -----------------------------------------------------------------------------

  dcomgen : if CFG_AHB_UART = 1 generate
    dcom0 : ahbuart                     -- Debug UART
      generic map (hindex => CFG_LEON3*CFG_NCPU+1, pindex => 7, paddr => 7)
      port map (rstn, clkm, dbguarti, dbguarto, apbi, apbo(7), ahbmi, ahbmo(CFG_LEON3*CFG_NCPU+1));
  end generate;
  nouah : if CFG_AHB_UART = 0 generate
    dbguarto.rtsn <= '0'; dbguarto.txd <= '0';
    dbguarto.scaler <= (others => '0'); dbguarto.txen <= '0';
    dbguarto.flow <= '0'; dbguarto.rxen <= '0';
  end generate;

  ahbjtaggen0 :if CFG_AHB_JTAG = 1 generate
    ahbjtag0 : ahbjtag generic map(tech => fabtech, hindex => CFG_LEON3*CFG_NCPU, nsync => 2, versel => 0)
      port map(rstn, clkm, gnd, gnd, gnd, open, ahbmi, ahbmo(CFG_LEON3*CFG_NCPU),
               open, open, open, open, open, open, open, gnd);
  end generate;
  -----------------------------------------------------------------------
  ---  CAN --------------------------------------------------------------
  -----------------------------------------------------------------------
  can0 : if CFG_CAN = 1 generate
   can0 : can_oc generic map (slvndx => 7, ioaddr => CFG_CANIO,
      iomask => 16#FFF#, irq => CFG_CANIRQ, memtech => memtech)
      port map (rstn, clkm, ahbsi, ahbso(7), can_lrx, can_ltx );
  end generate;
  ncan : if CFG_CAN = 0 generate ahbso(7) <= ahbs_none; end generate;

  can_loopback : if CFG_CANLOOP = 1 generate
   can_lrx <= can_ltx;
   fpga_can_tx <= '0';
  end generate;

  can_pads : if CFG_CANLOOP = 0 generate
    can_lrx <= fpga_can_rx;
    fpga_can_tx <= can_ltx;
  end generate;
  -----------------------------------------------------------------------------
  -- Memory controllers
  -----------------------------------------------------------------------------

  ---  AHB ROM
  bpromgen : if CFG_AHBROMEN /= 0 generate
    brom : entity work.ahbrom
      generic map (hindex => 0, haddr => CFG_AHBRODDR, pipe => CFG_AHBROPIP)
      port map ( rstn, clkm, ahbsi, ahbso(0));
  end generate;

  ---  AHB RAM
  ocram : if CFG_AHBRAMEN = 1 generate
    ahbram0 : ahbram generic map (hindex => 4, haddr => CFG_AHBRADDR,
   tech => CFG_MEMTECH, kbytes => CFG_AHBRSZ, pipe => CFG_AHBRPIPE)
    port map ( rstn, clkm, ahbsi, ahbso(4));
  end generate;

  ---  DDR3
  ddr3if0: entity work.ddr3if
    generic map (
      hindex => 5,
      haddr => 16#400#, hmask => 16#F00#,
      -- ahb2avla does not work properly with
      -- read bursts if the response is segmented up into more than a single
      -- rdata_valid assertions.
      burstlen => 2
    ) port map (
      pll_ref_clk => CLK2DDR,
      global_reset_n => sys_rst_n,
      mem_a => FPGA_DDR_A,
      mem_ba => FPGA_DDR_BAS,
      mem_ck => FPGA_DDR_CK_P(0),
      mem_ck_n => FPGA_DDR_CK_N(0),
      mem_cke => FPGA_DDR_CKE(0),
      mem_reset_n => FPGA_DDR_RESET_N,
      mem_cs_n => FPGA_DDR_CS_N(0),
      mem_dm => FPGA_DDR_DQM0,
      mem_ras_n => FPGA_DDR_RAS_N(0),
      mem_cas_n => FPGA_DDR_CAS_N(0),
      mem_we_n =>  FPGA_DDR_WE_N(0),
      mem_dq => FPGA_DDR_D,
      mem_dqs => FPGA_DDR_DQS0_P,
      mem_dqs_n => FPGA_DDR_DQS0_N,
      mem_odt => open,
      oct_rzqin => RZQ_2,
      ahb_clk => clkm,
      ahb_rst => rstn,
      ahbsi => ahbsi,
      ahbso => ahbso(5),
      afi_clk => ddr_afi_clk
      );


  -----------------------------------------------------------------------------
  -- Hard Processor System
  -----------------------------------------------------------------------------

  -- FPGA2HPS Bridge
  fpga2hps: if CFG_FPGA2HPS = 1 generate
  ahb2axi0 : entity work.ahb2axi
    generic map(
     hindex => 3, haddr => 16#C00#, hmask => 16#F00#,
     idsize => idsize, lensize => lensize, addrsize => periph_addrsize)
    port map(
      rstn                                    => rstn,
      clk                                     => clkm,
      ahbsi                                   => ahbsi,
      ahbso                                   => ahbso(3),
      M_AXI_araddr                            => f2h.araddr(periph_addrsize-1 downto 0),
      M_AXI_arburst(1 downto 0)               => f2h.arburst(1 downto 0),
      M_AXI_arcache(3 downto 0)               => f2h.arcache(3 downto 0),
      M_AXI_arid                              => f2h.arid(7 downto 0),
      M_AXI_arlen                             => f2h.arlen,
      M_AXI_arlock                            => f2h.arlock,
      M_AXI_arprot(2 downto 0)                => f2h.arprot(2 downto 0),
      M_AXI_arqos                             => f2h.arqos,
      M_AXI_arready                           => f2h.arready,
      M_AXI_arsize(2 downto 0)                => f2h.arsize(2 downto 0),
      M_AXI_arvalid                           => f2h.arvalid,
      M_AXI_awaddr                            => f2h.awaddr(periph_addrsize-1 downto 0),
      M_AXI_awburst(1 downto 0)               => f2h.awburst(1 downto 0),
      M_AXI_awcache(3 downto 0)               => f2h.awcache(3 downto 0),
      M_AXI_awid                              => f2h.awid(7 downto 0),
      M_AXI_awlen                             => f2h.awlen,
      M_AXI_awlock                            => f2h.awlock,
      M_AXI_awprot(2 downto 0)                => f2h.awprot(2 downto 0),
      M_AXI_awqos                             => f2h.awqos,
      M_AXI_awready                           => f2h.awready,
      M_AXI_awsize(2 downto 0)                => f2h.awsize(2 downto 0),
      M_AXI_awvalid                           => f2h.awvalid,
      M_AXI_bid                               => f2h.bid(7 downto 0),
      M_AXI_bready                            => f2h.bready,
      M_AXI_bresp(1 downto 0)                 => f2h.bresp(1 downto 0),
      M_AXI_bvalid                            => f2h.bvalid,
      M_AXI_rdata(31 downto 0)                => f2h.rdata(31 downto 0),
      M_AXI_rid                               => f2h.rid(7 downto 0),
      M_AXI_rlast                             => f2h.rlast,
      M_AXI_rready                            => f2h.rready,
      M_AXI_rresp(1 downto 0)                 => f2h.rresp(1 downto 0),
      M_AXI_rvalid                            => f2h.rvalid,
      M_AXI_wdata(31 downto 0)                => f2h.wdata(31 downto 0),
      M_AXI_wlast                             => f2h.wlast,
      M_AXI_wready                            => f2h.wready,
      M_AXI_wstrb(3 downto 0)                 => f2h.wstrb(3 downto 0),
      M_AXI_wvalid                            => f2h.wvalid
    );

    f2h.araddr(31 downto periph_addrsize)  <= (others => '1');
    f2h.awaddr(31 downto periph_addrsize)  <= (others => '1');

  end generate;



  --HPS2FPGA bridge
  hps2fpga: if CFG_HPS2FPGA = 1 generate
    axi2ahb : entity work.axi2ahb
    generic map(
      hindex      => CFG_LEON3*CFG_NCPU+2,
      idsize      => 12,
      lensize     => lensize,
      fifo_depth  => 16
    )
    port map(
      ahb_clk     => clkm,
      axi_clk     => clkm,
      resetn      => rstn,
      ahbi        => ahbmi,
      ahbo        => ahbmo(CFG_LEON3*CFG_NCPU+2),
      s_axi_araddr    => h2f.araddr,
      s_axi_arburst   => h2f.arburst,
      s_axi_arcache   => h2f.arcache,
      s_axi_arid      => h2f.arid(11 downto 0),
      s_axi_arlen     => h2f.arlen,
      s_axi_arlock    => h2f.arlock,
      s_axi_arprot    => h2f.arprot,
      s_axi_arqos     => h2f.arqos,
      s_axi_arready   => h2f.arready,
      s_axi_arsize    => h2f.arsize,
      s_axi_arvalid   => h2f.arvalid,
      s_axi_awaddr    => h2f.awaddr,
      s_axi_awburst   => h2f.awburst,
      s_axi_awcache   => h2f.awcache,
      s_axi_awid      => h2f.awid(11 downto 0),
      s_axi_awlen     => h2f.awlen,
      s_axi_awlock    => h2f.awlock,
      s_axi_awprot    => h2f.awprot,
      s_axi_awqos     => h2f.awqos,
      s_axi_awready   => h2f.awready,
      s_axi_awsize    => h2f.awsize,
      s_axi_awvalid   => h2f.awvalid,
      s_axi_bid       => h2f.bid(11 downto 0),
      s_axi_bready    => h2f.bready,
      s_axi_bresp     => h2f.bresp,
      s_axi_bvalid    => h2f.bvalid,
      s_axi_rdata     => h2f.rdata(31 downto 0),
      s_axi_rid       => h2f.rid(11 downto 0),
      s_axi_rlast     => h2f.rlast,
      s_axi_rready    => h2f.rready,
      s_axi_rresp     => h2f.rresp,
      s_axi_rvalid    => h2f.rvalid,
      s_axi_wdata     => h2f.wdata(31 downto 0),
      s_axi_wid       => h2f.wid(11 downto 0),
      s_axi_wlast     => h2f.wlast,
      s_axi_wready    => h2f.wready,
      s_axi_wstrb     => h2f.wstrb(3 downto 0),
      s_axi_wvalid    => h2f.wvalid
    );

    hps2fpga_read_mapper : entity work.hps2fpga_mapper
    port map(
      axi_addr => hps_h2f_axi_master_araddr,
      ahb_addr => h2f.araddr
    );
    hps2fpga_write_mapper : entity work.hps2fpga_mapper
    port map(
      axi_addr => hps_h2f_axi_master_awaddr,
      ahb_addr => h2f.awaddr
    );
  end generate;
dev_hps_inst : component dev_hps
    port map (
      hps_ddr_mem_a                     => HPS_DDR_A, -- hps_ddr.mem_a
      hps_ddr_mem_ba                    => HPS_DDR_BAS, --       .mem_ba
      hps_ddr_mem_ck                    => HPS_DDR_CK_P, --       .mem_ck
      hps_ddr_mem_ck_n                  => HPS_DDR_CK_N, --       .mem_ck_n
      hps_ddr_mem_cke                   => HPS_DDR_CKE, --       .mem_cke
      hps_ddr_mem_cs_n                  => HPS_DDR_CS0_N, --       .mem_cs_n
      hps_ddr_mem_ras_n                 => HPS_DDR_RAS_N, --       .mem_ras_n
      hps_ddr_mem_cas_n                 => HPS_DDR_CAS_N, --       .mem_cas_n
      hps_ddr_mem_we_n                  => HPS_DDR_WE_N, --       .mem_we_n
      hps_ddr_mem_reset_n               => HPS_DDR_RESET_N, --       .mem_reset_n
      hps_ddr_mem_dq                    => HPS_DDR_D, --       .mem_dq
      hps_ddr_mem_dqs                   => HPS_DDR_DQS_P, --       .mem_dqs
      hps_ddr_mem_dqs_n                 => HPS_DDR_DQS_N, --       .mem_dqs_n
      hps_ddr_mem_odt                   => HPS_ODT, --       .mem_odt
      hps_ddr_mem_dm                    => HPS_DDR_DQM, --       .mem_dm
      hps_ddr_oct_rzqin                 => HPS_RZQ0, --       .oct_rzqin
      hps_io_hps_io_emac1_inst_TX_CLK   => RGMII1_TX_CLK, -- hps_io.hps_io_emac1_inst_TX_CLK
      hps_io_hps_io_emac1_inst_TXD0     => RGMII1_TXD0, --       .hps_io_emac1_inst_TXD0
      hps_io_hps_io_emac1_inst_TXD1     => RGMII1_TXD1, --       .hps_io_emac1_inst_TXD1
      hps_io_hps_io_emac1_inst_TXD2     => RGMII1_TXD2, --       .hps_io_emac1_inst_TXD2
      hps_io_hps_io_emac1_inst_TXD3     => RGMII1_TXD3, --       .hps_io_emac1_inst_TXD3
      hps_io_hps_io_emac1_inst_RXD0     => RGMII1_RXD0, --       .hps_io_emac1_inst_RXD0
      hps_io_hps_io_emac1_inst_RXD1     => RGMII1_RXD1, --       .hps_io_emac1_inst_RXD1
      hps_io_hps_io_emac1_inst_RXD2     => RGMII1_RXD2, --       .hps_io_emac1_inst_RXD2
      hps_io_hps_io_emac1_inst_RXD3     => RGMII1_RXD3, --       .hps_io_emac1_inst_RXD3
      hps_io_hps_io_emac1_inst_MDIO     => RGMII1_MDIO, --       .hps_io_emac1_inst_MDIO
      hps_io_hps_io_emac1_inst_MDC      => RGMII1_MDC, --       .hps_io_emac1_inst_MDC
      hps_io_hps_io_emac1_inst_RX_CTL   => RGMII1_RX_CTL, --       .hps_io_emac1_inst_RX_CTL
      hps_io_hps_io_emac1_inst_TX_CTL   => RGMII1_TX_CTL, --       .hps_io_emac1_inst_TX_CTL
      hps_io_hps_io_emac1_inst_RX_CLK   => RGMII1_RX_CLK, --       .hps_io_emac1_inst_RX_CLK
      hps_io_hps_io_qspi_inst_SS1       => QSPI_SS1, -- hps_io.hps_io_qspi_inst_SS1
      hps_io_hps_io_qspi_inst_IO0       => QSPI_DQ0, --       .hps_io_qspi_inst_IO0
      hps_io_hps_io_qspi_inst_IO1       => QSPI_DQ1, --       .hps_io_qspi_inst_IO1
      hps_io_hps_io_qspi_inst_IO2       => QSPI_DQ2, --       .hps_io_qspi_inst_IO2
      hps_io_hps_io_qspi_inst_IO3       => QSPI_DQ3, --       .hps_io_qspi_inst_IO3
      hps_io_hps_io_qspi_inst_SS0       => QSPI_SS0, --       .hps_io_qspi_inst_SS0
      hps_io_hps_io_qspi_inst_CLK       => QSPI_CLK, --       .hps_io_qspi_inst_CLK
      hps_io_hps_io_sdio_inst_CMD       => SDMMC_CMD, --       .hps_io_sdio_inst_CMD
      hps_io_hps_io_sdio_inst_D0        => SDMMC_D0, --       .hps_io_sdio_inst_D0
      hps_io_hps_io_sdio_inst_D1        => SDMMC_D1, --       .hps_io_sdio_inst_D1
      hps_io_hps_io_sdio_inst_D2        => SDMMC_D2, --       .hps_io_sdio_inst_D2
      hps_io_hps_io_sdio_inst_D3        => SDMMC_D3, --       .hps_io_sdio_inst_D3
      hps_io_hps_io_sdio_inst_CLK       => SDMMC_CLK, --       .hps_io_sdio_inst_CLK
      hps_io_hps_io_usb1_inst_D0        => USB1_ULPI_D0, --       .hps_io_usb1_inst_D0
      hps_io_hps_io_usb1_inst_D1        => USB1_ULPI_D1, --       .hps_io_usb1_inst_D1
      hps_io_hps_io_usb1_inst_D2        => USB1_ULPI_D2, --       .hps_io_usb1_inst_D2
      hps_io_hps_io_usb1_inst_D3        => USB1_ULPI_D3, --       .hps_io_usb1_inst_D3
      hps_io_hps_io_usb1_inst_D4        => USB1_ULPI_D4, --       .hps_io_usb1_inst_D4
      hps_io_hps_io_usb1_inst_D5        => USB1_ULPI_D5, --       .hps_io_usb1_inst_D5
      hps_io_hps_io_usb1_inst_D6        => USB1_ULPI_D6, --       .hps_io_usb1_inst_D6
      hps_io_hps_io_usb1_inst_D7        => USB1_ULPI_D7, --       .hps_io_usb1_inst_D7
      hps_io_hps_io_usb1_inst_CLK       => USB1_ULPI_CLK, --       .hps_io_usb1_inst_CLK
      hps_io_hps_io_usb1_inst_STP       => USB1_ULPI_STP, --       .hps_io_usb1_inst_STP
      hps_io_hps_io_usb1_inst_DIR       => USB1_ULPI_DIR, --       .hps_io_usb1_inst_DIR
      hps_io_hps_io_usb1_inst_NXT       => USB1_ULPI_NXT, --       .hps_io_usb1_inst_NXT
      hps_io_hps_io_uart0_inst_RX       => B7A_UART0_RX, --       .hps_io_uart0_inst_RX
      hps_io_hps_io_uart0_inst_TX       => B7A_UART0_TX, --       .hps_io_uart0_inst_TX
      hps_io_hps_io_i2c0_inst_SDA       => B7A_I2C0_SDA, --       .hps_io_i2c0_inst_SDA
      hps_io_hps_io_i2c0_inst_SCL       => B7A_I2C0_SCL, --       .hps_io_i2c0_inst_SCL
      hps_io_hps_io_i2c1_inst_SDA       => I2C1_SDA, -- hps_io_i2c1_inst_SDA
      hps_io_hps_io_i2c1_inst_SCL       => I2C1_SCL, -- hps_io_i2c1_inst_SCL
      hps_io_hps_io_can0_inst_RX        => B7A_CAN0_RX, --       .hps_io_can0_inst_RX
      hps_io_hps_io_can0_inst_TX        => B7A_CAN0_TX, --       .hps_io_can0_inst_TX
      hps_io_hps_io_gpio_inst_GPIO00    => USB1_ULPI_CS, --       .hps_io_gpio_inst_GPIO00
      hps_io_hps_io_gpio_inst_GPIO09    => USB1_ULPI_RESET_N, --       .hps_io_gpio_inst_GPIO09
      hps_io_hps_io_gpio_inst_GPIO28    => RGMII1_RESETn, -- hps_io_gpio_inst_GPIO28
      hps_io_hps_io_gpio_inst_LOANIO40    => SW2, -- hps_io_gpio_inst_LOANIO40
      hps_io_hps_io_gpio_inst_LOANIO41    => SW3, -- hps_io_gpio_inst_LOANIO41
      hps_io_hps_io_gpio_inst_LOANIO37    => SW1, -- hps_io_gpio_inst_LOANIO37
      hps_io_hps_io_gpio_inst_LOANIO48    => LED3, -- hps_io_gpio_inst_LOANIO48
      hps_io_hps_io_gpio_inst_LOANIO49    => LED2, -- hps_io_gpio_inst_LOANIO49
      hps_io_hps_io_gpio_inst_LOANIO50    => LED1, -- hps_io_gpio_inst_LOANIO50
      hps_io_hps_io_gpio_inst_LOANIO59    => B7A_CAN1_RX, --     hps_io_gpio_inst_LOANIO59
      hps_io_hps_io_gpio_inst_LOANIO60    => B7A_CAN1_TX, --     hps_io_gpio_inst_LOANIO60
      hps_loan_io_in                   => loaner_in,                   --          hps_loan_io.in
      hps_loan_io_out                  => loaner_out,                  --                     .out
      hps_loan_io_oe                   => loaner_oe,                   --                     .oe

      hps_h2f_gp_gp_in                 => hps_h2f_gpi,          --           hps_h2f_gp.gp_in
      hps_h2f_gp_gp_out                => hps_h2f_gpo,   --                     .gp_out

      bus_clock_clk                    => clkm,                    --            bus_clock.clk
      bus_reset_reset_n                => rstn,                    --            bus_reset.reset_n
      hps_h2f_100mhz_clock_clk         => open,         -- hps_h2f_100mhz_clock.clk
      hps_h2f_reset_reset_n            => hps_reset_n,       -- hps_h2f_reset.reset_n
      hps_h2f_axi_master_awid          => h2f.awid(11 downto 0),--hps_h2f_axi_master.awid
      hps_h2f_axi_master_awaddr        => hps_h2f_axi_master_awaddr,--.awaddr
      hps_h2f_axi_master_awlen         => h2f.awlen,-- .awlen
      hps_h2f_axi_master_awsize        => h2f.awsize,--.awsize
      hps_h2f_axi_master_awburst       => h2f.awburst,--awburst
      hps_h2f_axi_master_awlock        => h2f.awlock,--.awlock
      hps_h2f_axi_master_awcache       => h2f.awcache,--awcache
      hps_h2f_axi_master_awprot        => h2f.awprot,--.awprot
      hps_h2f_axi_master_awvalid       => h2f.awvalid,--awvalid
      hps_h2f_axi_master_awready       => h2f.wready,--wready
      hps_h2f_axi_master_wid           => h2f.wid(11 downto 0),--   .wid
      hps_h2f_axi_master_wdata         => h2f.wdata(31 downto 0),-- .wdata
      hps_h2f_axi_master_wstrb         => h2f.wstrb(3 downto 0),-- .wstrb
      hps_h2f_axi_master_wlast         => h2f.wlast,-- .wlast
      hps_h2f_axi_master_wvalid        => h2f.wvalid,--.wvalid
      hps_h2f_axi_master_wready        => h2f.wready,--wready
      hps_h2f_axi_master_bid           => h2f.bid(11 downto 0),--              .bid
      hps_h2f_axi_master_bresp         => h2f.bresp,--            .bresp
      hps_h2f_axi_master_bvalid        => h2f.bvalid,--bvalid
      hps_h2f_axi_master_bready        => h2f.bready,--.bready
      hps_h2f_axi_master_arid          => h2f.arid(11 downto 0),--  .arid
      hps_h2f_axi_master_araddr        => hps_h2f_axi_master_araddr,--.araddr
      hps_h2f_axi_master_arlen         => h2f.arlen,-- .arlen
      hps_h2f_axi_master_arsize        => h2f.arsize,--.arsize
      hps_h2f_axi_master_arburst       => h2f.arburst,--arburst
      hps_h2f_axi_master_arlock        => h2f.arlock,-- .arlock
      hps_h2f_axi_master_arcache       => h2f.arcache,--arcache
      hps_h2f_axi_master_arprot        => h2f.arprot,--.arprot
      hps_h2f_axi_master_arvalid       => h2f.arvalid,--arvalid
      hps_h2f_axi_master_arready       => h2f.rready,--rready
      hps_h2f_axi_master_rid           => h2f.rid(11 downto 0),--              .rid
      hps_h2f_axi_master_rdata         => h2f.rdata(31 downto 0),--            .rdata
      hps_h2f_axi_master_rresp         => h2f.rresp,--            .rresp
      hps_h2f_axi_master_rlast         => h2f.rlast,--.rlast
      hps_h2f_axi_master_rvalid        => h2f.rvalid,--rvalid
      hps_h2f_axi_master_rready        => h2f.rready, --rready
      hps_f2h_irq1_irq                 => (others => 'X'),   --         hps_f2h_irq1.irq
      hps_f2h_irq0_irq                 => (others => 'X'),   --         hps_f2h_irq0.irq
      hps_f2h_axi_slave_awid             => f2h.awid(7 downto 0),--hps_f2h_axi_slave.awid
      hps_f2h_axi_slave_awaddr           => f2h.awaddr(31 downto 0),--.awaddr
      hps_f2h_axi_slave_awlen            => f2h.awlen,-- .awlen
      hps_f2h_axi_slave_awsize           => f2h.awsize,--.awsize
      hps_f2h_axi_slave_awburst          => f2h.awburst,--awburst
      hps_f2h_axi_slave_awlock           => f2h.awlock,--.awlock
      hps_f2h_axi_slave_awcache          => f2h.awcache,--awcache
      hps_f2h_axi_slave_awprot           => f2h.awprot,--.awprot
      hps_f2h_axi_slave_awvalid          => f2h.awvalid,--awvalid
      hps_f2h_axi_slave_awready          => f2h.awready,--wready
      hps_f2h_axi_slave_wid              => f2h.wid(7 downto 0),--   .wid
      hps_f2h_axi_slave_wdata            => f2h.wdata,-- .wdata
      hps_f2h_axi_slave_wstrb            => f2h.wstrb,-- .wstrb
      hps_f2h_axi_slave_wlast            => f2h.wlast,-- .wlast
      hps_f2h_axi_slave_wvalid           => f2h.wvalid,--.wvalid
      hps_f2h_axi_slave_wready           => f2h.wready,--wready
      hps_f2h_axi_slave_bid              => f2h.bid(7 downto 0),--              .bid
      hps_f2h_axi_slave_bresp            => f2h.bresp,--            .bresp
      hps_f2h_axi_slave_bvalid           => f2h.bvalid,--bvalid
      hps_f2h_axi_slave_bready           => f2h.bready,--.bready
      hps_f2h_axi_slave_arid             => f2h.arid(7 downto 0),--  .arid
      hps_f2h_axi_slave_araddr           => f2h.araddr(31 downto 0),--.araddr
      hps_f2h_axi_slave_arlen            => f2h.arlen,-- .arlen
      hps_f2h_axi_slave_arsize           => f2h.arsize,--.arsize
      hps_f2h_axi_slave_arburst          => f2h.arburst,--arburst
      hps_f2h_axi_slave_arlock           => f2h.arlock,-- .arlock
      hps_f2h_axi_slave_arcache          => f2h.arcache,--arcache
      hps_f2h_axi_slave_arprot           => f2h.arprot,--.arprot
      hps_f2h_axi_slave_arvalid          => f2h.arvalid,--arvalid
      hps_f2h_axi_slave_arready          => f2h.arready,--rready
      hps_f2h_axi_slave_rid              => f2h.rid(7 downto 0),--              .rid
      hps_f2h_axi_slave_rdata            => f2h.rdata,--            .rdata
      hps_f2h_axi_slave_rresp            => f2h.rresp,--            .rresp
      hps_f2h_axi_slave_rlast            => f2h.rlast,--.rlast
      hps_f2h_axi_slave_rvalid           => f2h.rvalid,--rvalid
      hps_f2h_axi_slave_rready           => f2h.rready, --rready
      hps_h2f_50mhz_clock_clk            => hps_clock_50mhz           --  hps_h2f_50mhz_clock.clk
    );

-----------------------------------------------------------------------------
-- Other
-----------------------------------------------------------------------------

-- pragma translate_off
  rep: if USE_AHBREP/=0 generate
    ahbrep0: ahbrep
      generic map (hindex => 6, haddr => 16#200#)
      port map (rstn,clkm,ahbsi,ahbso(6));
  end generate;

  x : report_version
  generic map (
   msg1 => "LEON3 Altera Cyclone V SX SoC MitySOM 5CSX Demonstration design",
   msg2 => "GRLIB Version " & tost(LIBVHDL_VERSION/1000) & "." & tost((LIBVHDL_VERSION mod 1000)/100)
      & "." & tost(LIBVHDL_VERSION mod 100) & ", build " & tost(LIBVHDL_BUILD),
   msg3 => "Target technology: " & tech_table(fabtech) & ",  memory library: " & tech_table(memtech),
   mdel => 1
  );
-- pragma translate_on
 -----------------------------------------------------------------------
 ---  Drive unused bus elements  ---------------------------------------
 -----------------------------------------------------------------------

  nam1 : for i in (maxahbs+1) to NAHBMST-1 generate
    ahbmo(i) <= ahbm_none;
  end generate;
end;

