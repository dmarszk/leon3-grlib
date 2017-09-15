
module dev_hps (
	bus_clock_clk,
	bus_reset_reset_n,
	hps_ddr_mem_a,
	hps_ddr_mem_ba,
	hps_ddr_mem_ck,
	hps_ddr_mem_ck_n,
	hps_ddr_mem_cke,
	hps_ddr_mem_cs_n,
	hps_ddr_mem_ras_n,
	hps_ddr_mem_cas_n,
	hps_ddr_mem_we_n,
	hps_ddr_mem_reset_n,
	hps_ddr_mem_dq,
	hps_ddr_mem_dqs,
	hps_ddr_mem_dqs_n,
	hps_ddr_mem_odt,
	hps_ddr_mem_dm,
	hps_ddr_oct_rzqin,
	hps_f2h_axi_slave_awid,
	hps_f2h_axi_slave_awaddr,
	hps_f2h_axi_slave_awlen,
	hps_f2h_axi_slave_awsize,
	hps_f2h_axi_slave_awburst,
	hps_f2h_axi_slave_awlock,
	hps_f2h_axi_slave_awcache,
	hps_f2h_axi_slave_awprot,
	hps_f2h_axi_slave_awvalid,
	hps_f2h_axi_slave_awready,
	hps_f2h_axi_slave_awuser,
	hps_f2h_axi_slave_wid,
	hps_f2h_axi_slave_wdata,
	hps_f2h_axi_slave_wstrb,
	hps_f2h_axi_slave_wlast,
	hps_f2h_axi_slave_wvalid,
	hps_f2h_axi_slave_wready,
	hps_f2h_axi_slave_bid,
	hps_f2h_axi_slave_bresp,
	hps_f2h_axi_slave_bvalid,
	hps_f2h_axi_slave_bready,
	hps_f2h_axi_slave_arid,
	hps_f2h_axi_slave_araddr,
	hps_f2h_axi_slave_arlen,
	hps_f2h_axi_slave_arsize,
	hps_f2h_axi_slave_arburst,
	hps_f2h_axi_slave_arlock,
	hps_f2h_axi_slave_arcache,
	hps_f2h_axi_slave_arprot,
	hps_f2h_axi_slave_arvalid,
	hps_f2h_axi_slave_arready,
	hps_f2h_axi_slave_aruser,
	hps_f2h_axi_slave_rid,
	hps_f2h_axi_slave_rdata,
	hps_f2h_axi_slave_rresp,
	hps_f2h_axi_slave_rlast,
	hps_f2h_axi_slave_rvalid,
	hps_f2h_axi_slave_rready,
	hps_f2h_irq0_irq,
	hps_f2h_irq1_irq,
	hps_h2f_100mhz_clock_clk,
	hps_h2f_50mhz_clock_clk,
	hps_h2f_axi_master_awid,
	hps_h2f_axi_master_awaddr,
	hps_h2f_axi_master_awlen,
	hps_h2f_axi_master_awsize,
	hps_h2f_axi_master_awburst,
	hps_h2f_axi_master_awlock,
	hps_h2f_axi_master_awcache,
	hps_h2f_axi_master_awprot,
	hps_h2f_axi_master_awvalid,
	hps_h2f_axi_master_awready,
	hps_h2f_axi_master_wid,
	hps_h2f_axi_master_wdata,
	hps_h2f_axi_master_wstrb,
	hps_h2f_axi_master_wlast,
	hps_h2f_axi_master_wvalid,
	hps_h2f_axi_master_wready,
	hps_h2f_axi_master_bid,
	hps_h2f_axi_master_bresp,
	hps_h2f_axi_master_bvalid,
	hps_h2f_axi_master_bready,
	hps_h2f_axi_master_arid,
	hps_h2f_axi_master_araddr,
	hps_h2f_axi_master_arlen,
	hps_h2f_axi_master_arsize,
	hps_h2f_axi_master_arburst,
	hps_h2f_axi_master_arlock,
	hps_h2f_axi_master_arcache,
	hps_h2f_axi_master_arprot,
	hps_h2f_axi_master_arvalid,
	hps_h2f_axi_master_arready,
	hps_h2f_axi_master_rid,
	hps_h2f_axi_master_rdata,
	hps_h2f_axi_master_rresp,
	hps_h2f_axi_master_rlast,
	hps_h2f_axi_master_rvalid,
	hps_h2f_axi_master_rready,
	hps_h2f_reset_reset_n,
	hps_io_hps_io_emac1_inst_TX_CLK,
	hps_io_hps_io_emac1_inst_TXD0,
	hps_io_hps_io_emac1_inst_TXD1,
	hps_io_hps_io_emac1_inst_TXD2,
	hps_io_hps_io_emac1_inst_TXD3,
	hps_io_hps_io_emac1_inst_RXD0,
	hps_io_hps_io_emac1_inst_MDIO,
	hps_io_hps_io_emac1_inst_MDC,
	hps_io_hps_io_emac1_inst_RX_CTL,
	hps_io_hps_io_emac1_inst_TX_CTL,
	hps_io_hps_io_emac1_inst_RX_CLK,
	hps_io_hps_io_emac1_inst_RXD1,
	hps_io_hps_io_emac1_inst_RXD2,
	hps_io_hps_io_emac1_inst_RXD3,
	hps_io_hps_io_qspi_inst_SS1,
	hps_io_hps_io_qspi_inst_IO0,
	hps_io_hps_io_qspi_inst_IO1,
	hps_io_hps_io_qspi_inst_IO2,
	hps_io_hps_io_qspi_inst_IO3,
	hps_io_hps_io_qspi_inst_SS0,
	hps_io_hps_io_qspi_inst_CLK,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
	hps_io_hps_io_usb1_inst_D0,
	hps_io_hps_io_usb1_inst_D1,
	hps_io_hps_io_usb1_inst_D2,
	hps_io_hps_io_usb1_inst_D3,
	hps_io_hps_io_usb1_inst_D4,
	hps_io_hps_io_usb1_inst_D5,
	hps_io_hps_io_usb1_inst_D6,
	hps_io_hps_io_usb1_inst_D7,
	hps_io_hps_io_usb1_inst_CLK,
	hps_io_hps_io_usb1_inst_STP,
	hps_io_hps_io_usb1_inst_DIR,
	hps_io_hps_io_usb1_inst_NXT,
	hps_io_hps_io_uart0_inst_RX,
	hps_io_hps_io_uart0_inst_TX,
	hps_io_hps_io_i2c0_inst_SDA,
	hps_io_hps_io_i2c0_inst_SCL,
	hps_io_hps_io_i2c1_inst_SDA,
	hps_io_hps_io_i2c1_inst_SCL,
	hps_io_hps_io_can0_inst_RX,
	hps_io_hps_io_can0_inst_TX,
	hps_io_hps_io_can1_inst_RX,
	hps_io_hps_io_can1_inst_TX,
	hps_io_hps_io_gpio_inst_GPIO00,
	hps_io_hps_io_gpio_inst_GPIO09,
	hps_io_hps_io_gpio_inst_GPIO28,
	hps_io_hps_io_gpio_inst_GPIO40,
	hps_io_hps_io_gpio_inst_GPIO41,
	hps_io_hps_io_gpio_inst_LOANIO37,
	hps_io_hps_io_gpio_inst_LOANIO48,
	hps_io_hps_io_gpio_inst_LOANIO49,
	hps_io_hps_io_gpio_inst_LOANIO50,
	hps_loan_io_in,
	hps_loan_io_out,
	hps_loan_io_oe);	

	input		bus_clock_clk;
	input		bus_reset_reset_n;
	output	[14:0]	hps_ddr_mem_a;
	output	[2:0]	hps_ddr_mem_ba;
	output		hps_ddr_mem_ck;
	output		hps_ddr_mem_ck_n;
	output		hps_ddr_mem_cke;
	output		hps_ddr_mem_cs_n;
	output		hps_ddr_mem_ras_n;
	output		hps_ddr_mem_cas_n;
	output		hps_ddr_mem_we_n;
	output		hps_ddr_mem_reset_n;
	inout	[39:0]	hps_ddr_mem_dq;
	inout	[4:0]	hps_ddr_mem_dqs;
	inout	[4:0]	hps_ddr_mem_dqs_n;
	output		hps_ddr_mem_odt;
	output	[4:0]	hps_ddr_mem_dm;
	input		hps_ddr_oct_rzqin;
	input	[7:0]	hps_f2h_axi_slave_awid;
	input	[31:0]	hps_f2h_axi_slave_awaddr;
	input	[3:0]	hps_f2h_axi_slave_awlen;
	input	[2:0]	hps_f2h_axi_slave_awsize;
	input	[1:0]	hps_f2h_axi_slave_awburst;
	input	[1:0]	hps_f2h_axi_slave_awlock;
	input	[3:0]	hps_f2h_axi_slave_awcache;
	input	[2:0]	hps_f2h_axi_slave_awprot;
	input		hps_f2h_axi_slave_awvalid;
	output		hps_f2h_axi_slave_awready;
	input	[4:0]	hps_f2h_axi_slave_awuser;
	input	[7:0]	hps_f2h_axi_slave_wid;
	input	[31:0]	hps_f2h_axi_slave_wdata;
	input	[3:0]	hps_f2h_axi_slave_wstrb;
	input		hps_f2h_axi_slave_wlast;
	input		hps_f2h_axi_slave_wvalid;
	output		hps_f2h_axi_slave_wready;
	output	[7:0]	hps_f2h_axi_slave_bid;
	output	[1:0]	hps_f2h_axi_slave_bresp;
	output		hps_f2h_axi_slave_bvalid;
	input		hps_f2h_axi_slave_bready;
	input	[7:0]	hps_f2h_axi_slave_arid;
	input	[31:0]	hps_f2h_axi_slave_araddr;
	input	[3:0]	hps_f2h_axi_slave_arlen;
	input	[2:0]	hps_f2h_axi_slave_arsize;
	input	[1:0]	hps_f2h_axi_slave_arburst;
	input	[1:0]	hps_f2h_axi_slave_arlock;
	input	[3:0]	hps_f2h_axi_slave_arcache;
	input	[2:0]	hps_f2h_axi_slave_arprot;
	input		hps_f2h_axi_slave_arvalid;
	output		hps_f2h_axi_slave_arready;
	input	[4:0]	hps_f2h_axi_slave_aruser;
	output	[7:0]	hps_f2h_axi_slave_rid;
	output	[31:0]	hps_f2h_axi_slave_rdata;
	output	[1:0]	hps_f2h_axi_slave_rresp;
	output		hps_f2h_axi_slave_rlast;
	output		hps_f2h_axi_slave_rvalid;
	input		hps_f2h_axi_slave_rready;
	input	[31:0]	hps_f2h_irq0_irq;
	input	[31:0]	hps_f2h_irq1_irq;
	output		hps_h2f_100mhz_clock_clk;
	output		hps_h2f_50mhz_clock_clk;
	output	[11:0]	hps_h2f_axi_master_awid;
	output	[29:0]	hps_h2f_axi_master_awaddr;
	output	[3:0]	hps_h2f_axi_master_awlen;
	output	[2:0]	hps_h2f_axi_master_awsize;
	output	[1:0]	hps_h2f_axi_master_awburst;
	output	[1:0]	hps_h2f_axi_master_awlock;
	output	[3:0]	hps_h2f_axi_master_awcache;
	output	[2:0]	hps_h2f_axi_master_awprot;
	output		hps_h2f_axi_master_awvalid;
	input		hps_h2f_axi_master_awready;
	output	[11:0]	hps_h2f_axi_master_wid;
	output	[31:0]	hps_h2f_axi_master_wdata;
	output	[3:0]	hps_h2f_axi_master_wstrb;
	output		hps_h2f_axi_master_wlast;
	output		hps_h2f_axi_master_wvalid;
	input		hps_h2f_axi_master_wready;
	input	[11:0]	hps_h2f_axi_master_bid;
	input	[1:0]	hps_h2f_axi_master_bresp;
	input		hps_h2f_axi_master_bvalid;
	output		hps_h2f_axi_master_bready;
	output	[11:0]	hps_h2f_axi_master_arid;
	output	[29:0]	hps_h2f_axi_master_araddr;
	output	[3:0]	hps_h2f_axi_master_arlen;
	output	[2:0]	hps_h2f_axi_master_arsize;
	output	[1:0]	hps_h2f_axi_master_arburst;
	output	[1:0]	hps_h2f_axi_master_arlock;
	output	[3:0]	hps_h2f_axi_master_arcache;
	output	[2:0]	hps_h2f_axi_master_arprot;
	output		hps_h2f_axi_master_arvalid;
	input		hps_h2f_axi_master_arready;
	input	[11:0]	hps_h2f_axi_master_rid;
	input	[31:0]	hps_h2f_axi_master_rdata;
	input	[1:0]	hps_h2f_axi_master_rresp;
	input		hps_h2f_axi_master_rlast;
	input		hps_h2f_axi_master_rvalid;
	output		hps_h2f_axi_master_rready;
	output		hps_h2f_reset_reset_n;
	output		hps_io_hps_io_emac1_inst_TX_CLK;
	output		hps_io_hps_io_emac1_inst_TXD0;
	output		hps_io_hps_io_emac1_inst_TXD1;
	output		hps_io_hps_io_emac1_inst_TXD2;
	output		hps_io_hps_io_emac1_inst_TXD3;
	input		hps_io_hps_io_emac1_inst_RXD0;
	inout		hps_io_hps_io_emac1_inst_MDIO;
	output		hps_io_hps_io_emac1_inst_MDC;
	input		hps_io_hps_io_emac1_inst_RX_CTL;
	output		hps_io_hps_io_emac1_inst_TX_CTL;
	input		hps_io_hps_io_emac1_inst_RX_CLK;
	input		hps_io_hps_io_emac1_inst_RXD1;
	input		hps_io_hps_io_emac1_inst_RXD2;
	input		hps_io_hps_io_emac1_inst_RXD3;
	output		hps_io_hps_io_qspi_inst_SS1;
	inout		hps_io_hps_io_qspi_inst_IO0;
	inout		hps_io_hps_io_qspi_inst_IO1;
	inout		hps_io_hps_io_qspi_inst_IO2;
	inout		hps_io_hps_io_qspi_inst_IO3;
	output		hps_io_hps_io_qspi_inst_SS0;
	output		hps_io_hps_io_qspi_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
	inout		hps_io_hps_io_usb1_inst_D0;
	inout		hps_io_hps_io_usb1_inst_D1;
	inout		hps_io_hps_io_usb1_inst_D2;
	inout		hps_io_hps_io_usb1_inst_D3;
	inout		hps_io_hps_io_usb1_inst_D4;
	inout		hps_io_hps_io_usb1_inst_D5;
	inout		hps_io_hps_io_usb1_inst_D6;
	inout		hps_io_hps_io_usb1_inst_D7;
	input		hps_io_hps_io_usb1_inst_CLK;
	output		hps_io_hps_io_usb1_inst_STP;
	input		hps_io_hps_io_usb1_inst_DIR;
	input		hps_io_hps_io_usb1_inst_NXT;
	input		hps_io_hps_io_uart0_inst_RX;
	output		hps_io_hps_io_uart0_inst_TX;
	inout		hps_io_hps_io_i2c0_inst_SDA;
	inout		hps_io_hps_io_i2c0_inst_SCL;
	inout		hps_io_hps_io_i2c1_inst_SDA;
	inout		hps_io_hps_io_i2c1_inst_SCL;
	input		hps_io_hps_io_can0_inst_RX;
	output		hps_io_hps_io_can0_inst_TX;
	input		hps_io_hps_io_can1_inst_RX;
	output		hps_io_hps_io_can1_inst_TX;
	inout		hps_io_hps_io_gpio_inst_GPIO00;
	inout		hps_io_hps_io_gpio_inst_GPIO09;
	inout		hps_io_hps_io_gpio_inst_GPIO28;
	inout		hps_io_hps_io_gpio_inst_GPIO40;
	inout		hps_io_hps_io_gpio_inst_GPIO41;
	inout		hps_io_hps_io_gpio_inst_LOANIO37;
	inout		hps_io_hps_io_gpio_inst_LOANIO48;
	inout		hps_io_hps_io_gpio_inst_LOANIO49;
	inout		hps_io_hps_io_gpio_inst_LOANIO50;
	output	[66:0]	hps_loan_io_in;
	input	[66:0]	hps_loan_io_out;
	input	[66:0]	hps_loan_io_oe;
endmodule
