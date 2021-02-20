transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/lab1_qn2_prime_mux/codes/prime_check_4_bit.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/lab1_qn2_prime_mux/codes/Gates.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/lab1_qn2_prime_mux/codes/DUT.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/lab1_qn2_prime_mux/codes/add_sub_4bit.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/lab1_qn2_prime_mux/codes/prime_mux.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/lab1_qn2_prime_mux/codes/Full_Adder.vhdl}

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/lab1_qn2_prime_mux/codes/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
