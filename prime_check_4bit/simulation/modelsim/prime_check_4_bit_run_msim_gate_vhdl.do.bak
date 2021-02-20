transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {prime_check_4_bit.vho}

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/prime_check_4bit/codes/Testbench.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut_instance=prime_check_4_bit_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
