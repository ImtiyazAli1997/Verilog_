vlib work
vdel -all
vlib work

vlog -sv HOMEWORK_PATTERN.v +acc
vlog -sv HOMEWORK_PATTERN_tb.v +acc


vsim work.tb -l pattern.log

add wave -r *
#do wave.do
run -all