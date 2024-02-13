vlib work
vdel -all
vlib work

vlog -sv name_pattern.v +acc
vlog name_pattern_tb.v +acc

vsim work.tb 

#add wave -r *
do wave.do
run -all