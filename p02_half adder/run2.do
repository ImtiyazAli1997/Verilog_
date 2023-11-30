# cd {C:\Users\alisy\Documents\verilog\class1\Q02_half adder}
#environment creation
vlib work

#compilation
vlog HA_G.v
vlog HA_G_tb.v

#simulation
vsim work.tb
run -all


