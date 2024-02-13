#environment creation
vlib work

#compilation

vlog mod16skip.v +define+M2
vlog mod16skip_tb.v +acc 



#simulation
vsim work.tb
#add wave -r *

do wave.do

run -all
