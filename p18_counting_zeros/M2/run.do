#environment creation
vlib work

#compilation
vlog HA_G.v
vlog FA_G.v
vlog rca.v

vlog mux2to1.v
vlog mux2to1_4bitD.v

vlog obc2.v
#the data lines i0 and i1 are interchanged in obc2 

vlog counting0.v
vlog counting0_tb.v 

#simulation
vsim work.tb
run -all


