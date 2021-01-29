transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/dhruv/Documents/EE 214/8bit_combo_counter/Gates.vhdl}
vcom -93 -work work {/home/dhruv/Documents/EE 214/8bit_combo_counter/DUT.vhdl}
vcom -93 -work work {/home/dhruv/Documents/EE 214/8bit_combo_counter/Full_Adder.vhdl}
vcom -93 -work work {/home/dhruv/Documents/EE 214/8bit_combo_counter/combo_8_counter.vhd}

vcom -93 -work work {/home/dhruv/Documents/EE 214/8bit_combo_counter/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
