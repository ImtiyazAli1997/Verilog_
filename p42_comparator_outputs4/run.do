# cd {C:\Users\alisy\Documents\verilog\class8\comp_4outputs}

#make argument 1 as comp4
#environment creation
vlib work

#compilation
vlog -f $1.list


#simulation
vsim work.tb

run -all