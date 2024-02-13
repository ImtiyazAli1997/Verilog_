# 
#environment creation
vlib work

#compilation
vlog addN.v
vlog addN_tb.v

#simulation
vsim work.tb

run -all