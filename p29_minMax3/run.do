#environment creation
vlib work

#compilation
vlog mm.v
vlog mm3.v
vlog mm3_tb.v

#simulation
vsim work.tb
run -all