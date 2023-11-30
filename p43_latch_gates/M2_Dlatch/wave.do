onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/d
add wave -noupdate -format Logic /tb/q
add wave -noupdate -format Logic /tb/q_bar
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {351 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {295 ps} {405 ps}
