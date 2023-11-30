#environment creation
vlib work

#compilation
vlog my_not.v
vlog my_nand.v
vlog my_and.v
vlog my_exor.v
vlog my_or.v

#simulation
#vsim work.tb_not -l not.log
#vsim work.tb_nand -l nand.log
#vsim work.tb_and -l and.log
#vsim work.tb_or -l or.log
#vsim work.tb_exor -l exor.log

vsim work.tb_$1 -l run.log

#use do "run.do not" in tool for running not gate
#inplace of not we can use nand and or exor and tb_$1 -> tb_[argument_passed] which makes the testbench module name for the specific gate
run -all