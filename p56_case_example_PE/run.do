# use any one of the do below
#do run.do M1
#do run.do M2
#do run.do M3
#do run.do M4

#environment creation
vlib work

#compilation
#vlog PE.v +define+M1

#vlog PE.v +define+M2

#vlog PE.v +define+M3

vlog PE.v +define+$1
vlog PE_tb.v +define+$1

#simulation
vsim work.tb
run -all
