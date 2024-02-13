#environment creation
vlib work

#compilation

vlog -sv mod5_mod6.v 


vlog -sv mod5_mod6_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
