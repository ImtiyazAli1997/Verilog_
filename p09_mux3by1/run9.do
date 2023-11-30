# cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P09_mux3by1}
#environment creation
vlib work

#compilation
vlog mux2to1.v
vlog mux3to1.v
vlog mux3to1_tb.v

#simulation
vsim work.tb
run -all


