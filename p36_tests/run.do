#in console use do run.do [testnumber]
#test number can take any value between 1 to 5
#environment creation
vlib work

#compilation
vlog test$1.v

#simulation
vsim work.tb$1
run -all