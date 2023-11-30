#environment creation
vlib work

#compilation
vlog bin2BCD_i5.v +define+SUBTRACT


#simulation
vsim work.tb
run -all