#environment creation
vlib work

#compilation

vlog HMS_12.v 
vlog HMS_12_tb.v +acc



#simulation
vsim work.tb
add wave -r *

#do wave.do
run -all
