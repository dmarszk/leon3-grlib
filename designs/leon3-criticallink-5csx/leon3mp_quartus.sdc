# --- Detect if we're running in synthesis or STA

set sta_mode 0
if { $::TimeQuestInfo(nameofexecutable) == "quartus_sta" } {
        set sta_mode 1
} 

# --- Routine to constrain CDC to allow a maximum skew of one clock cycle
#     of the faster clock. For synthesis we just timing-ignore the CDC.

if { !$sta_mode } {
	proc constrain_cdc { clks1 per1 clks2 per2 } {
		set_clock_groups -asynchronous -group $clks1 -group $clks2
	}
} else {
	proc constrain_cdc { clks1 per1 clks2 per2 } {
		set_max_delay -from $clks1 -to $clks2 50.0
		set_max_delay -from $clks2 -to $clks1 50.0
		set_min_delay -from $clks1 -to $clks2 -20.0
		set_min_delay -from $clks2 -to $clks1 -20.0
		set minper [ expr { ($per1>$per2)?$per2:$per1 } ]
		set_max_skew -from_clock $clks1 -to_clock $clks2 $minper
		set_max_skew -from_clock $clks2 -to_clock $clks1 $minper
	}
}

#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3


#**************************************************************
# Create Clock
#**************************************************************

create_clock -period 10 [get_ports CLK2DDR]
# Create 1MHz clock on SCL pins to suppress warnings
create_clock -period 1000 [get_ports B7A_I2C0_SCL]
create_clock -period 1000 [get_ports I2C1_SCL]
# Create 60MHz (typical) clock on ULPI interface to suppress warnings
create_clock -period 166.667 [get_ports USB1_ULPI_CLK]


#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks


#**************************************************************
# Set Clock Latency
#**************************************************************


#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Clock Latency
#**************************************************************

derive_pll_clocks

set ahbclks [ get_clocks { clkgen0* } ]
set ddr_aficlk [ get_clocks { ddr3if0|*|pll_afi_clk } ]

constrain_cdc $ahbclks 10.0 $ddr_aficlk 6.0

if { $sta_mode } {
    # Timing-ignore reset synchronizers inside GRETH
    set_false_path -from [ get_registers "*ethc*|r.ctrl.reset *rstgen0|rstoutl" ] -to [ get_clocks enet*_clk ]
}
