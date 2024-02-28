#!/bin/bash
export DESIGN_PAR=black_parrot
export DESIGN_NAME=bsg_mux_width_p8_els_p8
export ROOT_DIR=/home/abc586/currentResearch/llm_ppa_predictor
export DUMP_DIR=${ROOT_DIR}/dump/${DESIGN_PAR}/${DESIGN_NAME}_area
export VERILOG_FILE=/home/abc586/currentResearch/llm_ppa_predictor/openROAD_low_level_modules_yosys_v1/tsmc65lp/black_parrot/bsg_mux_width_p8_els_p8.v
export ABC_AREA=1

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
