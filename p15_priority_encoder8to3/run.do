#environment creation
vlib work

#compilation


vlog pe8to3.v
vlog pe8to3_tb.v

vlog mux2to1_3bitD.v
vlog mux2to1.v


#simulation
vsim work.tb
run -all