transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/Gates.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/ripple_carry_adder.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/mux_2_bit.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/BCD_check.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/decimal_adjust.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/DUT.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/4bit_mux.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/BCD_ADD.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/DCR_A.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/toplevel.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/midsem/code/Full_Adder.vhdl}

