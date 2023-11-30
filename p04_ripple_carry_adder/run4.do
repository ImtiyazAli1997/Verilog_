#cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P04_ripple_carry_adder}
#environment creation
vlib work

#compilation
vlog HA_G.v
vlog FA_G.v
vlog rca.v
vlog rca_tb.v

#simulation
vsim work.tb
run -all


