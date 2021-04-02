transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/Expt2/scan_chain_files/scan_reg.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/Expt2/scan_chain_files/scan_chain.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/Expt2/scan_chain_files/TopLevel.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/Expt2/code/DUT.vhdl}
vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/Expt2/code/mu1.vhd}

vcom -93 -work work {/home/student/Documents/EE_214/EE-214-Digital-Lab/Expt2/code/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
