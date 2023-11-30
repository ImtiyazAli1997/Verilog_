#cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P07_Addr_subtr}
#environment creation
vlib work

#compilation
vlog HA_G.v
vlog FA_G.v
vlog rca.v
vlog addr_subtr_G.v
vlog addr_subtr_G_tb.v

#simulation
vsim work.tb
run -all


