vlib work
vdel -all
vlib work

vlog -sv timer.v +acc
vlog -sv timer_tb.v +acc


vsim work.tb -l timer.log

#add wave -r *
do wave.do
run -all