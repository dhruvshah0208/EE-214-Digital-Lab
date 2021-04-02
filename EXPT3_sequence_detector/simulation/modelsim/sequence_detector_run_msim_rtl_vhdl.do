transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT3_sequence_detector/Code/DUT.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT3_sequence_detector/Code/D_FF.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT3_sequence_detector/Code/combinational_circuit.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT3_sequence_detector/Code/top_level.vhd}

vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT3_sequence_detector/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
