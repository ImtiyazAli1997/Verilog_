vlib work
vdel -all
vlib work

vlog -sv color_pattern_detection.v +acc
vlog color_pattern_detection_tb.v +acc

vsim work.tb 

#add wave -r *
do wave.do
run -all