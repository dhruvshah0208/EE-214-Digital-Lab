transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT4_NOTES/code/toneGenerator2.vhd}

vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT4_NOTES/toneGenerator_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  toneGenerator_tb

add wave *
view structure
view signals
run -all
