#environment creation
vlib work

#compilation

vlog HA_G.v
vlog FA_G.v
vlog XFA.v
vlog xlfa.v
vlog xlfa_tb.v

#simulation
vsim work.tb
#add wave tb/*
run -all


