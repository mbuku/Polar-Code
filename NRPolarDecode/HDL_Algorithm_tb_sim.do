onbreak resume
onerror resume
vsim -voptargs=+acc work.HDL_Algorithm_tb

add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/clk
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/reset
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/clk_enable
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/In1
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/In2_start
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/In2_end
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/In2_valid
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/In3
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/In4
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/ce_out
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/Out1
add wave sim:/HDL_Algorithm_tb/Out1_ref
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/Out2_start
add wave sim:/HDL_Algorithm_tb/Out2_start_ref
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/Out2_end
add wave sim:/HDL_Algorithm_tb/Out2_end_ref
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/Out2_valid
add wave sim:/HDL_Algorithm_tb/Out2_valid_ref
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/Out3
add wave sim:/HDL_Algorithm_tb/Out3_ref
add wave sim:/HDL_Algorithm_tb/u_HDL_Algorithm/Out4
add wave sim:/HDL_Algorithm_tb/Out4_ref
run -all
