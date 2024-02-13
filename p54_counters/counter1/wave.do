onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/rst
add wave -noupdate -format Literal -radix unsigned /tb/cnt
add wave -noupdate -format Literal -radix unsigned /tb/uut/icnt
add wave -noupdate -format Literal -radix unsigned /tb/uut/d1
add wave -noupdate -format Literal -radix unsigned /tb/uut/d2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {405 ps} 0}
configure wave -namecolwidth 120
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
WaveRestoreZoom {24 ps} {427 ps}
