#environment creation
vlib work

#compilation
vlog mm.v
vlog mm_tb.v

#simulation
vsim work.tb
run -all