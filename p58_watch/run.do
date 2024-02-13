vlib work
vdel -all
vlib work

vlog -sv watch.v +acc
vlog -sv watch_tb.v +acc


vsim work.tb -l watch.log

#add wave -r *
do wave.do
run -all