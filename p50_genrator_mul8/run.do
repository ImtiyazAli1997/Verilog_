# 
#environment creation
vlib work

#compilation
vlog mul8_v2.v
vlog mul8_v3.v
vlog mul8_v4.v
vlog mul8_v5.v
vlog mul8_v6.v
vlog mul8_v7.v
vlog mul8_v8.v
vlog mul8_v9.v
vlog mul8_v10.v
vlog mul8_v11.v

vlog mul8_tb.v +define+DEBUG

#simulation
vsim work.tb

run -all