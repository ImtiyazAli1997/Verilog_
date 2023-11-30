#cd {C:\Users\alisy\Documents\GIT_HUB\Verilog\P11_full_Adder_D}
#environment creation
vlib work

#compilation
vlog FA_D.v
vlog FA_D_tb.v

#simulation
vsim work.tb
run -all


