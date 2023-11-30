
#environment creation
vlib work

#compilation

vlog HA_G.v
vlog FA_G.v
vlog XFA.v

#simulation
vsim work.tb
#add wave tb/*
run -all


