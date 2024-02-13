#environment creation
vlib work

#compilation

vlog -sv up_down5.v 
#vlog -sv up_down.v 

vlog -sv up_down_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
