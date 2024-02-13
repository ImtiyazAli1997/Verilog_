#environment creation
vlib work

#compilation

vlog s1_HA_G.v
vlog s2_FA_G.v
vlog s3_add10.v

vlog s4_mux2to1.v
vlog s5_mux10.v



vlog s6_DFF.v 



vlog s7_mod1000.v
vlog s8_mod1000_tb.v +acc


#simulation
vsim work.tb
#add wave -r *
do wave.do
run -all
