## Generated SDC file "leon3mp_quartus.out.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

## DATE    "Thu Sep 14 19:33:26 2017"

##
## DEVICE  "5CSXFC6C6U23C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 33.333 -waveform { 0.000 16.666 } [get_ports {altera_reserved_tck}]
create_clock -name {CLK2DDR} -period 10.000 -waveform { 0.000 5.000 } [get_ports {CLK2DDR}]
create_clock -name {FPGA_DDR_DQS0_P[0]_IN} -period 3.333 -waveform { 0.000 1.667 } [get_ports {FPGA_DDR_DQS0_P[0]}] -add
create_clock -name {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk} -period 20.000 -waveform { 0.000 10.000 } [get_pins -compatibility_mode {*|fpga_interfaces|clocks_resets|h2f_user1_clk}]
create_clock -name {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk} -period 2.500 -waveform { 1.875 3.125 } [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk}]
create_clock -name {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -period 2.500 -waveform { 0.000 1.250 } [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}]
create_clock -name {HPS_DDR_DQS_P[0]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR_DQS_P[0]}] -add
create_clock -name {HPS_DDR_DQS_P[1]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR_DQS_P[1]}] -add
create_clock -name {HPS_DDR_DQS_P[2]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR_DQS_P[2]}] -add
create_clock -name {HPS_DDR_DQS_P[3]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR_DQS_P[3]}] -add
create_clock -name {HPS_DDR_DQS_P[4]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {HPS_DDR_DQS_P[4]}] -add


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk} -source [get_ports {{CLK2DDR}}] -multiply_by 3000000 -divide_by 2000000 -master_clock {CLK2DDR} [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll1_phy~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk} -source [get_ports {{CLK2DDR}}] -multiply_by 3000000 -divide_by 1000000 -phase 270.000 -master_clock {CLK2DDR} [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk} -source [get_ports {{CLK2DDR}}] -multiply_by 3000000 -divide_by 1000000 -master_clock {CLK2DDR} [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk} -source [get_ports {{CLK2DDR}}] -multiply_by 3000000 -divide_by 2000000 -phase 247.000 -master_clock {CLK2DDR} [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll4~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk} -source [get_ports {{CLK2DDR}}] -multiply_by 3000000 -divide_by 6000000 -master_clock {CLK2DDR} [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk} -source [get_ports {{CLK2DDR}}] -multiply_by 3000000 -divide_by 12000000 -master_clock {CLK2DDR} [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock} -source [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}] -master_clock {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk} [get_registers {ddr3if0|ctrl0|ddr3ctrl1_inst|p0|umemphy|uio_pads|dq_ddio[*].ubidir_dq_dqs|altdq_dqs2_inst|dqs_enable_ctrl~DQSENABLEOUT_DFF}] 
create_generated_clock -name {FPGA_DDR_CK_P[0]} -source [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}] -master_clock {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk} [get_ports {FPGA_DDR_CK_P[0]}] 
create_generated_clock -name {FPGA_DDR_CK_N[0]} -source [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}] -master_clock {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk} -invert [get_ports {FPGA_DDR_CK_N[0]}] 
create_generated_clock -name {FPGA_DDR_DQS0_P[0]_OUT} -source [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}] -master_clock {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk} [get_ports {FPGA_DDR_DQS0_P[0]}] -add
create_generated_clock -name {FPGA_DDR_DQS0_N[0]_OUT} -source [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}] -master_clock {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk} [get_ports {FPGA_DDR_DQS0_N[0]}] 
create_generated_clock -name {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]} -source [get_pins {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|refclkin}] -duty_cycle 50/1 -multiply_by 14 -divide_by 2 -master_clock {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk} [get_pins {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 5 -master_clock {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]} [get_pins {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_registers {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[*].ubidir_dq_dqs|altdq_dqs2_inst|dqs_enable_ctrl~DQSENABLEOUT_DFF}] 
create_generated_clock -name {HPS_DDR_CK_P} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_CK_P}] 
create_generated_clock -name {HPS_DDR_CK_N} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -invert [get_ports {HPS_DDR_CK_N}] 
create_generated_clock -name {HPS_DDR_DQS_P[0]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_P[0]}] -add
create_generated_clock -name {HPS_DDR_DQS_P[1]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_P[1]}] -add
create_generated_clock -name {HPS_DDR_DQS_P[2]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_P[2]}] -add
create_generated_clock -name {HPS_DDR_DQS_P[3]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_P[3]}] -add
create_generated_clock -name {HPS_DDR_DQS_P[4]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_P[4]}] -add
create_generated_clock -name {HPS_DDR_DQS_N[0]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_N[0]}] 
create_generated_clock -name {HPS_DDR_DQS_N[1]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_N[1]}] 
create_generated_clock -name {HPS_DDR_DQS_N[2]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_N[2]}] 
create_generated_clock -name {HPS_DDR_DQS_N[3]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_N[3]}] 
create_generated_clock -name {HPS_DDR_DQS_N[4]_OUT} -source [get_registers {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {HPS_DDR_DQS_N[4]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[4]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[3]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[2]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[1]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_DQS_P[0]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_N}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {HPS_DDR_CK_P}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|fpga_interfaces|clocks_resets|h2f_user1_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -rise_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -fall_to [get_clocks {CLK2DDR}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_N[0]}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {FPGA_DDR_CK_P[0]}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_CK_N}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {HPS_DDR_CK_P}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_CK_N[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {FPGA_DDR_CK_P[0]}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.220  
set_clock_uncertainty -rise_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.220  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.220  
set_clock_uncertainty -fall_from [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  0.220  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -rise_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|ddr3ctrl1_p0_sampling_clock}] -fall_to [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.220  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.220  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.220  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {clkgen0|\alt:v|sdclk_pll|\nosd:altpll0|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk}]  0.220  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_avl_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_addr_cmd_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_dq_write_clk}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -rise_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -fall_to [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {CLK2DDR}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {CLK2DDR}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {CLK2DDR}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {CLK2DDR}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {CLK2DDR}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -rise_to [get_clocks {CLK2DDR}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {CLK2DDR}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {CLK2DDR}] -fall_to [get_clocks {CLK2DDR}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[0]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[0]}]
set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[1]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[1]}]
set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[2]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[2]}]
set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[3]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[3]}]
set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[4]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[4]}]
set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[5]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[5]}]
set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[6]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[6]}]
set_input_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  0.115 [get_ports {FPGA_DDR_D[7]}]
set_input_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]  -0.246 [get_ports {FPGA_DDR_D[7]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[0]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[0]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[1]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[1]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[2]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[2]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[3]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[3]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[4]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[4]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[5]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[5]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[6]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[6]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  0.113 [get_ports {HPS_DDR_D[7]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_IN}]  -0.245 [get_ports {HPS_DDR_D[7]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[8]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[8]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[9]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[9]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[10]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[10]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[11]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[11]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[12]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[12]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[13]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[13]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[14]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[14]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  0.113 [get_ports {HPS_DDR_D[15]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_IN}]  -0.245 [get_ports {HPS_DDR_D[15]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[16]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[16]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[17]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[17]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[18]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[18]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[19]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[19]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[20]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[20]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[21]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[21]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[22]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[22]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  0.113 [get_ports {HPS_DDR_D[23]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_IN}]  -0.245 [get_ports {HPS_DDR_D[23]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[24]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[24]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[25]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[25]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[26]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[26]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[27]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[27]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[28]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[28]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[29]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[29]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[30]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[30]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  0.113 [get_ports {HPS_DDR_D[31]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_IN}]  -0.245 [get_ports {HPS_DDR_D[31]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[32]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[32]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[33]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[33]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[34]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[34]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[35]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[35]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[36]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[36]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[37]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[37]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[38]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[38]}]
set_input_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  0.113 [get_ports {HPS_DDR_D[39]}]
set_input_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_IN}]  -0.245 [get_ports {HPS_DDR_D[39]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[1]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[1]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[2]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[2]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[3]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[3]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[4]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[4]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[5]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[5]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[6]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[6]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[7]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[7]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[8]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[8]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[9]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[9]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[10]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[10]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[11]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[11]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[12]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[12]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[13]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[13]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_A[14]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_A[14]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_BAS[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_BAS[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_BAS[1]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_BAS[1]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_BAS[2]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_BAS[2]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_CAS_N[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_CAS_N[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_CKE[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_CKE[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_CS_N[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_CS_N[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_DQM0[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_DQM0[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_DQM0[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_DQM0[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  1.837 [get_ports {FPGA_DDR_DQS0_P[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  1.162 [get_ports {FPGA_DDR_DQS0_P[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[1]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[1]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[1]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[1]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[2]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[2]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[2]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[2]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[3]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[3]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[3]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[3]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[4]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[4]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[4]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[4]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[5]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[5]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[5]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[5]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[6]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[6]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[6]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[6]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[7]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_N[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[7]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  0.288 [get_ports {FPGA_DDR_D[7]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]  -0.272 [get_ports {FPGA_DDR_D[7]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_RAS_N[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_RAS_N[0]}]
set_output_delay -add_delay -max -clock [get_clocks {FPGA_DDR_CK_P[0]}]  0.304 [get_ports {FPGA_DDR_WE_N[0]}]
set_output_delay -add_delay -min -clock [get_clocks {FPGA_DDR_CK_P[0]}]  -0.249 [get_ports {FPGA_DDR_WE_N[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[5]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[5]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[6]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[6]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[7]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[7]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[8]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[8]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[9]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[9]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[10]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[10]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[11]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[11]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[12]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[12]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[13]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[13]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_A[14]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_A[14]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_BAS[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_BAS[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_BAS[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_BAS[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_BAS[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_BAS[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_CAS_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_CAS_N}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_CKE}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_CKE}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_CS0_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_CS0_N}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_DQM[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_DQM[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.495 [get_ports {HPS_DDR_DQS_P[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  0.698 [get_ports {HPS_DDR_DQS_P[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.495 [get_ports {HPS_DDR_DQS_P[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  0.698 [get_ports {HPS_DDR_DQS_P[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.495 [get_ports {HPS_DDR_DQS_P[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  0.698 [get_ports {HPS_DDR_DQS_P[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.495 [get_ports {HPS_DDR_DQS_P[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  0.698 [get_ports {HPS_DDR_DQS_P[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.495 [get_ports {HPS_DDR_DQS_P[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  0.698 [get_ports {HPS_DDR_DQS_P[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[0]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[0]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[1]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[1]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[2]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[2]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[3]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[3]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[4]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[4]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[5]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[5]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[5]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[5]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[6]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[6]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[6]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[6]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[7]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[7]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  0.286 [get_ports {HPS_DDR_D[7]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[0]_OUT}]  -0.272 [get_ports {HPS_DDR_D[7]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[8]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[8]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[8]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[8]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[9]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[9]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[9]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[9]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[10]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[10]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[10]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[10]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[11]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[11]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[11]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[11]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[12]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[12]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[12]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[12]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[13]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[13]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[13]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[13]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[14]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[14]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[14]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[14]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[15]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[15]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  0.286 [get_ports {HPS_DDR_D[15]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[1]_OUT}]  -0.272 [get_ports {HPS_DDR_D[15]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[16]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[16]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[16]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[16]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[17]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[17]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[17]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[17]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[18]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[18]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[18]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[18]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[19]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[19]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[19]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[19]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[20]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[20]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[20]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[20]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[21]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[21]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[21]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[21]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[22]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[22]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[22]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[22]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[23]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[23]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  0.286 [get_ports {HPS_DDR_D[23]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[2]_OUT}]  -0.272 [get_ports {HPS_DDR_D[23]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[24]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[24]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[24]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[24]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[25]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[25]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[25]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[25]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[26]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[26]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[26]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[26]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[27]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[27]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[27]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[27]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[28]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[28]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[28]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[28]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[29]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[29]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[29]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[29]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[30]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[30]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[30]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[30]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[31]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[31]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  0.286 [get_ports {HPS_DDR_D[31]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[3]_OUT}]  -0.272 [get_ports {HPS_DDR_D[31]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[32]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[32]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[32]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[32]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[33]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[33]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[33]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[33]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[34]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[34]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[34]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[34]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[35]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[35]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[35]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[35]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[36]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[36]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[36]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[36]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[37]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[37]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[37]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[37]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[38]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[38]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[38]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[38]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[39]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_N[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[39]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  0.286 [get_ports {HPS_DDR_D[39]}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_DQS_P[4]_OUT}]  -0.272 [get_ports {HPS_DDR_D[39]}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_RAS_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_RAS_N}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_DDR_WE_N}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_DDR_WE_N}]
set_output_delay -add_delay -max -clock [get_clocks {HPS_DDR_CK_P}]  1.555 [get_ports {HPS_ODT}]
set_output_delay -add_delay -min -clock [get_clocks {HPS_DDR_CK_P}]  1.040 [get_ports {HPS_ODT}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -physically_exclusive -group [get_clocks {FPGA_DDR_DQS0_P[0]_IN}] -group [get_clocks {FPGA_DDR_DQS0_P[0]_OUT FPGA_DDR_DQS0_N[0]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR_DQS_P[0]_IN}] -group [get_clocks {HPS_DDR_DQS_P[0]_OUT HPS_DDR_DQS_N[0]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR_DQS_P[1]_IN}] -group [get_clocks {HPS_DDR_DQS_P[1]_OUT HPS_DDR_DQS_N[1]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR_DQS_P[2]_IN}] -group [get_clocks {HPS_DDR_DQS_P[2]_OUT HPS_DDR_DQS_N[2]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR_DQS_P[3]_IN}] -group [get_clocks {HPS_DDR_DQS_P[3]_OUT HPS_DDR_DQS_N[3]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {HPS_DDR_DQS_P[4]_IN}] -group [get_clocks {HPS_DDR_DQS_P[4]_OUT HPS_DDR_DQS_N[4]_OUT}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -fall_from  [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  -to  [get_clocks {FPGA_DDR_CK_P[0]}]
set_false_path  -from  [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_afi_clk}]  -to  [get_clocks {FPGA_DDR_DQS0_P[0]_IN}]
set_false_path  -from  [get_clocks {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll_write_clk}]  -to  [get_clocks {*_IN}]
set_false_path  -fall_from  [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {HPS_DDR_CK_P}]
set_false_path  -from  [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {*_IN}]
set_false_path  -from  [get_clocks *]  -to  [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -from [get_registers {*altera_jtag_src_crosser:*|sink_data_buffer*}] -to [get_registers {*altera_jtag_src_crosser:*|src_data*}]
set_false_path -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*lfifo~LFIFO_OUT_RDEN_DFF}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}]
set_false_path -from [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll1_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll1_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll1_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*os_oct_ddio_oe~DFF}]
set_false_path -from [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll1_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*os_oe_reg}]
set_false_path -from [get_pins {ddr3if0|ctrl0|ddr3ctrl1_inst|pll0|pll1_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*phase_align_os~DFF*}]
set_false_path -to [get_ports {FPGA_DDR_DQS0_N[0]}]
set_false_path -to [get_ports {FPGA_DDR_CK_P[0]}]
set_false_path -to [get_ports {FPGA_DDR_CK_N[0]}]
set_false_path -to [get_ports {FPGA_DDR_RESET_N}]
set_false_path -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_read_fifo_reset[*]}] -to [get_clocks {FPGA_DDR_DQS0_P[0]_OUT}]
set_false_path -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|dqs_enable_ctrl~*}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|dqs_delay_chain~POSTAMBLE_DFF}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -fall_from [get_clocks {dev_hps:dev_hps_inst|dev_hps_hps:hps|dev_hps_hps_hps_io:hps_io|dev_hps_hps_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -to [get_ports {{HPS_DDR_A[0]} {HPS_DDR_A[10]} {HPS_DDR_A[11]} {HPS_DDR_A[12]} {HPS_DDR_A[13]} {HPS_DDR_A[14]} {HPS_DDR_A[1]} {HPS_DDR_A[2]} {HPS_DDR_A[3]} {HPS_DDR_A[4]} {HPS_DDR_A[5]} {HPS_DDR_A[6]} {HPS_DDR_A[7]} {HPS_DDR_A[8]} {HPS_DDR_A[9]} {HPS_DDR_BAS[0]} {HPS_DDR_BAS[1]} {HPS_DDR_BAS[2]} HPS_DDR_CAS_N HPS_DDR_CKE HPS_DDR_CS0_N HPS_DDR_RAS_N HPS_DDR_WE_N HPS_ODT}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*vfifo~INC_WR_PTR_DFF}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_OUT_RDATA_VALID_DFF}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~RD_LATENCY_DFF*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|*output_path_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|extra_output_pad_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*phase_align_os~DFF*}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~OUTPUT_DFF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -to [get_ports {HPS_DDR_DQS_N[0]}]
set_false_path -to [get_ports {HPS_DDR_DQS_N[1]}]
set_false_path -to [get_ports {HPS_DDR_DQS_N[2]}]
set_false_path -to [get_ports {HPS_DDR_DQS_N[3]}]
set_false_path -to [get_ports {HPS_DDR_DQS_N[4]}]
set_false_path -to [get_ports {HPS_DDR_CK_P}]
set_false_path -to [get_ports {HPS_DDR_CK_N}]
set_false_path -to [get_ports {HPS_DDR_RESET_N}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR_DQS_P[0]_OUT}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR_DQS_P[1]_OUT}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR_DQS_P[2]_OUT}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR_DQS_P[3]_OUT}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {HPS_DDR_DQS_P[4]_OUT}]
set_false_path -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_enable_ctrl~*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_delay_chain~POSTAMBLE_DFF}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from  [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -hold -end -from  [get_clocks {dev_hps_inst|hps|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -setup -end -from [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_mux_sel}] -to [remove_from_collection [get_keepers *] [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_mux_sel}]] 3
set_multicycle_path -hold -end -from [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_mux_sel}] -to [remove_from_collection [get_keepers *] [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_mux_sel}]] 2
set_multicycle_path -setup -end -to [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -hold -end -to [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -setup -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_read_latency_counter[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*lfifo~RD_LATENCY_DFF*}] 2
set_multicycle_path -hold -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_read_latency_counter[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*lfifo~RD_LATENCY_DFF*}] 1
set_multicycle_path -setup -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*umemphy|*ureset|*ureset_afi_clk|reset_reg[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*umemphy|*ureset|*ureset_afi_clk|reset_reg[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_reset_mem_stable}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_reset_mem_stable}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_read_fifo_reset[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|*read_fifo~WRITE_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_read_fifo_reset[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|*read_fifo~WRITE_ADDRESS_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_read_fifo_reset[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*s0|*sequencer_phy_mgr_inst|phy_read_fifo_reset[*]}] -to [get_keepers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 1
set_multicycle_path -setup -end -from [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*c0|*ng0|*alt_mem_ddrx_controller_top_inst|*controller_inst|*timing_param_inst|t_param_*}] -to [get_registers *] 2
set_multicycle_path -hold -end -from [get_registers {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*c0|*ng0|*alt_mem_ddrx_controller_top_inst|*controller_inst|*timing_param_inst|t_param_*}] -to [get_registers *] 1
set_multicycle_path -setup -end -to [get_registers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -hold -end -to [get_registers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -setup -end -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 1


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports {FPGA_DDR_D[0]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {FPGA_DDR_D[1]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {FPGA_DDR_D[2]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {FPGA_DDR_D[3]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {FPGA_DDR_D[4]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {FPGA_DDR_D[5]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {FPGA_DDR_D[6]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {FPGA_DDR_D[7]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[0]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[1]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[2]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[3]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[4]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[5]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[6]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[7]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[8]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[9]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[10]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[11]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[12]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[13]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[14]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[15]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[16]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[17]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[18]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[19]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[20]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[21]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[22]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[23]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[24]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[25]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[26]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[27]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[28]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[29]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[30]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[31]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[32]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[33]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[34]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[35]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[36]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[37]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[38]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {HPS_DDR_D[39]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_ports {FPGA_DDR_D[0]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {FPGA_DDR_D[1]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {FPGA_DDR_D[2]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {FPGA_DDR_D[3]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {FPGA_DDR_D[4]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {FPGA_DDR_D[5]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {FPGA_DDR_D[6]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {FPGA_DDR_D[7]}] -to [get_keepers {{*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:ddr3if0|*:ctrl0|*:ddr3ctrl1_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {HPS_DDR_D[0]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[1]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[2]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[3]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[4]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[5]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[6]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[7]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[8]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[9]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[10]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[11]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[12]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[13]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[14]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[15]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[16]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[17]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[18]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[19]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[20]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[21]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[22]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[23]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[24]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[25]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[26]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[27]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[28]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[29]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[30]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[31]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[32]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[33]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[34]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[35]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[36]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[37]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[38]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {HPS_DDR_D[39]}] -to [get_keepers {{*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:dev_hps_inst|*:hps|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250


#**************************************************************
# Set Input Transition
#**************************************************************

