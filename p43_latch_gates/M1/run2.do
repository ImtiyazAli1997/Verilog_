#environment creation
vlib work

#compilation
vlog latch2_tb.v	+acc

vlog latch2.v +acc

#simulation
vsim work.tb
add wave -r *
run -all
