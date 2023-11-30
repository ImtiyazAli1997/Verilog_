#environment creation
vlib work

#compilation
vlog DFF.v +acc +define+GATE
vlog DFF_tb.v  +acc
vlog latch.v  +acc

#simulation
vsim work.tb
#add wave -r *

do wave.do
run -all
