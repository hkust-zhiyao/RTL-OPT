#!/usr/bin/tclsh
#------------------------------------------------------------------------------------------
# set_rtl_path.tcl
# RTL path setup for Synopsys Reference Methodologies
# Author:    Jinwook Jung
# Last modified: 2018/08/01
#------------------------------------------------------------------------------------------
if     { [string equal $design "test_ori"] } { set rtl_path "${bench_root}/test_ori";  set design_name "test_ori"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "test_llm"] } { set rtl_path "${bench_root}/test_llm"; set design_name "test_llm"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "adder"] } { set rtl_path "${bench_root}/adder"; set design_name "adder"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "adder_carry"] } { set rtl_path "${bench_root}/adder_carry"; set design_name "adder_carry"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "adder_select"] } { set rtl_path "${bench_root}/adder_select"; set design_name "adder_select"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "alu_64bit"] } { set rtl_path "${bench_root}/alu_64bit"; set design_name "alu_64bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "alu_8bit"] } { set rtl_path "${bench_root}/alu_8bit"; set design_name "alu_8bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "calculation"] } { set rtl_path "${bench_root}/calculation"; set design_name "calculation"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_2bit"] } { set rtl_path "${bench_root}/comparator_2bit"; set design_name "comparator_2bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_4bit"] } { set rtl_path "${bench_root}/comparator_4bit"; set design_name "comparator_4bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_8bit"] } { set rtl_path "${bench_root}/comparator_8bit"; set design_name "comparator_8bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_16bit"] } { set rtl_path "${bench_root}/comparator_16bit"; set design_name "comparator_16bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator"] } { set rtl_path "${bench_root}/comparator"; set design_name "comparator"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_2bit"] } { set rtl_path "${bench_root}/decoder_2bit"; set design_name "decoder_2bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_4bit"] } { set rtl_path "${bench_root}/decoder_4bit"; set design_name "decoder_4bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_6bit"] } { set rtl_path "${bench_root}/decoder_6bit"; set design_name "decoder_6bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_8bit"] } { set rtl_path "${bench_root}/decoder_8bit"; set design_name "decoder_8bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_16bit"] } { set rtl_path "${bench_root}/divider_16bit"; set design_name "divider_16bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_32bit"] } { set rtl_path "${bench_root}/divider_32bit"; set design_name "divider_32bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_4bit"] } { set rtl_path "${bench_root}/divider_4bit"; set design_name "divider_4bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_8bit"] } { set rtl_path "${bench_root}/divider_8bit"; set design_name "divider_8bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "fsm"] } { set rtl_path "${bench_root}/fsm"; set design_name "fsm"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "fsm_encode"] } { set rtl_path "${bench_root}/fsm_encode"; set design_name "fsm_encode"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "gray"] } { set rtl_path "${bench_root}/gray"; set design_name "gray"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mac"] } { set rtl_path "${bench_root}/mac"; set design_name "mac"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mul"] } { set rtl_path "${bench_root}/mul"; set design_name "mul"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mul_const"] } { set rtl_path "${bench_root}/mul_const"; set design_name "mul_const"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_4to1_16bit"] } { set rtl_path "${bench_root}/mux_4to1_16bit"; set design_name "mux_4to1_16bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_4to1_64bit"] } { set rtl_path "${bench_root}/mux_4to1_64bit"; set design_name "mux_4to1_64bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_encode"] } { set rtl_path "${bench_root}/mux_encode"; set design_name "mux_encode"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "mux_encode_ref"] } { set rtl_path "${bench_root}/mux_encode_ref"; set design_name "mux_encode_ref"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "saturating_add"] } { set rtl_path "${bench_root}/saturating_add"; set design_name "saturating_add"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "saturating_add_ref"] } { set rtl_path "${bench_root}/saturating_add_ref"; set design_name "saturating_add_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "selector"] } { set rtl_path "${bench_root}/selector"; set design_name "selector"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "selector_ref"] } { set rtl_path "${bench_root}/selector_ref"; set design_name "selector_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_16bit"] } { set rtl_path "${bench_root}/sub_16bit"; set design_name "sub_16bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_16bit_ref"] } { set rtl_path "${bench_root}/sub_16bit_ref"; set design_name "sub_16bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_32bit"] } { set rtl_path "${bench_root}/sub_32bit"; set design_name "sub_32bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_32bit_ref"] } { set rtl_path "${bench_root}/sub_32bit_ref"; set design_name "sub_32bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_4bit"] } { set rtl_path "${bench_root}/sub_4bit"; set design_name "sub_4bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_4bit_ref"] } { set rtl_path "${bench_root}/sub_4bit_ref"; set design_name "sub_4bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_8bit"] } { set rtl_path "${bench_root}/sub_8bit"; set design_name "sub_8bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "sub_8bit_ref"] } { set rtl_path "${bench_root}/sub_8bit_ref"; set design_name "sub_8bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mul_subexpression"] } { set rtl_path "${bench_root}/mul_subexpression"; set design_name "mul_subexpression"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_dead"] } { set rtl_path "${bench_root}/mux_dead"; set design_name "mux_dead"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "adder_ref"] } { set rtl_path "${bench_root}/adder_ref"; set design_name "adder_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "adder_carry_ref"] } { set rtl_path "${bench_root}/adder_carry_ref"; set design_name "adder_carry_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "adder_select_ref"] } { set rtl_path "${bench_root}/adder_select_ref"; set design_name "adder_select_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "alu_64bit_ref"] } { set rtl_path "${bench_root}/alu_64bit_ref"; set design_name "alu_64bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "alu_8bit_ref"] } { set rtl_path "${bench_root}/alu_8bit_ref"; set design_name "alu_8bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "calculation_ref"] } { set rtl_path "${bench_root}/calculation_ref"; set design_name "calculation_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_2bit_ref"] } { set rtl_path "${bench_root}/comparator_2bit_ref"; set design_name "comparator_2bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_4bit_ref"] } { set rtl_path "${bench_root}/comparator_4bit_ref"; set design_name "comparator_4bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_8bit_ref"] } { set rtl_path "${bench_root}/comparator_8bit_ref"; set design_name "comparator_8bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_16bit_ref"] } { set rtl_path "${bench_root}/comparator_16bit_ref"; set design_name "comparator_16bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "comparator_ref"] } { set rtl_path "${bench_root}/comparator_ref"; set design_name "comparator_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_2bit_ref"] } { set rtl_path "${bench_root}/decoder_2bit_ref"; set design_name "decoder_2bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_4bit_ref"] } { set rtl_path "${bench_root}/decoder_4bit_ref"; set design_name "decoder_4bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_6bit_ref"] } { set rtl_path "${bench_root}/decoder_6bit_ref"; set design_name "decoder_6bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "decoder_8bit_ref"] } { set rtl_path "${bench_root}/decoder_8bit_ref"; set design_name "decoder_8bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_4bit_ref"] } { set rtl_path "${bench_root}/divider_4bit_ref"; set design_name "divider_4bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_8bit_ref"] } { set rtl_path "${bench_root}/divider_8bit_ref"; set design_name "divider_8bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "fsm_ref"] } { set rtl_path "${bench_root}/fsm_ref"; set design_name "fsm_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "fsm_encode_ref"] } { set rtl_path "${bench_root}/fsm_encode_ref"; set design_name "fsm_encode_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "gray_ref"] } { set rtl_path "${bench_root}/gray_ref"; set design_name "gray_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mac_ref"] } { set rtl_path "${bench_root}/mac_ref"; set design_name "mac_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mul_ref"] } { set rtl_path "${bench_root}/mul_ref"; set design_name "mul_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mul_subexpression_ref"] } { set rtl_path "${bench_root}/mul_subexpression_ref"; set design_name "mul_subexpression_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mul_const_ref"] } { set rtl_path "${bench_root}/mul_const_ref"; set design_name "mul_const_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_4to1_16bit_ref"] } { set rtl_path "${bench_root}/mux_4to1_16bit_ref"; set design_name "mux_4to1_16bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_4to1_64bit_ref"] } { set rtl_path "${bench_root}/mux_4to1_64bit_ref"; set design_name "mux_4to1_64bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_dead_ref"] } { set rtl_path "${bench_root}/mux_dead_ref"; set design_name "mux_dead_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_16bit_ref"] } { set rtl_path "${bench_root}/divider_16bit_ref"; set design_name "divider_16bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "divider_32bit_ref"] } { set rtl_path "${bench_root}/divider_32bit_ref"; set design_name "divider_32bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "alu_8bit_dsr"] } { set rtl_path "${bench_root}/alu_8bit_dsr"; set design_name "alu_8bit_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "comparator_4bit_dsr"] } { set rtl_path "${bench_root}/comparator_4bit_dsr"; set design_name "comparator_4bit_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "comparator_8bit_dsr"] } { set rtl_path "${bench_root}/comparator_8bit_dsr"; set design_name "comparator_8bit_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "decoder_6bit_dsr"] } { set rtl_path "${bench_root}/decoder_6bit_dsr"; set design_name "decoder_6bit_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "divider_8bit_dsr"] } { set rtl_path "${bench_root}/divider_8bit_dsr"; set design_name "divider_8bit_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "mux_encode_dsr"] } { set rtl_path "${bench_root}/mux_encode_dsr"; set design_name "mux_encode_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "saturating_add_dsr"] } { set rtl_path "${bench_root}/saturating_add_dsr"; set design_name "saturating_add_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "divider_16bit_dsr"] } { set rtl_path "${bench_root}/divider_16bit_dsr"; set design_name "divider_16bit_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "divider_32bit_dsr"] } { set rtl_path "${bench_root}/divider_32bit_dsr"; set design_name "divider_32bit_dsr"; set clock_name "clk"; set file_format "sverilog" } \
elseif { [string equal $design "add_sub"] } { set rtl_path "${bench_root}/add_sub"; set design_name "add_sub"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_8bit"] } { set rtl_path "${bench_root}/counter_8bit"; set design_name "counter_8bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_64bit"] } { set rtl_path "${bench_root}/counter_64bit"; set design_name "counter_64bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mult_if"] } { set rtl_path "${bench_root}/mult_if"; set design_name "mult_if"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_large"] } { set rtl_path "${bench_root}/mux_large"; set design_name "mux_large"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "controller"] } { set rtl_path "${bench_root}/controller"; set design_name "controller"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "register"] } { set rtl_path "${bench_root}/register"; set design_name "register"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "ticket_machine"] } { set rtl_path "${bench_root}/ticket_machine"; set design_name "ticket_machine"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_32"] } { set rtl_path "${bench_root}/counter_32"; set design_name "counter_32"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_late"] } { set rtl_path "${bench_root}/mux_late"; set design_name "mux_late"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "addr_calcu"] } { set rtl_path "${bench_root}/addr_calcu"; set design_name "addr_calcu"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "add_sub_ref"] } { set rtl_path "${bench_root}/add_sub_ref"; set design_name "add_sub_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "addr_calcu_ref"] } { set rtl_path "${bench_root}/addr_calcu_ref"; set design_name "addr_calcu_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_8bit_ref"] } { set rtl_path "${bench_root}/counter_8bit_ref"; set design_name "counter_8bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_32_ref"] } { set rtl_path "${bench_root}/counter_32_ref"; set design_name "counter_32_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_64bit_ref"] } { set rtl_path "${bench_root}/counter_64bit_ref"; set design_name "counter_64bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mult_if_ref"] } { set rtl_path "${bench_root}/mult_if_ref"; set design_name "mult_if_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_large_ref"] } { set rtl_path "${bench_root}/mux_large_ref"; set design_name "mux_large_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "controller_ref"] } { set rtl_path "${bench_root}/controller_ref"; set design_name "controller_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_late_ref"] } { set rtl_path "${bench_root}/mux_late_ref"; set design_name "mux_late_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "register_ref"] } { set rtl_path "${bench_root}/register_ref"; set design_name "register_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "ticket_machine_ref"] } { set rtl_path "${bench_root}/ticket_machine_ref"; set design_name "ticket_machine_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_32bit"] } { set rtl_path "${bench_root}/counter_32bit"; set design_name "counter_32bit"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "counter_32bit_ref"] } { set rtl_path "${bench_root}/counter_32bit_ref"; set design_name "counter_32bit_ref"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "add_sub_ds"] } { set rtl_path "${bench_root}/add_sub_ds"; set design_name "add_sub_ds"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "addr_calcu_ds"] } { set rtl_path "${bench_root}/addr_calcu_ds"; set design_name "addr_calcu_ds"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mult_if_ds"] } { set rtl_path "${bench_root}/mult_if_ds"; set design_name "mult_if_ds"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_large_ds"] } { set rtl_path "${bench_root}/mux_large_ds"; set design_name "mux_large_ds"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "register_ds"] } { set rtl_path "${bench_root}/register_ds"; set design_name "register_ds"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "ticket_machine_ds"] } { set rtl_path "${bench_root}/ticket_machine_ds"; set design_name "ticket_machine_ds"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "add_sub_gpt"] } { set rtl_path "${bench_root}/add_sub_gpt"; set design_name "add_sub_gpt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "addr_calcu_gpt"] } { set rtl_path "${bench_root}/addr_calcu_gpt"; set design_name "addr_calcu_gpt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mult_if_gpt"] } { set rtl_path "${bench_root}/mult_if_gpt"; set design_name "mult_if_gpt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_large_gpt"] } { set rtl_path "${bench_root}/mux_large_gpt"; set design_name "mux_large_gpt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "register_gpt"] } { set rtl_path "${bench_root}/register_gpt"; set design_name "register_gpt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "ticket_machine_gpt"] } { set rtl_path "${bench_root}/ticket_machine_gpt"; set design_name "ticket_machine_gpt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "add_sub_mini"] } { set rtl_path "${bench_root}/add_sub_mini"; set design_name "add_sub_mini"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "addr_calcu_mini"] } { set rtl_path "${bench_root}/addr_calcu_mini"; set design_name "addr_calcu_mini"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mult_if_mini"] } { set rtl_path "${bench_root}/mult_if_mini"; set design_name "mult_if_mini"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_large_mini"] } { set rtl_path "${bench_root}/mux_large_mini"; set design_name "mux_large_mini"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "register_mini"] } { set rtl_path "${bench_root}/register_mini"; set design_name "register_mini"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "ticket_machine_mini"] } { set rtl_path "${bench_root}/ticket_machine_mini"; set design_name "ticket_machine_mini"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "add_sub_dsr"] } { set rtl_path "${bench_root}/add_sub_dsr"; set design_name "add_sub_dsr"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "addr_calcu_dsr"] } { set rtl_path "${bench_root}/addr_calcu_dsr"; set design_name "addr_calcu_dsr"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mult_if_dsr"] } { set rtl_path "${bench_root}/mult_if_dsr"; set design_name "mult_if_dsr"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "mux_large_dsr"] } { set rtl_path "${bench_root}/mux_large_dsr"; set design_name "mux_large_dsr"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "register_dsr"] } { set rtl_path "${bench_root}/register_dsr"; set design_name "register_dsr"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "ticket_machine_dsr"] } { set rtl_path "${bench_root}/ticket_machine_dsr"; set design_name "ticket_machine_dsr"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example1"] } { set rtl_path "${bench_root}/example1"; set design_name "example1"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example2"] } { set rtl_path "${bench_root}/example2"; set design_name "example2"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example3"] } { set rtl_path "${bench_root}/example3"; set design_name "example3"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example4"] } { set rtl_path "${bench_root}/example4"; set design_name "example4"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example1_opt"] } { set rtl_path "${bench_root}/example1_opt"; set design_name "example1_opt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example2_opt"] } { set rtl_path "${bench_root}/example2_opt"; set design_name "example2_opt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example3_opt"] } { set rtl_path "${bench_root}/example3_opt"; set design_name "example3_opt"; set clock_name "clk"; set file_format "verilog" } \
elseif { [string equal $design "example4_opt"] } { set rtl_path "${bench_root}/example4_opt"; set design_name "example4_opt"; set clock_name "clk"; set file_format "verilog" }
