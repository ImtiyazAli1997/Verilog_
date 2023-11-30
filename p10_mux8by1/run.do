# cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P10_mux8by1}
#environment creation
vlib work

#compilation
vlog mux8by1.v
vlog mux8by1_tb.v


#simulation
vsim work.tb
run -all


