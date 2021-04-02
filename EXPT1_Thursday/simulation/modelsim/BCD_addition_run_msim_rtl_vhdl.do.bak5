transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/standard code files/4bit_ripple_carry_adder.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/standard code files/Gates.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/standard code files/DUT.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/codes/BCD_check.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/codes/decimal_adjust.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/codes/mux_2_bit.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/standard code files/Full_Adder.vhdl}

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/EXPT1_Thursday/standard code files/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
