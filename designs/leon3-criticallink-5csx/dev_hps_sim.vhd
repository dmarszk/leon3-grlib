------------------------------------------------------------------------------
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
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
library grlib;
use grlib.stdlib.all;
use grlib.stdio.all;


entity dev_hps is
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
end entity dev_hps;

architecture sim of dev_hps is
  signal clk_50mhz_gen : std_logic := '0';
  signal clk_100mhz_gen : std_logic := '0';
  signal hps_loan_io_vector : std_logic_vector(66 downto 0);

begin
  hps_ddr_mem_a                    <= (others => 'X');
  hps_ddr_mem_ba                   <= (others => 'X');
  hps_ddr_mem_ck                   <= 'X';
  hps_ddr_mem_ck_n                 <= 'X';
  hps_ddr_mem_cke                  <= 'X';
  hps_ddr_mem_cs_n                 <= 'X';
  hps_ddr_mem_ras_n                <= 'X';
  hps_ddr_mem_cas_n                <= 'X';
  hps_ddr_mem_we_n                 <= 'X';
  hps_ddr_mem_reset_n              <= 'X';
  hps_ddr_mem_odt                  <= 'X';
  hps_ddr_mem_dm                   <= (others => 'X');
  hps_io_hps_io_emac1_inst_TX_CLK  <= 'X';
  hps_io_hps_io_emac1_inst_TXD0    <= 'X';
  hps_io_hps_io_emac1_inst_TXD1    <= 'X';
  hps_io_hps_io_emac1_inst_TXD2    <= 'X';
  hps_io_hps_io_emac1_inst_TXD3    <= 'X';
  hps_io_hps_io_emac1_inst_MDC     <= 'X';
  hps_io_hps_io_emac1_inst_TX_CTL  <= 'X';
  hps_io_hps_io_qspi_inst_SS1      <= 'X';
  hps_io_hps_io_qspi_inst_SS0      <= 'X';
  hps_io_hps_io_qspi_inst_CLK      <= 'X';
  hps_io_hps_io_sdio_inst_CLK      <= 'X';
  hps_io_hps_io_usb1_inst_STP      <= 'X';
  hps_io_hps_io_uart0_inst_TX      <= 'X';
  hps_io_hps_io_can0_inst_TX       <= 'X';
  hps_h2f_reset_reset_n            <= '1';
  hps_h2f_axi_master_awid          <= (others => 'X');
  hps_h2f_axi_master_awaddr        <= (others => 'X');
  hps_h2f_axi_master_awlen         <= (others => 'X');
  hps_h2f_axi_master_awsize        <= (others => 'X');
  hps_h2f_axi_master_awburst       <= (others => 'X');
  hps_h2f_axi_master_awlock        <= (others => 'X');
  hps_h2f_axi_master_awcache       <= (others => 'X');
  hps_h2f_axi_master_awprot        <= (others => 'X');
  hps_h2f_axi_master_awvalid       <= 'X';
  hps_h2f_axi_master_wid           <= (others => 'X');
  hps_h2f_axi_master_wdata         <= (others => 'X');
  hps_h2f_axi_master_wstrb         <= (others => 'X');
  hps_h2f_axi_master_wlast         <= 'X';
  hps_h2f_axi_master_wvalid        <= 'X';
  hps_h2f_axi_master_bready        <= 'X';
  hps_h2f_axi_master_arid          <= (others => 'X');
  hps_h2f_axi_master_araddr        <= (others => 'X');
  hps_h2f_axi_master_arlen         <= (others => 'X');
  hps_h2f_axi_master_arsize        <= (others => 'X');
  hps_h2f_axi_master_arburst       <= (others => 'X');
  hps_h2f_axi_master_arlock        <= (others => 'X');
  hps_h2f_axi_master_arcache       <= (others => 'X');
  hps_h2f_axi_master_arprot        <= (others => 'X');
  hps_h2f_axi_master_arvalid       <= 'X';
  hps_h2f_axi_master_rready        <= 'X';
  hps_f2h_axi_slave_awready        <= 'X';
  hps_f2h_axi_slave_wready         <= 'X';
  hps_f2h_axi_slave_bid            <= (others => 'X');
  hps_f2h_axi_slave_bresp          <= (others => 'X');
  hps_f2h_axi_slave_bvalid         <= 'X';
  hps_f2h_axi_slave_arready        <= 'X';
  hps_f2h_axi_slave_rid            <= (others => 'X');
  hps_f2h_axi_slave_rdata          <= (others => 'X');
  hps_f2h_axi_slave_rresp          <= (others => 'X');
  hps_f2h_axi_slave_rlast          <= 'X';
  hps_f2h_axi_slave_rvalid         <= 'X';
  hps_h2f_gp_gp_out                <= (others => '0');
  -- deassert CPU reset
  hps_h2f_gp_gp_out(1) <= '1';
      
  clk_100mhz_gen <= not clk_100mhz_gen after 5 ns;
  clk_50mhz_gen <= not clk_50mhz_gen after 10 ns;
  
  hps_h2f_50mhz_clock_clk <= clk_50mhz_gen;
  hps_h2f_100mhz_clock_clk <= clk_100mhz_gen;
  
  hps_loan_io_vector <= (
    37 => hps_io_hps_io_gpio_inst_LOANIO37,
    40 => hps_io_hps_io_gpio_inst_LOANIO40,
    41 => hps_io_hps_io_gpio_inst_LOANIO41,
    48 => hps_io_hps_io_gpio_inst_LOANIO48,
    49 => hps_io_hps_io_gpio_inst_LOANIO49,
    50 => hps_io_hps_io_gpio_inst_LOANIO50,
    59 => hps_io_hps_io_gpio_inst_LOANIO59,
    60 => hps_io_hps_io_gpio_inst_LOANIO60,
    others => 'X'
  );
  
  assign_loaner_in_bus : for I in hps_loan_io_in'low to hps_loan_io_in'high generate
  begin
    hps_loan_io_in(I) <= hps_loan_io_vector(I) when hps_loan_io_oe(I) = '0' else 'X';
  end generate;
  

  hps_io_hps_io_gpio_inst_LOANIO37 <= hps_loan_io_out(37) when hps_loan_io_oe(37) = '1' else 'Z';
  hps_io_hps_io_gpio_inst_LOANIO40 <= hps_loan_io_out(40) when hps_loan_io_oe(40) = '1' else 'Z';
  hps_io_hps_io_gpio_inst_LOANIO41 <= hps_loan_io_out(41) when hps_loan_io_oe(41) = '1' else 'Z';
  hps_io_hps_io_gpio_inst_LOANIO48 <= hps_loan_io_out(48) when hps_loan_io_oe(48) = '1' else 'Z';
  hps_io_hps_io_gpio_inst_LOANIO49 <= hps_loan_io_out(49) when hps_loan_io_oe(49) = '1' else 'Z';
  hps_io_hps_io_gpio_inst_LOANIO50 <= hps_loan_io_out(50) when hps_loan_io_oe(50) = '1' else 'Z';
  hps_io_hps_io_gpio_inst_LOANIO59 <= hps_loan_io_out(59) when hps_loan_io_oe(59) = '1' else 'Z';
  hps_io_hps_io_gpio_inst_LOANIO60 <= hps_loan_io_out(60) when hps_loan_io_oe(60) = '1' else 'Z';
  
  
end;