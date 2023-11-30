#cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P03_full_adder}
#environment creation
vlib work

#compilation
vlog HA_G.v
vlog FA_G.v
vlog FA_G_tb.v

#simulation
vsim work.tb
run -all


