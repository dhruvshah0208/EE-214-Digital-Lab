transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {NOTES.vho}

vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/EXPT4_NOTES/toneGenerator_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=NOTES_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  toneGenerator_tb

add wave *
view structure
view signals
run -all
