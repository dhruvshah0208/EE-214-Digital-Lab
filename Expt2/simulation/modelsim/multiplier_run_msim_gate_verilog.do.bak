transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {multiplier.vo}

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/Expt2/code/Testbench.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -L maxv_ver -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
