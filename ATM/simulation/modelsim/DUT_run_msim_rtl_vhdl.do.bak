transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Study_Materials/SEM3/EE214/Midsem/ATM/Gates.vhd}
vcom -93 -work work {D:/Study_Materials/SEM3/EE214/Midsem/ATM/div.vhd}
vcom -93 -work work {D:/Study_Materials/SEM3/EE214/Midsem/ATM/DUT.vhdl}
vcom -93 -work work {D:/Study_Materials/SEM3/EE214/Midsem/ATM/atm.vhd}
vcom -93 -work work {D:/Study_Materials/SEM3/EE214/Midsem/ATM/mux2to1.vhdl}

vcom -93 -work work {D:/Study_Materials/SEM3/EE214/Midsem/ATM/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
