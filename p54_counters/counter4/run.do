#environment creation
vlib work

#compilation

vlog counter4.v 
vlog counter4_tb.v +acc



#simulation
vsim work.tb
add wave -r *

#do wave.do
run -all
