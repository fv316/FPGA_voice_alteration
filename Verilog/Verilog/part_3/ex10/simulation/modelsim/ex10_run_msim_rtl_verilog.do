transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+H:/VERI/part_3/spi2dac&adc_v3 {H:/VERI/part_3/spi2dac&adc_v3/spi2dac_v3.v}

