onerror {quit -f}
vlib work
vlog -work work verilog_practice.vo
vlog -work work verilog_practice.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.asu_vlg_vec_tst
vcd file -direction verilog_practice.msim.vcd
vcd add -internal asu_vlg_vec_tst/*
vcd add -internal asu_vlg_vec_tst/i1/*
add wave /*
run -all
