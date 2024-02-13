#environment creation
vlib work

#compilation

vlog FA_gen.v


#simulation
vsim work.gen_mux2to1
run -all
