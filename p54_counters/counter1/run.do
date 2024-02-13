#environment creation
vlib work

#compilation

#vlog counter1.v +define+M1

vlog counter1.v +define+M2
vlog counter1_tb.v +acc



#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
