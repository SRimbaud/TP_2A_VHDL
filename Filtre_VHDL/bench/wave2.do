onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bench_top/CLK
add wave -noupdate /bench_top/RESET
add wave -noupdate -divider <NULL>
add wave -noupdate -radix unsigned -childformat {{/bench_top/Filter_In(7) -radix unsigned} {/bench_top/Filter_In(6) -radix unsigned} {/bench_top/Filter_In(5) -radix unsigned} {/bench_top/Filter_In(4) -radix unsigned} {/bench_top/Filter_In(3) -radix unsigned} {/bench_top/Filter_In(2) -radix unsigned} {/bench_top/Filter_In(1) -radix unsigned} {/bench_top/Filter_In(0) -radix unsigned}} -subitemconfig {/bench_top/Filter_In(7) {-height 16 -radix unsigned} /bench_top/Filter_In(6) {-height 16 -radix unsigned} /bench_top/Filter_In(5) {-height 16 -radix unsigned} /bench_top/Filter_In(4) {-height 16 -radix unsigned} /bench_top/Filter_In(3) {-height 16 -radix unsigned} /bench_top/Filter_In(2) {-height 16 -radix unsigned} /bench_top/Filter_In(1) {-height 16 -radix unsigned} /bench_top/Filter_In(0) {-height 16 -radix unsigned}} /bench_top/Filter_In
add wave -noupdate -radix unsigned -childformat {{/bench_top/filter_rom(0) -radix unsigned} {/bench_top/filter_rom(1) -radix unsigned} {/bench_top/filter_rom(2) -radix unsigned} {/bench_top/filter_rom(3) -radix unsigned} {/bench_top/filter_rom(4) -radix unsigned} {/bench_top/filter_rom(5) -radix unsigned} {/bench_top/filter_rom(6) -radix unsigned} {/bench_top/filter_rom(7) -radix unsigned} {/bench_top/filter_rom(8) -radix unsigned} {/bench_top/filter_rom(9) -radix unsigned} {/bench_top/filter_rom(10) -radix unsigned} {/bench_top/filter_rom(11) -radix unsigned} {/bench_top/filter_rom(12) -radix unsigned} {/bench_top/filter_rom(13) -radix unsigned} {/bench_top/filter_rom(14) -radix unsigned} {/bench_top/filter_rom(15) -radix unsigned} {/bench_top/filter_rom(16) -radix unsigned} {/bench_top/filter_rom(17) -radix unsigned} {/bench_top/filter_rom(18) -radix unsigned} {/bench_top/filter_rom(19) -radix unsigned} {/bench_top/filter_rom(20) -radix unsigned} {/bench_top/filter_rom(21) -radix unsigned} {/bench_top/filter_rom(22) -radix unsigned} {/bench_top/filter_rom(23) -radix unsigned} {/bench_top/filter_rom(24) -radix unsigned} {/bench_top/filter_rom(25) -radix unsigned} {/bench_top/filter_rom(26) -radix unsigned} {/bench_top/filter_rom(27) -radix unsigned} {/bench_top/filter_rom(28) -radix unsigned} {/bench_top/filter_rom(29) -radix unsigned} {/bench_top/filter_rom(30) -radix unsigned} {/bench_top/filter_rom(31) -radix unsigned}} -subitemconfig {/bench_top/filter_rom(0) {-height 16 -radix unsigned} /bench_top/filter_rom(1) {-height 16 -radix unsigned} /bench_top/filter_rom(2) {-height 16 -radix unsigned} /bench_top/filter_rom(3) {-height 16 -radix unsigned} /bench_top/filter_rom(4) {-height 16 -radix unsigned} /bench_top/filter_rom(5) {-height 16 -radix unsigned} /bench_top/filter_rom(6) {-height 16 -radix unsigned} /bench_top/filter_rom(7) {-height 16 -radix unsigned} /bench_top/filter_rom(8) {-height 16 -radix unsigned} /bench_top/filter_rom(9) {-height 16 -radix unsigned} /bench_top/filter_rom(10) {-height 16 -radix unsigned} /bench_top/filter_rom(11) {-height 16 -radix unsigned} /bench_top/filter_rom(12) {-height 16 -radix unsigned} /bench_top/filter_rom(13) {-height 16 -radix unsigned} /bench_top/filter_rom(14) {-height 16 -radix unsigned} /bench_top/filter_rom(15) {-height 16 -radix unsigned} /bench_top/filter_rom(16) {-height 16 -radix unsigned} /bench_top/filter_rom(17) {-height 16 -radix unsigned} /bench_top/filter_rom(18) {-height 16 -radix unsigned} /bench_top/filter_rom(19) {-height 16 -radix unsigned} /bench_top/filter_rom(20) {-height 16 -radix unsigned} /bench_top/filter_rom(21) {-height 16 -radix unsigned} /bench_top/filter_rom(22) {-height 16 -radix unsigned} /bench_top/filter_rom(23) {-height 16 -radix unsigned} /bench_top/filter_rom(24) {-height 16 -radix unsigned} /bench_top/filter_rom(25) {-height 16 -radix unsigned} /bench_top/filter_rom(26) {-height 16 -radix unsigned} /bench_top/filter_rom(27) {-height 16 -radix unsigned} /bench_top/filter_rom(28) {-height 16 -radix unsigned} /bench_top/filter_rom(29) {-height 16 -radix unsigned} /bench_top/filter_rom(30) {-height 16 -radix unsigned} /bench_top/filter_rom(31) {-height 16 -radix unsigned}} /bench_top/filter_rom
add wave -noupdate -divider <NULL>
add wave -noupdate -radix unsigned /bench_top/Filter_Out
add wave -noupdate /bench_top/Buff_OE
add wave -noupdate /bench_top/Accu_out
add wave -noupdate -divider <NULL>
add wave -noupdate /bench_top/DAC_csb
add wave -noupdate /bench_top/DAC_ldacb
add wave -noupdate /bench_top/DAC_clrb
add wave -noupdate /bench_top/DAC_wrb
add wave -noupdate -divider <NULL>
add wave -noupdate /bench_top/ADC_eocb
add wave -noupdate /bench_top/ADC_convstb
add wave -noupdate /bench_top/ADC_rdb
add wave -noupdate /bench_top/ADC_csb
add wave -noupdate /bench_top/ADC_convstb_delayed
add wave -noupdate /bench_top/ADC_eocb_delayed
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1284 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 338
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {3712 ns}
