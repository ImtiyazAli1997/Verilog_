#environment creation
vlib work

#compilation
#vlog binary_to_BCD.v +define+ADD

vlog binary_to_BCD.v +define+SUBTRACT
#simulation
vsim work.tb
run -all