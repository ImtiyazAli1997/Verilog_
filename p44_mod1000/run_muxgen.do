#environment creation
vlib work

#compilation

vlog muxgen.v


#simulation
vsim work.gen_mux2to1
run -all
