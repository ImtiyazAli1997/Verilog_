#environment creation
vlib work

#compilation

vlog counter3.v 
vlog counter3_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
