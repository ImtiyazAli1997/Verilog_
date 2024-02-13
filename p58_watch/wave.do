onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/mode
add wave -noupdate -format Literal -radix unsigned /tb/uut/state
add wave -noupdate -format Logic /tb/sel
add wave -noupdate -format Logic /tb/inc
add wave -noupdate -format Logic /tb/dec
add wave -noupdate -format Logic /tb/rst
add wave -noupdate -format Literal -radix unsigned /tb/hrs
add wave -noupdate -format Literal -radix unsigned /tb/mins
add wave -noupdate -format Literal -radix unsigned /tb/sec
add wave -noupdate -format Literal -radix unsigned /tb/uut/secplus1
add wave -noupdate -format Literal -radix unsigned /tb/uut/minsplus1
add wave -noupdate -format Literal -radix unsigned /tb/uut/minsminus1
add wave -noupdate -format Literal -radix unsigned /tb/uut/secminus1
add wave -noupdate -format Literal -radix unsigned /tb/uut/hrsplus1
add wave -noupdate -format Literal -radix unsigned /tb/uut/hrsminus1
add wave -noupdate -format Logic /tb/uut/incmin
add wave -noupdate -format Logic /tb/uut/inchrs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4 ps} 0}
configure wave -namecolwidth 169
configure wave -valuecolwidth 65
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
WaveRestoreZoom {0 ps} {232 ps}
