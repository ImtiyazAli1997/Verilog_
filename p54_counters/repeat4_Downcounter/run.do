#environment creation
vlib work

#compilation

vlog -sv DownCounter_repeat4.v


vlog -sv DownCounter_repeat4_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
