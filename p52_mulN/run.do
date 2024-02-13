# 
#environment creation
vlib work

#compilation
vlog mulN.v
vlog mulN_tb.v +define+DEBUG



#simulation
vsim work.tb

run -all