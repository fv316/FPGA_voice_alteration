# Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, the Altera Quartus Prime License Agreement,
# the Altera MegaCore Function License Agreement, or other 
# applicable license agreement, including, without limitation, 
# that your use is for the sole purpose of programming logic 
# devices manufactured by Altera and sold by Altera or its 
# authorized distributors.  Please refer to the applicable 
# agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: ex11.tcl
# Generated on: Mon Nov 27 11:00:50 2017

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "ex11"]} {
		puts "Project ex11 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists ex11]} {
		project_open -revision ex11 ex11
	} else {
		project_new -revision ex11 ex11
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSEMA5F31C6
	set_global_assignment -name TOP_LEVEL_ENTITY ex11_top
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 16.0.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "10:29:57  NOVEMBER 27, 2017"
	set_global_assignment -name LAST_QUARTUS_VERSION 16.0.0
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name VERILOG_FILE pwm.v
	set_global_assignment -name VERILOG_FILE ../ex10/div_by_5000.v
	set_global_assignment -name VERILOG_FILE ../spi2dac&adc_v3/spi2dac_v3.v
	set_global_assignment -name VERILOG_FILE ex11_top.v
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_location_assignment PIN_AF14 -to CLOCK_50
	set_location_assignment PIN_AJ20 -to PWM_OUT
	set_location_assignment PIN_AK21 -to DAC_LD
	set_location_assignment PIN_AD20 -to DAC_CS
	set_location_assignment PIN_AF20 -to DAC_SCK
	set_location_assignment PIN_AF21 -to ADC_SCK
	set_location_assignment PIN_AG21 -to ADC_SDI
	set_location_assignment PIN_AG20 -to ADC_CS
	set_location_assignment PIN_AG18 -to DAC_SDI
	set_location_assignment PIN_AJ21 -to ADC_SDO
	set_location_assignment PIN_Y17 -to OLED_CS
	set_location_assignment PIN_Y18 -to OLED_RST
	set_location_assignment PIN_AK18 -to OLED_DC
	set_location_assignment PIN_AJ19 -to OLED_CLK
	set_location_assignment PIN_AJ16 -to OLED_DATA
	set_location_assignment PIN_AE26 -to HEX0[0]
	set_location_assignment PIN_AE27 -to HEX0[1]
	set_location_assignment PIN_AE28 -to HEX0[2]
	set_location_assignment PIN_AG27 -to HEX0[3]
	set_location_assignment PIN_AF28 -to HEX0[4]
	set_location_assignment PIN_AG28 -to HEX0[5]
	set_location_assignment PIN_AH28 -to HEX0[6]
	set_location_assignment PIN_AJ29 -to HEX1[0]
	set_location_assignment PIN_AH29 -to HEX1[1]
	set_location_assignment PIN_AH30 -to HEX1[2]
	set_location_assignment PIN_AG30 -to HEX1[3]
	set_location_assignment PIN_AF29 -to HEX1[4]
	set_location_assignment PIN_AF30 -to HEX1[5]
	set_location_assignment PIN_AD27 -to HEX1[6]
	set_location_assignment PIN_AB23 -to HEX2[0]
	set_location_assignment PIN_AE29 -to HEX2[1]
	set_location_assignment PIN_AD29 -to HEX2[2]
	set_location_assignment PIN_AC28 -to HEX2[3]
	set_location_assignment PIN_AD30 -to HEX2[4]
	set_location_assignment PIN_AC29 -to HEX2[5]
	set_location_assignment PIN_AC30 -to HEX2[6]
	set_location_assignment PIN_AD26 -to HEX3[0]
	set_location_assignment PIN_AC27 -to HEX3[1]
	set_location_assignment PIN_AD25 -to HEX3[2]
	set_location_assignment PIN_AC25 -to HEX3[3]
	set_location_assignment PIN_AB28 -to HEX3[4]
	set_location_assignment PIN_AB25 -to HEX3[5]
	set_location_assignment PIN_AB22 -to HEX3[6]
	set_location_assignment PIN_AA24 -to HEX4[0]
	set_location_assignment PIN_Y23 -to HEX4[1]
	set_location_assignment PIN_Y24 -to HEX4[2]
	set_location_assignment PIN_W22 -to HEX4[3]
	set_location_assignment PIN_W24 -to HEX4[4]
	set_location_assignment PIN_V23 -to HEX4[5]
	set_location_assignment PIN_W25 -to HEX4[6]
	set_location_assignment PIN_V25 -to HEX5[0]
	set_location_assignment PIN_AA28 -to HEX5[1]
	set_location_assignment PIN_Y27 -to HEX5[2]
	set_location_assignment PIN_AB27 -to HEX5[3]
	set_location_assignment PIN_AB26 -to HEX5[4]
	set_location_assignment PIN_AA26 -to HEX5[5]
	set_location_assignment PIN_AA25 -to HEX5[6]
	set_location_assignment PIN_AA14 -to KEY[0]
	set_location_assignment PIN_AA15 -to KEY[1]
	set_location_assignment PIN_W15 -to KEY[2]
	set_location_assignment PIN_Y16 -to KEY[3]
	set_location_assignment PIN_V16 -to LEDR[0]
	set_location_assignment PIN_W16 -to LEDR[1]
	set_location_assignment PIN_V17 -to LEDR[2]
	set_location_assignment PIN_V18 -to LEDR[3]
	set_location_assignment PIN_W17 -to LEDR[4]
	set_location_assignment PIN_W19 -to LEDR[5]
	set_location_assignment PIN_Y19 -to LEDR[6]
	set_location_assignment PIN_W20 -to LEDR[7]
	set_location_assignment PIN_W21 -to LEDR[8]
	set_location_assignment PIN_Y21 -to LEDR[9]
	set_location_assignment PIN_AB12 -to SW[0]
	set_location_assignment PIN_AC12 -to SW[1]
	set_location_assignment PIN_AF9 -to SW[2]
	set_location_assignment PIN_AF10 -to SW[3]
	set_location_assignment PIN_AD11 -to SW[4]
	set_location_assignment PIN_AD12 -to SW[5]
	set_location_assignment PIN_AE11 -to SW[6]
	set_location_assignment PIN_AC9 -to SW[7]
	set_location_assignment PIN_AD10 -to SW[8]
	set_location_assignment PIN_AE12 -to SW[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to OLED_CS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to OLED_RST
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to OLED_DC
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to OLED_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to OLED_DATA
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PWM_OUT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DAC_LD
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DAC_CS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DAC_SCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SDI
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_CS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DAC_SDI
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SDO
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[9]
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}