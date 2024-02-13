#environment creation
vlib work

#compilation

vlog mod1000.v
vlog mod1000_tb.v +acc



#simulation
vsim work.tb
add wave -r *

#do wave.do

run -all
