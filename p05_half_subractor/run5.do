# cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P05_half_subractor}
#environment creation
vlib work

#compilation
vlog HS_G.v
vlog HS_G_tb.v

#simulation
vsim work.tb
run -all


