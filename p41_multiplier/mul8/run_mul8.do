# 
#environment creation
vlib work

#compilation
vlog mul8.v
vlog mul8_tb.v

#simulation
vsim work.tb

run -all