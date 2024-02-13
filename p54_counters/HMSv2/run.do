#environment creation
vlib work

#compilation

vlog HMSv2.v 
vlog HMSVv2_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
