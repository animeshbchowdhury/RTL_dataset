#!/bin/bash
export DESIGN_NAME=bp_cce_reg_num_lce_p2_num_cce_p1_addr_width_p22_lce_assoc_p8_lce_sets_p64_block_size_in_bytes_p64_lce_req_data_width_p64
export DESIGN_PAR=bp_multi_top
export ROOT_DIR=/home/abc586/currentResearch/llm_ppa_predictor
export DUMP_DIR=${ROOT_DIR}/dump/${DESIGN_PAR}/${DESIGN_NAME}_speed
export VERILOG_FILE=/home/abc586/currentResearch/llm_ppa_predictor/openROAD_low_level_modules_yosys_v1/tsmc65lp/bp_multi_top/bp_cce_reg_num_lce_p2_num_cce_p1_addr_width_p22_lce_assoc_p8_lce_sets_p64_block_size_in_bytes_p64_lce_req_data_width_p64.v
export ABC_AREA=0

#export DESIGN_NICKNAME=gcd
#export DESIGN_NAME=gcd
#export VERILOG_FILE=/home/abc586/currentResearch/llm_ppa_predictor/designs/gcd.v
#export DUMP_DIR=${ROOT_DIR}/dump/${DESIGN_NAME}
#export ABC_AREA=1


export SCRIPTS_DIR=${ROOT_DIR}/scripts
export SYNTH_SCRIPT=${SCRIPTS_DIR}/yosys_simple_synth.tcl

export SC_LIB=/home/abc586/tools/orfs/OpenROAD-flow-scripts/flow/platforms/nangate45/lib/NangateOpenCellLibrary_typical.lib
#export ADDER_MAP_FILE=/home/abc586/tools/orfs/OpenROAD-flow-scripts/flow/platforms/nangate45/cells_adders.v
export ABC_DRIVER_CELL=BUF_X1
export ABC_LOAD_IN_FF=3.898
#export ABC_CLOCK_PERIOD_IN_PS=460

nohup yosys -c ${SYNTH_SCRIPT} > ${DUMP_DIR}/yosys_synth.log 2>&1 & 
