#environment creation
vlib work

#compilation
vlog mod5.v	+acc
vlog mod5_tb.v +acc

#simulation
vsim work.tb
#add wave -r *

do wave_p19.do
run -all
