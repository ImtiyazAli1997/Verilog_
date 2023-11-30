#environment creation
vlib work

#compilation
vlog HA_G.v
vlog FA_G.v
vlog rca.v
vlog subtractor_4bit.v
vlog sub4_tb.v


#simulation
vsim work.tb
run -all


