
vlib work
vdel -all
vlib work

vlog -sv nextworkingday.v +acc
vlog -sv nextworkingday_tb.v +acc

vsim work.tb 

#add wave -r *
do wave.do
run -all