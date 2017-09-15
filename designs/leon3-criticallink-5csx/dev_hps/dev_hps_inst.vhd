	component dev_hps is
		port (
			bus_clock_clk                    : in    std_logic                     := 'X';             -- clk
			bus_reset_reset_n                : in    std_logic                     := 'X';             -- reset_n
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
			hps_f2h_irq0_irq                 : in    std_logic_vector(31 downto 0) := (others => 'X'); -- irq
			hps_f2h_irq1_irq                 : in    std_logic_vector(31 downto 0) := (others => 'X'); -- irq
			hps_h2f_100mhz_clock_clk         : out   std_logic;                                        -- clk
			hps_h2f_50mhz_clock_clk          : out   std_logic;                                        -- clk
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
			hps_h2f_reset_reset_n            : out   std_logic;                                        -- reset_n
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
			hps_io_hps_io_can1_inst_RX       : in    std_logic                     := 'X';             -- hps_io_can1_inst_RX
			hps_io_hps_io_can1_inst_TX       : out   std_logic;                                        -- hps_io_can1_inst_TX
			hps_io_hps_io_gpio_inst_GPIO00   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO00
			hps_io_hps_io_gpio_inst_GPIO09   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
			hps_io_hps_io_gpio_inst_GPIO28   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO28
			hps_io_hps_io_gpio_inst_GPIO40   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
			hps_io_hps_io_gpio_inst_GPIO41   : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO41
			hps_io_hps_io_gpio_inst_LOANIO37 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO37
			hps_io_hps_io_gpio_inst_LOANIO48 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO48
			hps_io_hps_io_gpio_inst_LOANIO49 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO49
			hps_io_hps_io_gpio_inst_LOANIO50 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO50
			hps_loan_io_in                   : out   std_logic_vector(66 downto 0);                    -- in
			hps_loan_io_out                  : in    std_logic_vector(66 downto 0) := (others => 'X'); -- out
			hps_loan_io_oe                   : in    std_logic_vector(66 downto 0) := (others => 'X')  -- oe
		);
	end component dev_hps;

	u0 : component dev_hps
		port map (
			bus_clock_clk                    => CONNECTED_TO_bus_clock_clk,                    --            bus_clock.clk
			bus_reset_reset_n                => CONNECTED_TO_bus_reset_reset_n,                --            bus_reset.reset_n
			hps_ddr_mem_a                    => CONNECTED_TO_hps_ddr_mem_a,                    --              hps_ddr.mem_a
			hps_ddr_mem_ba                   => CONNECTED_TO_hps_ddr_mem_ba,                   --                     .mem_ba
			hps_ddr_mem_ck                   => CONNECTED_TO_hps_ddr_mem_ck,                   --                     .mem_ck
			hps_ddr_mem_ck_n                 => CONNECTED_TO_hps_ddr_mem_ck_n,                 --                     .mem_ck_n
			hps_ddr_mem_cke                  => CONNECTED_TO_hps_ddr_mem_cke,                  --                     .mem_cke
			hps_ddr_mem_cs_n                 => CONNECTED_TO_hps_ddr_mem_cs_n,                 --                     .mem_cs_n
			hps_ddr_mem_ras_n                => CONNECTED_TO_hps_ddr_mem_ras_n,                --                     .mem_ras_n
			hps_ddr_mem_cas_n                => CONNECTED_TO_hps_ddr_mem_cas_n,                --                     .mem_cas_n
			hps_ddr_mem_we_n                 => CONNECTED_TO_hps_ddr_mem_we_n,                 --                     .mem_we_n
			hps_ddr_mem_reset_n              => CONNECTED_TO_hps_ddr_mem_reset_n,              --                     .mem_reset_n
			hps_ddr_mem_dq                   => CONNECTED_TO_hps_ddr_mem_dq,                   --                     .mem_dq
			hps_ddr_mem_dqs                  => CONNECTED_TO_hps_ddr_mem_dqs,                  --                     .mem_dqs
			hps_ddr_mem_dqs_n                => CONNECTED_TO_hps_ddr_mem_dqs_n,                --                     .mem_dqs_n
			hps_ddr_mem_odt                  => CONNECTED_TO_hps_ddr_mem_odt,                  --                     .mem_odt
			hps_ddr_mem_dm                   => CONNECTED_TO_hps_ddr_mem_dm,                   --                     .mem_dm
			hps_ddr_oct_rzqin                => CONNECTED_TO_hps_ddr_oct_rzqin,                --                     .oct_rzqin
			hps_f2h_axi_slave_awid           => CONNECTED_TO_hps_f2h_axi_slave_awid,           --    hps_f2h_axi_slave.awid
			hps_f2h_axi_slave_awaddr         => CONNECTED_TO_hps_f2h_axi_slave_awaddr,         --                     .awaddr
			hps_f2h_axi_slave_awlen          => CONNECTED_TO_hps_f2h_axi_slave_awlen,          --                     .awlen
			hps_f2h_axi_slave_awsize         => CONNECTED_TO_hps_f2h_axi_slave_awsize,         --                     .awsize
			hps_f2h_axi_slave_awburst        => CONNECTED_TO_hps_f2h_axi_slave_awburst,        --                     .awburst
			hps_f2h_axi_slave_awlock         => CONNECTED_TO_hps_f2h_axi_slave_awlock,         --                     .awlock
			hps_f2h_axi_slave_awcache        => CONNECTED_TO_hps_f2h_axi_slave_awcache,        --                     .awcache
			hps_f2h_axi_slave_awprot         => CONNECTED_TO_hps_f2h_axi_slave_awprot,         --                     .awprot
			hps_f2h_axi_slave_awvalid        => CONNECTED_TO_hps_f2h_axi_slave_awvalid,        --                     .awvalid
			hps_f2h_axi_slave_awready        => CONNECTED_TO_hps_f2h_axi_slave_awready,        --                     .awready
			hps_f2h_axi_slave_awuser         => CONNECTED_TO_hps_f2h_axi_slave_awuser,         --                     .awuser
			hps_f2h_axi_slave_wid            => CONNECTED_TO_hps_f2h_axi_slave_wid,            --                     .wid
			hps_f2h_axi_slave_wdata          => CONNECTED_TO_hps_f2h_axi_slave_wdata,          --                     .wdata
			hps_f2h_axi_slave_wstrb          => CONNECTED_TO_hps_f2h_axi_slave_wstrb,          --                     .wstrb
			hps_f2h_axi_slave_wlast          => CONNECTED_TO_hps_f2h_axi_slave_wlast,          --                     .wlast
			hps_f2h_axi_slave_wvalid         => CONNECTED_TO_hps_f2h_axi_slave_wvalid,         --                     .wvalid
			hps_f2h_axi_slave_wready         => CONNECTED_TO_hps_f2h_axi_slave_wready,         --                     .wready
			hps_f2h_axi_slave_bid            => CONNECTED_TO_hps_f2h_axi_slave_bid,            --                     .bid
			hps_f2h_axi_slave_bresp          => CONNECTED_TO_hps_f2h_axi_slave_bresp,          --                     .bresp
			hps_f2h_axi_slave_bvalid         => CONNECTED_TO_hps_f2h_axi_slave_bvalid,         --                     .bvalid
			hps_f2h_axi_slave_bready         => CONNECTED_TO_hps_f2h_axi_slave_bready,         --                     .bready
			hps_f2h_axi_slave_arid           => CONNECTED_TO_hps_f2h_axi_slave_arid,           --                     .arid
			hps_f2h_axi_slave_araddr         => CONNECTED_TO_hps_f2h_axi_slave_araddr,         --                     .araddr
			hps_f2h_axi_slave_arlen          => CONNECTED_TO_hps_f2h_axi_slave_arlen,          --                     .arlen
			hps_f2h_axi_slave_arsize         => CONNECTED_TO_hps_f2h_axi_slave_arsize,         --                     .arsize
			hps_f2h_axi_slave_arburst        => CONNECTED_TO_hps_f2h_axi_slave_arburst,        --                     .arburst
			hps_f2h_axi_slave_arlock         => CONNECTED_TO_hps_f2h_axi_slave_arlock,         --                     .arlock
			hps_f2h_axi_slave_arcache        => CONNECTED_TO_hps_f2h_axi_slave_arcache,        --                     .arcache
			hps_f2h_axi_slave_arprot         => CONNECTED_TO_hps_f2h_axi_slave_arprot,         --                     .arprot
			hps_f2h_axi_slave_arvalid        => CONNECTED_TO_hps_f2h_axi_slave_arvalid,        --                     .arvalid
			hps_f2h_axi_slave_arready        => CONNECTED_TO_hps_f2h_axi_slave_arready,        --                     .arready
			hps_f2h_axi_slave_aruser         => CONNECTED_TO_hps_f2h_axi_slave_aruser,         --                     .aruser
			hps_f2h_axi_slave_rid            => CONNECTED_TO_hps_f2h_axi_slave_rid,            --                     .rid
			hps_f2h_axi_slave_rdata          => CONNECTED_TO_hps_f2h_axi_slave_rdata,          --                     .rdata
			hps_f2h_axi_slave_rresp          => CONNECTED_TO_hps_f2h_axi_slave_rresp,          --                     .rresp
			hps_f2h_axi_slave_rlast          => CONNECTED_TO_hps_f2h_axi_slave_rlast,          --                     .rlast
			hps_f2h_axi_slave_rvalid         => CONNECTED_TO_hps_f2h_axi_slave_rvalid,         --                     .rvalid
			hps_f2h_axi_slave_rready         => CONNECTED_TO_hps_f2h_axi_slave_rready,         --                     .rready
			hps_f2h_irq0_irq                 => CONNECTED_TO_hps_f2h_irq0_irq,                 --         hps_f2h_irq0.irq
			hps_f2h_irq1_irq                 => CONNECTED_TO_hps_f2h_irq1_irq,                 --         hps_f2h_irq1.irq
			hps_h2f_100mhz_clock_clk         => CONNECTED_TO_hps_h2f_100mhz_clock_clk,         -- hps_h2f_100mhz_clock.clk
			hps_h2f_50mhz_clock_clk          => CONNECTED_TO_hps_h2f_50mhz_clock_clk,          --  hps_h2f_50mhz_clock.clk
			hps_h2f_axi_master_awid          => CONNECTED_TO_hps_h2f_axi_master_awid,          --   hps_h2f_axi_master.awid
			hps_h2f_axi_master_awaddr        => CONNECTED_TO_hps_h2f_axi_master_awaddr,        --                     .awaddr
			hps_h2f_axi_master_awlen         => CONNECTED_TO_hps_h2f_axi_master_awlen,         --                     .awlen
			hps_h2f_axi_master_awsize        => CONNECTED_TO_hps_h2f_axi_master_awsize,        --                     .awsize
			hps_h2f_axi_master_awburst       => CONNECTED_TO_hps_h2f_axi_master_awburst,       --                     .awburst
			hps_h2f_axi_master_awlock        => CONNECTED_TO_hps_h2f_axi_master_awlock,        --                     .awlock
			hps_h2f_axi_master_awcache       => CONNECTED_TO_hps_h2f_axi_master_awcache,       --                     .awcache
			hps_h2f_axi_master_awprot        => CONNECTED_TO_hps_h2f_axi_master_awprot,        --                     .awprot
			hps_h2f_axi_master_awvalid       => CONNECTED_TO_hps_h2f_axi_master_awvalid,       --                     .awvalid
			hps_h2f_axi_master_awready       => CONNECTED_TO_hps_h2f_axi_master_awready,       --                     .awready
			hps_h2f_axi_master_wid           => CONNECTED_TO_hps_h2f_axi_master_wid,           --                     .wid
			hps_h2f_axi_master_wdata         => CONNECTED_TO_hps_h2f_axi_master_wdata,         --                     .wdata
			hps_h2f_axi_master_wstrb         => CONNECTED_TO_hps_h2f_axi_master_wstrb,         --                     .wstrb
			hps_h2f_axi_master_wlast         => CONNECTED_TO_hps_h2f_axi_master_wlast,         --                     .wlast
			hps_h2f_axi_master_wvalid        => CONNECTED_TO_hps_h2f_axi_master_wvalid,        --                     .wvalid
			hps_h2f_axi_master_wready        => CONNECTED_TO_hps_h2f_axi_master_wready,        --                     .wready
			hps_h2f_axi_master_bid           => CONNECTED_TO_hps_h2f_axi_master_bid,           --                     .bid
			hps_h2f_axi_master_bresp         => CONNECTED_TO_hps_h2f_axi_master_bresp,         --                     .bresp
			hps_h2f_axi_master_bvalid        => CONNECTED_TO_hps_h2f_axi_master_bvalid,        --                     .bvalid
			hps_h2f_axi_master_bready        => CONNECTED_TO_hps_h2f_axi_master_bready,        --                     .bready
			hps_h2f_axi_master_arid          => CONNECTED_TO_hps_h2f_axi_master_arid,          --                     .arid
			hps_h2f_axi_master_araddr        => CONNECTED_TO_hps_h2f_axi_master_araddr,        --                     .araddr
			hps_h2f_axi_master_arlen         => CONNECTED_TO_hps_h2f_axi_master_arlen,         --                     .arlen
			hps_h2f_axi_master_arsize        => CONNECTED_TO_hps_h2f_axi_master_arsize,        --                     .arsize
			hps_h2f_axi_master_arburst       => CONNECTED_TO_hps_h2f_axi_master_arburst,       --                     .arburst
			hps_h2f_axi_master_arlock        => CONNECTED_TO_hps_h2f_axi_master_arlock,        --                     .arlock
			hps_h2f_axi_master_arcache       => CONNECTED_TO_hps_h2f_axi_master_arcache,       --                     .arcache
			hps_h2f_axi_master_arprot        => CONNECTED_TO_hps_h2f_axi_master_arprot,        --                     .arprot
			hps_h2f_axi_master_arvalid       => CONNECTED_TO_hps_h2f_axi_master_arvalid,       --                     .arvalid
			hps_h2f_axi_master_arready       => CONNECTED_TO_hps_h2f_axi_master_arready,       --                     .arready
			hps_h2f_axi_master_rid           => CONNECTED_TO_hps_h2f_axi_master_rid,           --                     .rid
			hps_h2f_axi_master_rdata         => CONNECTED_TO_hps_h2f_axi_master_rdata,         --                     .rdata
			hps_h2f_axi_master_rresp         => CONNECTED_TO_hps_h2f_axi_master_rresp,         --                     .rresp
			hps_h2f_axi_master_rlast         => CONNECTED_TO_hps_h2f_axi_master_rlast,         --                     .rlast
			hps_h2f_axi_master_rvalid        => CONNECTED_TO_hps_h2f_axi_master_rvalid,        --                     .rvalid
			hps_h2f_axi_master_rready        => CONNECTED_TO_hps_h2f_axi_master_rready,        --                     .rready
			hps_h2f_reset_reset_n            => CONNECTED_TO_hps_h2f_reset_reset_n,            --        hps_h2f_reset.reset_n
			hps_io_hps_io_emac1_inst_TX_CLK  => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CLK,  --               hps_io.hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0    => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD0,    --                     .hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1    => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD1,    --                     .hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2    => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD2,    --                     .hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3    => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD3,    --                     .hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0    => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD0,    --                     .hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO    => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDIO,    --                     .hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC     => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDC,     --                     .hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL  => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CTL,  --                     .hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL  => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CTL,  --                     .hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK  => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CLK,  --                     .hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1    => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD1,    --                     .hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2    => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD2,    --                     .hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3    => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD3,    --                     .hps_io_emac1_inst_RXD3
			hps_io_hps_io_qspi_inst_SS1      => CONNECTED_TO_hps_io_hps_io_qspi_inst_SS1,      --                     .hps_io_qspi_inst_SS1
			hps_io_hps_io_qspi_inst_IO0      => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO0,      --                     .hps_io_qspi_inst_IO0
			hps_io_hps_io_qspi_inst_IO1      => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO1,      --                     .hps_io_qspi_inst_IO1
			hps_io_hps_io_qspi_inst_IO2      => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO2,      --                     .hps_io_qspi_inst_IO2
			hps_io_hps_io_qspi_inst_IO3      => CONNECTED_TO_hps_io_hps_io_qspi_inst_IO3,      --                     .hps_io_qspi_inst_IO3
			hps_io_hps_io_qspi_inst_SS0      => CONNECTED_TO_hps_io_hps_io_qspi_inst_SS0,      --                     .hps_io_qspi_inst_SS0
			hps_io_hps_io_qspi_inst_CLK      => CONNECTED_TO_hps_io_hps_io_qspi_inst_CLK,      --                     .hps_io_qspi_inst_CLK
			hps_io_hps_io_sdio_inst_CMD      => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD,      --                     .hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0       => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,       --                     .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1       => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,       --                     .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK      => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK,      --                     .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2       => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,       --                     .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3       => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,       --                     .hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D0,       --                     .hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D1,       --                     .hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D2,       --                     .hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D3,       --                     .hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D4,       --                     .hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D5,       --                     .hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D6,       --                     .hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7       => CONNECTED_TO_hps_io_hps_io_usb1_inst_D7,       --                     .hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK      => CONNECTED_TO_hps_io_hps_io_usb1_inst_CLK,      --                     .hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP      => CONNECTED_TO_hps_io_hps_io_usb1_inst_STP,      --                     .hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR      => CONNECTED_TO_hps_io_hps_io_usb1_inst_DIR,      --                     .hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT      => CONNECTED_TO_hps_io_hps_io_usb1_inst_NXT,      --                     .hps_io_usb1_inst_NXT
			hps_io_hps_io_uart0_inst_RX      => CONNECTED_TO_hps_io_hps_io_uart0_inst_RX,      --                     .hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX      => CONNECTED_TO_hps_io_hps_io_uart0_inst_TX,      --                     .hps_io_uart0_inst_TX
			hps_io_hps_io_i2c0_inst_SDA      => CONNECTED_TO_hps_io_hps_io_i2c0_inst_SDA,      --                     .hps_io_i2c0_inst_SDA
			hps_io_hps_io_i2c0_inst_SCL      => CONNECTED_TO_hps_io_hps_io_i2c0_inst_SCL,      --                     .hps_io_i2c0_inst_SCL
			hps_io_hps_io_i2c1_inst_SDA      => CONNECTED_TO_hps_io_hps_io_i2c1_inst_SDA,      --                     .hps_io_i2c1_inst_SDA
			hps_io_hps_io_i2c1_inst_SCL      => CONNECTED_TO_hps_io_hps_io_i2c1_inst_SCL,      --                     .hps_io_i2c1_inst_SCL
			hps_io_hps_io_can0_inst_RX       => CONNECTED_TO_hps_io_hps_io_can0_inst_RX,       --                     .hps_io_can0_inst_RX
			hps_io_hps_io_can0_inst_TX       => CONNECTED_TO_hps_io_hps_io_can0_inst_TX,       --                     .hps_io_can0_inst_TX
			hps_io_hps_io_can1_inst_RX       => CONNECTED_TO_hps_io_hps_io_can1_inst_RX,       --                     .hps_io_can1_inst_RX
			hps_io_hps_io_can1_inst_TX       => CONNECTED_TO_hps_io_hps_io_can1_inst_TX,       --                     .hps_io_can1_inst_TX
			hps_io_hps_io_gpio_inst_GPIO00   => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO00,   --                     .hps_io_gpio_inst_GPIO00
			hps_io_hps_io_gpio_inst_GPIO09   => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO09,   --                     .hps_io_gpio_inst_GPIO09
			hps_io_hps_io_gpio_inst_GPIO28   => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO28,   --                     .hps_io_gpio_inst_GPIO28
			hps_io_hps_io_gpio_inst_GPIO40   => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO40,   --                     .hps_io_gpio_inst_GPIO40
			hps_io_hps_io_gpio_inst_GPIO41   => CONNECTED_TO_hps_io_hps_io_gpio_inst_GPIO41,   --                     .hps_io_gpio_inst_GPIO41
			hps_io_hps_io_gpio_inst_LOANIO37 => CONNECTED_TO_hps_io_hps_io_gpio_inst_LOANIO37, --                     .hps_io_gpio_inst_LOANIO37
			hps_io_hps_io_gpio_inst_LOANIO48 => CONNECTED_TO_hps_io_hps_io_gpio_inst_LOANIO48, --                     .hps_io_gpio_inst_LOANIO48
			hps_io_hps_io_gpio_inst_LOANIO49 => CONNECTED_TO_hps_io_hps_io_gpio_inst_LOANIO49, --                     .hps_io_gpio_inst_LOANIO49
			hps_io_hps_io_gpio_inst_LOANIO50 => CONNECTED_TO_hps_io_hps_io_gpio_inst_LOANIO50, --                     .hps_io_gpio_inst_LOANIO50
			hps_loan_io_in                   => CONNECTED_TO_hps_loan_io_in,                   --          hps_loan_io.in
			hps_loan_io_out                  => CONNECTED_TO_hps_loan_io_out,                  --                     .out
			hps_loan_io_oe                   => CONNECTED_TO_hps_loan_io_oe                    --                     .oe
		);

