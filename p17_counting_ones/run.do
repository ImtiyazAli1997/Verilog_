#environment creation
vlib work

#compilation
vlog HA_G.v
vlog FA_G.v
vlog rca.v

vlog mux2to1.v
vlog mux2to1_4bitD.v

vlog obc.v

vlog counting1.v
vlog counting1_tb.v 

#simulation
vsim work.tb
run -all


