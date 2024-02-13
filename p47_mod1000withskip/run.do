#environment creation
vlib work

#compilation

vlog mod1000skip.v
vlog mod1000skip_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do

run -all
