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

