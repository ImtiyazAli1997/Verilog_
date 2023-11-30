#cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P01_basicgates}
#environment creation
vlib work

#compilation
vlog basic_gates_gateLevel.v
vlog basic_gates_gateLevel_tb.v

#simulation
vsim work.basic_gates_tb
#module_name of testbench 

run -all


