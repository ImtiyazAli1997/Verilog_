# 
#environment creation
vlib work

#compilation
vlog muxN.v
vlog muxN_tb.v 



#simulation
vsim work.tb

run -all