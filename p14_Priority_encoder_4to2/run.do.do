#environment creation
vlib work

#compilation
vlog mux2to1.v
vlog mux2to1_2bitD.v
vlog _4to2priorityencoder.v
vlog priorityencoder4to2_tb.v


#simulation
vsim work.tb
run -all
