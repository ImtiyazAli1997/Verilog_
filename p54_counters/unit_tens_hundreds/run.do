#environment creation
vlib work

#compilation

vlog UTH.v 
vlog UTH_tb.v +acc



#simulation
vsim work.tb
add wave -r *

#do wave.do
run -all
