#environment creation
vlib work

#compilation
vlog mux2to1.v
vlog mux2to1_4bit_G.v
vlog mux2to1_4bit_G_tb.v

#simulation
vsim work.tb
run -all


