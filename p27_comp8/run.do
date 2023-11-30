#environment creation
vlib work

#compilation
vlog comparator_8D.v
vlog comparator_8D_tb.v

#simulation
vsim work.tb
run -all