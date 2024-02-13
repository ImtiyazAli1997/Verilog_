#environment creation
vlib work

#compilation

vlog counter2.v 
vlog counter2_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
