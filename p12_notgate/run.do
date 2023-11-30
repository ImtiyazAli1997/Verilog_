#cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P11_full_Adder_D}
#environment creation
vlib work

#compilation
vlog my_not_gate.v
vlog my_not_gate_tb.v

#simulation
#vsim work.tb
vsim work.my_not_tb
run -all


