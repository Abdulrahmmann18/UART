vlib work
vlog -f source_list.txt
vsim -voptargs=+accs work.UART_RX_tb
add wave *
add wave -position insertpoint  \
sim:/UART_RX_tb/DUT/data_samp/data_samp_en
add wave -position insertpoint  \
sim:/UART_RX_tb/DUT/cnt/cnt_enable
add wave -position insertpoint  \
sim:/UART_RX_tb/DUT/fsm/par_chk_en \
sim:/UART_RX_tb/DUT/fsm/strt_chk_en \
sim:/UART_RX_tb/DUT/fsm/stp_chk_en
add wave -position insertpoint  \
sim:/UART_RX_tb/DUT/fsm/CS \
sim:/UART_RX_tb/DUT/fsm/NS
add wave -position insertpoint  \
sim:/UART_RX_tb/DUT/cnt/edge_cnt \
sim:/UART_RX_tb/DUT/cnt/last_edge_flag
add wave -position insertpoint  \
sim:/UART_RX_tb/DUT/cnt/bit_cnt
add wave -position insertpoint  \
sim:/UART_RX_tb/DUT/data_samp/sampled_bit \
sim:/UART_RX_tb/DUT/data_samp/sample_done
run -all