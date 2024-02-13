onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/async_rst
add wave -noupdate -format Literal -radix unsigned /tb/hours
add wave -noupdate -format Literal -radix unsigned /tb/minutes
add wave -noupdate -format Literal -radix unsigned /tb/seconds
add wave -noupdate -format Literal -radix unsigned /tb/uut/d1
add wave -noupdate -format Literal -radix unsigned /tb/uut/d2
add wave -noupdate -format Literal -radix unsigned /tb/uut/d3
add wave -noupdate -format Literal -radix unsigned /tb/uut/incr_min
add wave -noupdate -format Literal -radix unsigned /tb/uut/incr_hours
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
WaveRestoreZoom {0 ps} {529202 ps}
