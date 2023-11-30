#environment creation
vlib work

#compilation
vlog mux2to1.v
vlog mux2to1_3bitD.v

vlog comparator_1D.v
vlog comparator_2D.v
vlog comparator_4D.v
vlog comparator_8D.v
vlog comparator_8D_tb.v

#simulation
vsim work.tb
run -all