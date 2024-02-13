#environment creation
vlib work

#compilation


# try 2 line at a time
#vlog p49_compiler_deirective.v +define+STRUCT
#vlog p49_compiler_deirective_tb.v +define+STRUCT

#vlog p49_compiler_deirective.v +define+THIS_IS_NOT_DFLOW
#vlog p49_compiler_deirective_tb.v +define+THIS_IS_NOT_DFLOW

#vlog p49_compiler_deirective.v +define+REAL_DFLOW +define+WORKING 
#vlog p49_compiler_deirective_tb.v +define+REAL_DFLOW +define+WORKING


vlog p49_compiler_deirective.v +define+REAL_DFLOW +define+WONT_WORK
vlog p49_compiler_deirective_tb.v +define+REAL_DFLOW +define+WONT_WORK
###############################

#simulation
vsim work.tb
#add wave -r *

#do wave.do

run -all
