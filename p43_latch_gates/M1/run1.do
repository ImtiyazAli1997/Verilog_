#environment creation
vlib work

#compilation
vlog latch_tb.v	+acc

vlog latch1.v +acc

#simulation
vsim work.tb
add wave -r *
run -all
