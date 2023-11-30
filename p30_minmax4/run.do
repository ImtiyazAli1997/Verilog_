#environment creation
vlib work

#compilation
vlog mm.v
vlog mm3.v
vlog mm4.v
vlog mm4_tb.v

#simulation
vsim work.tb
run -all