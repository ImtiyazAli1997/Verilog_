onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/rst
add wave -noupdate -format Literal -radix unsigned /tb/day
add wave -noupdate -format Literal -radix unsigned /tb/hrs
add wave -noupdate -format Literal -radix unsigned /tb/min
add wave -noupdate -format Literal -radix unsigned /tb/sec
add wave -noupdate -format Literal /tb/d
add wave -noupdate -format Literal /tb/h
add wave -noupdate -format Literal /tb/m
add wave -noupdate -format Literal /tb/s
add wave -noupdate -format Literal /tb/mon
add wave -noupdate -format Literal -radix unsigned /tb/uut/ul
add wave -noupdate -format Literal /tb/uut/month
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {315360002 ps} 0}
configure wave -namecolwidth 133
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {315359841 ps} {315360157 ps}
