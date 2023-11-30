# cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P06_full_subractor\run6.do}
#environment creation
vlib work

#compilation
vlog HS_G.v
vlog FS_G.v
vlog FS_G_tb.v

#simulation
vsim work.tb
run -all


