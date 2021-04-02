transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/toplevel.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/ripple_carry_adder.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/mux_2_bit.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/Gates.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/DUT.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/decimal_adjust.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/DCR_A.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/BCD_check.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/BCD_ADD.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/4bit_mux.vhd}
vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/code/Full_Adder.vhdl}

vcom -93 -work work {/home/student/Documents/EE_214/EE_214_Digital_Lab/midsem_2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
