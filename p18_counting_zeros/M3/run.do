#environment creation
vlib work

#compilation
vlog HA_G.v
vlog FA_G.v
vlog rca.v
vlog count_ones.v
vlog subtractor_4bit.v
vlog count_zeros.v
vlog counts_tb.v

#simulation
vsim work.tb_obp
run -all


