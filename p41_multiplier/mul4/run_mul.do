
#environment creation
vlib work

#compilation

#vlog partialproduct_gen.v
vlog HA_G.v
vlog FA_G.v
vlog XFA.v
vlog multiplier.v +define+M1
vlog mul_tb.v +


#simulation
vsim work.tb
#add wave tb/*
run -all


