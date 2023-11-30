#cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P08_mux2by1}
#environment creation
vlib work

#compilation
vlog mux2to1.v
vlog mux2to1_tb.v

#simulation
vsim work.tb
run -all


