transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Sequence_Generator/Gates.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Sequence_Generator/DUT.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Sequence_Generator/DFlipFlop.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Sequence_Generator/SequenceGenerator.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Sequence_Generator/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
