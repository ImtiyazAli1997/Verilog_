onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -radix unsigned /tb/week_in
add wave -noupdate -format Literal /tb/uut/day_in
add wave -noupdate -format Literal -radix unsigned /tb/N_in
add wave -noupdate -format Literal /tb/uut/day_out
add wave -noupdate -format Literal -radix unsigned /tb/uut/week_out
add wave -noupdate -format Literal -radix unsigned /tb/tod_in
add wave -noupdate -format Literal -radix unsigned /tb/uut/N_in
add wave -noupdate -format Literal -radix unsigned /tb/uut/date_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {120 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 93
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
WaveRestoreZoom {91 ps} {239 ps}
