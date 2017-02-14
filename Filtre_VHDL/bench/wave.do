onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bench_top/DUT/U6/Clk
add wave -noupdate /bench_top/DUT/U6/Reset
add wave -noupdate -divider <NULL>
add wave -noupdate -radix unsigned -childformat {{/bench_top/DUT/Filter_In(7) -radix unsigned} {/bench_top/DUT/Filter_In(6) -radix unsigned} {/bench_top/DUT/Filter_In(5) -radix unsigned} {/bench_top/DUT/Filter_In(4) -radix unsigned} {/bench_top/DUT/Filter_In(3) -radix unsigned} {/bench_top/DUT/Filter_In(2) -radix unsigned} {/bench_top/DUT/Filter_In(1) -radix unsigned} {/bench_top/DUT/Filter_In(0) -radix unsigned}} -subitemconfig {/bench_top/DUT/Filter_In(7) {-height 16 -radix unsigned} /bench_top/DUT/Filter_In(6) {-height 16 -radix unsigned} /bench_top/DUT/Filter_In(5) {-height 16 -radix unsigned} /bench_top/DUT/Filter_In(4) {-height 16 -radix unsigned} /bench_top/DUT/Filter_In(3) {-height 16 -radix unsigned} /bench_top/DUT/Filter_In(2) {-height 16 -radix unsigned} /bench_top/DUT/Filter_In(1) {-height 16 -radix unsigned} /bench_top/DUT/Filter_In(0) {-height 16 -radix unsigned}} /bench_top/DUT/Filter_In
add wave -noupdate -radix unsigned -childformat {{/bench_top/DUT/U2/x(0) -radix unsigned} {/bench_top/DUT/U2/x(1) -radix unsigned} {/bench_top/DUT/U2/x(2) -radix unsigned} {/bench_top/DUT/U2/x(3) -radix unsigned} {/bench_top/DUT/U2/x(4) -radix unsigned} {/bench_top/DUT/U2/x(5) -radix unsigned} {/bench_top/DUT/U2/x(6) -radix unsigned} {/bench_top/DUT/U2/x(7) -radix unsigned} {/bench_top/DUT/U2/x(8) -radix unsigned} {/bench_top/DUT/U2/x(9) -radix unsigned} {/bench_top/DUT/U2/x(10) -radix unsigned} {/bench_top/DUT/U2/x(11) -radix unsigned} {/bench_top/DUT/U2/x(12) -radix unsigned} {/bench_top/DUT/U2/x(13) -radix unsigned} {/bench_top/DUT/U2/x(14) -radix unsigned} {/bench_top/DUT/U2/x(15) -radix unsigned} {/bench_top/DUT/U2/x(16) -radix unsigned} {/bench_top/DUT/U2/x(17) -radix unsigned} {/bench_top/DUT/U2/x(18) -radix unsigned} {/bench_top/DUT/U2/x(19) -radix unsigned} {/bench_top/DUT/U2/x(20) -radix unsigned} {/bench_top/DUT/U2/x(21) -radix unsigned} {/bench_top/DUT/U2/x(22) -radix unsigned} {/bench_top/DUT/U2/x(23) -radix unsigned} {/bench_top/DUT/U2/x(24) -radix unsigned} {/bench_top/DUT/U2/x(25) -radix unsigned} {/bench_top/DUT/U2/x(26) -radix unsigned} {/bench_top/DUT/U2/x(27) -radix unsigned} {/bench_top/DUT/U2/x(28) -radix unsigned} {/bench_top/DUT/U2/x(29) -radix unsigned} {/bench_top/DUT/U2/x(30) -radix unsigned} {/bench_top/DUT/U2/x(31) -radix unsigned}} -subitemconfig {/bench_top/DUT/U2/x(0) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(1) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(2) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(3) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(4) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(5) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(6) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(7) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(8) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(9) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(10) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(11) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(12) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(13) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(14) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(15) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(16) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(17) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(18) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(19) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(20) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(21) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(22) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(23) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(24) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(25) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(26) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(27) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(28) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(29) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(30) {-height 16 -radix unsigned} /bench_top/DUT/U2/x(31) {-height 16 -radix unsigned}} /bench_top/DUT/U2/x
add wave -noupdate -radix unsigned /bench_top/DUT/U6/Delay_Line_Address
add wave -noupdate -radix unsigned /bench_top/DUT/U6/Delay_Line_sample_shift
add wave -noupdate -radix unsigned /bench_top/DUT/Delay_Line_out
add wave -noupdate -radix unsigned /bench_top/DUT/U6/Rom_Address
add wave -noupdate -radix unsigned -childformat {{/bench_top/DUT/Rom_out(7) -radix unsigned} {/bench_top/DUT/Rom_out(6) -radix unsigned} {/bench_top/DUT/Rom_out(5) -radix unsigned} {/bench_top/DUT/Rom_out(4) -radix unsigned} {/bench_top/DUT/Rom_out(3) -radix unsigned} {/bench_top/DUT/Rom_out(2) -radix unsigned} {/bench_top/DUT/Rom_out(1) -radix unsigned} {/bench_top/DUT/Rom_out(0) -radix unsigned}} -subitemconfig {/bench_top/DUT/Rom_out(7) {-height 16 -radix unsigned} /bench_top/DUT/Rom_out(6) {-height 16 -radix unsigned} /bench_top/DUT/Rom_out(5) {-height 16 -radix unsigned} /bench_top/DUT/Rom_out(4) {-height 16 -radix unsigned} /bench_top/DUT/Rom_out(3) {-height 16 -radix unsigned} /bench_top/DUT/Rom_out(2) {-height 16 -radix unsigned} /bench_top/DUT/Rom_out(1) {-height 16 -radix unsigned} /bench_top/DUT/Rom_out(0) {-height 16 -radix unsigned}} /bench_top/DUT/Rom_out
add wave -noupdate -radix unsigned /bench_top/DUT/Mult_out
add wave -noupdate /bench_top/DUT/U6/Accu_ctrl
add wave -noupdate -radix unsigned -childformat {{/bench_top/DUT/Accu_out(20) -radix unsigned} {/bench_top/DUT/Accu_out(19) -radix unsigned} {/bench_top/DUT/Accu_out(18) -radix unsigned} {/bench_top/DUT/Accu_out(17) -radix unsigned} {/bench_top/DUT/Accu_out(16) -radix unsigned} {/bench_top/DUT/Accu_out(15) -radix unsigned} {/bench_top/DUT/Accu_out(14) -radix unsigned} {/bench_top/DUT/Accu_out(13) -radix unsigned} {/bench_top/DUT/Accu_out(12) -radix unsigned} {/bench_top/DUT/Accu_out(11) -radix unsigned} {/bench_top/DUT/Accu_out(10) -radix unsigned} {/bench_top/DUT/Accu_out(9) -radix unsigned} {/bench_top/DUT/Accu_out(8) -radix unsigned} {/bench_top/DUT/Accu_out(7) -radix unsigned} {/bench_top/DUT/Accu_out(6) -radix unsigned} {/bench_top/DUT/Accu_out(5) -radix unsigned} {/bench_top/DUT/Accu_out(4) -radix unsigned} {/bench_top/DUT/Accu_out(3) -radix unsigned} {/bench_top/DUT/Accu_out(2) -radix unsigned} {/bench_top/DUT/Accu_out(1) -radix unsigned} {/bench_top/DUT/Accu_out(0) -radix unsigned}} -subitemconfig {/bench_top/DUT/Accu_out(20) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(19) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(18) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(17) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(16) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(15) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(14) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(13) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(12) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(11) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(10) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(9) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(8) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(7) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(6) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(5) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(4) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(3) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(2) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(1) {-height 16 -radix unsigned} /bench_top/DUT/Accu_out(0) {-height 16 -radix unsigned}} /bench_top/DUT/Accu_out
add wave -noupdate /bench_top/DUT/U6/Buff_OE
add wave -noupdate -radix unsigned /bench_top/DUT/Filter_Out
add wave -noupdate -divider <NULL>
add wave -noupdate /bench_top/DUT/U6/ADC_Convstb
add wave -noupdate /bench_top/DUT/U6/ADC_Eocb
add wave -noupdate /bench_top/DUT/U6/ADC_Rdb
add wave -noupdate /bench_top/DUT/U6/ADC_csb
add wave -noupdate -divider <NULL>
add wave -noupdate /bench_top/DUT/U6/DAC_WRb
add wave -noupdate /bench_top/DUT/U6/DAC_csb
add wave -noupdate /bench_top/DUT/U6/LDACb
add wave -noupdate /bench_top/DUT/U6/CLRb
add wave -noupdate -divider <NULL>
add wave -noupdate /bench_top/DUT/U6/c_state
add wave -noupdate /bench_top/DUT/U6/n_state
add wave -noupdate -radix unsigned /bench_top/DUT/U6/c_address
add wave -noupdate -radix unsigned /bench_top/DUT/U6/n_address
add wave -noupdate -radix unsigned -childformat {{/bench_top/DUT/U1/filter_rom(0) -radix unsigned} {/bench_top/DUT/U1/filter_rom(1) -radix unsigned} {/bench_top/DUT/U1/filter_rom(2) -radix unsigned} {/bench_top/DUT/U1/filter_rom(3) -radix unsigned} {/bench_top/DUT/U1/filter_rom(4) -radix unsigned} {/bench_top/DUT/U1/filter_rom(5) -radix unsigned} {/bench_top/DUT/U1/filter_rom(6) -radix unsigned} {/bench_top/DUT/U1/filter_rom(7) -radix unsigned} {/bench_top/DUT/U1/filter_rom(8) -radix unsigned} {/bench_top/DUT/U1/filter_rom(9) -radix unsigned} {/bench_top/DUT/U1/filter_rom(10) -radix unsigned} {/bench_top/DUT/U1/filter_rom(11) -radix unsigned} {/bench_top/DUT/U1/filter_rom(12) -radix unsigned} {/bench_top/DUT/U1/filter_rom(13) -radix unsigned} {/bench_top/DUT/U1/filter_rom(14) -radix unsigned} {/bench_top/DUT/U1/filter_rom(15) -radix unsigned} {/bench_top/DUT/U1/filter_rom(16) -radix unsigned} {/bench_top/DUT/U1/filter_rom(17) -radix unsigned} {/bench_top/DUT/U1/filter_rom(18) -radix unsigned} {/bench_top/DUT/U1/filter_rom(19) -radix unsigned} {/bench_top/DUT/U1/filter_rom(20) -radix unsigned} {/bench_top/DUT/U1/filter_rom(21) -radix unsigned} {/bench_top/DUT/U1/filter_rom(22) -radix unsigned} {/bench_top/DUT/U1/filter_rom(23) -radix unsigned} {/bench_top/DUT/U1/filter_rom(24) -radix unsigned} {/bench_top/DUT/U1/filter_rom(25) -radix unsigned} {/bench_top/DUT/U1/filter_rom(26) -radix unsigned} {/bench_top/DUT/U1/filter_rom(27) -radix unsigned} {/bench_top/DUT/U1/filter_rom(28) -radix unsigned} {/bench_top/DUT/U1/filter_rom(29) -radix unsigned} {/bench_top/DUT/U1/filter_rom(30) -radix unsigned} {/bench_top/DUT/U1/filter_rom(31) -radix unsigned}} -subitemconfig {/bench_top/DUT/U1/filter_rom(0) {-radix unsigned} /bench_top/DUT/U1/filter_rom(1) {-radix unsigned} /bench_top/DUT/U1/filter_rom(2) {-radix unsigned} /bench_top/DUT/U1/filter_rom(3) {-radix unsigned} /bench_top/DUT/U1/filter_rom(4) {-radix unsigned} /bench_top/DUT/U1/filter_rom(5) {-radix unsigned} /bench_top/DUT/U1/filter_rom(6) {-radix unsigned} /bench_top/DUT/U1/filter_rom(7) {-radix unsigned} /bench_top/DUT/U1/filter_rom(8) {-radix unsigned} /bench_top/DUT/U1/filter_rom(9) {-radix unsigned} /bench_top/DUT/U1/filter_rom(10) {-radix unsigned} /bench_top/DUT/U1/filter_rom(11) {-radix unsigned} /bench_top/DUT/U1/filter_rom(12) {-radix unsigned} /bench_top/DUT/U1/filter_rom(13) {-radix unsigned} /bench_top/DUT/U1/filter_rom(14) {-radix unsigned} /bench_top/DUT/U1/filter_rom(15) {-radix unsigned} /bench_top/DUT/U1/filter_rom(16) {-radix unsigned} /bench_top/DUT/U1/filter_rom(17) {-radix unsigned} /bench_top/DUT/U1/filter_rom(18) {-radix unsigned} /bench_top/DUT/U1/filter_rom(19) {-radix unsigned} /bench_top/DUT/U1/filter_rom(20) {-radix unsigned} /bench_top/DUT/U1/filter_rom(21) {-radix unsigned} /bench_top/DUT/U1/filter_rom(22) {-radix unsigned} /bench_top/DUT/U1/filter_rom(23) {-radix unsigned} /bench_top/DUT/U1/filter_rom(24) {-radix unsigned} /bench_top/DUT/U1/filter_rom(25) {-radix unsigned} /bench_top/DUT/U1/filter_rom(26) {-radix unsigned} /bench_top/DUT/U1/filter_rom(27) {-radix unsigned} /bench_top/DUT/U1/filter_rom(28) {-radix unsigned} /bench_top/DUT/U1/filter_rom(29) {-radix unsigned} /bench_top/DUT/U1/filter_rom(30) {-radix unsigned} /bench_top/DUT/U1/filter_rom(31) {-radix unsigned}} /bench_top/DUT/U1/filter_rom
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {98469 ns} 0}
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
WaveRestoreZoom {97431 ns} {99383 ns}
