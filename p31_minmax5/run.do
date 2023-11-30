#environment creation
vlib work

#compilation
vlog my_not.v
vlog my_nand.v
vlog my_and.v
vlog my_exor.v
vlog my_or.v

#simulation
vsim work.tb_not
vsim work.tb_nand
vsim work.tb_and
vsim work.tb_or
vsim work.tb_exor

run -all