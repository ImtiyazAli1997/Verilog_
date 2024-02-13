#environment creation
vlib work

#compilation

vlog mod30.v
vlog mod30_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do

run -all
