# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) gpio_control_block

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]


set ::env(CLOCK_PORT) "serial_clock"

# This needs to be half the mgmt_core clock frequency
set ::env(CLOCK_PERIOD) "4"

set ::env(VDD_NETS) "vccd vccd1"
set ::env(GND_NETS) "vssd vssd1"

set ::env(BASE_SDC_FILE) [glob $::env(DESIGN_DIR)/base.sdc]

## Synthesis
set ::env(SYNTH_READ_BLACKBOX_LIB) 1
set ::env(SYNTH_USE_PG_PINS_DEFINES) "USE_POWER_PINS"
set ::env(SYNTH_STRATEGY) "AREA 3"
# set ::env(SYNTH_SIZING) 0
set ::env(SYNTH_MAX_TRAN) {1}
set ::env(FP_CORE_UTIL) {10}
## Floorplan
set ::env(FP_DEF_TEMPLATE) [glob $::env(DESIGN_DIR)/gpio_control_block.io.def]
set ::env(FP_SIZING) absolute
# set ::env(DIE_AREA) "0 0 170 65" 
set ::env(DIE_AREA) "0 0 170 85" 


set ::env(FP_IO_VEXTEND) 0
set ::env(FP_IO_HEXTEND) 0
set ::env(FP_IO_HLENGTH) 100
set ::env(FP_IO_VLENGTH) 4

set ::env(RIGHT_MARGIN_MULT) 262
# set ::env(RIGHT_MARGIN_MULT) 262
set ::env(LEFT_MARGIN_MULT) 10
set ::env(TOP_MARGIN_MULT) 2
set ::env(BOTTOM_MARGIN_MULT) 2

set ::env(CELL_PAD) 0

## PDN
# set ::env(PDN_CFG) [glob $::env(DESIGN_DIR)/pdn.tcl] 
set ::env(FP_PDN_AUTO_ADJUST) 0

set ::env(FP_PDN_VWIDTH) 1.6
set ::env(FP_PDN_HWIDTH) 1.6

set ::env(FP_PDN_HORIZONTAL_HALO) 2
set ::env(FP_PDN_VERTICAL_HALO) 2

set ::env(FP_PDN_HOFFSET) 0
set ::env(FP_PDN_VOFFSET) 9.0

set ::env(FP_PDN_HPITCH) 20
set ::env(FP_PDN_VPITCH) 25

set ::env(FP_PDN_VSPACING) 3.4
set ::env(FP_PDN_HSPACING) 3.4

set ::env(FP_PDN_MACRO_HOOKS) "gpio_logic_high vccd1 vssd1 vccd1 vssd1"

## Placement 
set ::env(PL_TARGET_DENSITY) 0.75
# for some reason resizer is leaving a floating net after running repair_tie_fanout command
set ::env(PL_RESIZER_REPAIR_TIE_FANOUT) 0
set ::env(PL_RESIZER_MAX_SLEW_MARGIN) 80
set ::env(PL_RESIZER_MAX_CAP_MARGIN) 80
set ::env(PL_TIME_DRIVEN) 1
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 1
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 1
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
# set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) {-0.1}

## CTS
set ::env(CLOCK_TREE_SYNTH) 1
# set ::env(FILL_INSERTION) 1

# mgmt_gpio_in is driven by a tristate cell
# set ::env(DONT_BUFFER_PORTS) "mgmt_gpio_in"

## Routing
set ::env(GLB_RT_MINLAYER) 2
set ::env(GLB_RT_MAXLAYER) 4
set ::env(GLB_ADJUSTMENT) 0.05

set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 1
set ::env(GLB_RESIZER_MAX_SLEW_MARGIN) 90
set ::env(GLB_RESIZER_MAX_CAP_MARGIN) 90
set ::env(GLB_RESIZER_HOLD_MAX_BUFFER_PERCENT) 15
set ::env(GLB_RESIZER_SETUP_MAX_BUFFER_PERCENT) 15
set ::env(GRT_ALLOW_CONGESTION) 1
set ::env(GRT_OVERFLOW_ITERS) 100

# Add obstructions on the areas that will lie underneath the padframe 
set ::env(GLB_OBS) "li1 0 0 16.79500 30.02500, li1 0 29.96500 4.26500 85.07000,
	li1 4.21500 57.40500 49.81500 84.93000,
	li1 16.83000 0 49.41000 5.24000,
	li1 49.000 0 169.81000 84.84500,
	met5 67 0 170 85,
	met4 67 0 170 85,
	met3 75 0 170 85,
	met2 75 0 170 85,
	met1 75 0 170 85"

## Diode Insertion
set ::env(DIODE_INSERTION_STRATEGY) 0
# set ::env(TAP_DECAP_INSERTION) 0

set ::env(FP_TAP_HORIZONTAL_HALO) {2}                                                                                                                                                                  
set ::env(FP_TAP_VERTICAL_HALO) {2}
# set ::env(FP_TAPCELL_DIST) {28}
## Internal macros
set ::env(MACRO_PLACEMENT_CFG) [glob $::env(DESIGN_DIR)/macro_placement.cfg]

set ::env(VERILOG_FILES_BLACKBOX) [glob $::env(DESIGN_DIR)/macro/verilog/gpio_logic_high.v]
set ::env(EXTRA_LEFS) [glob $::env(DESIGN_DIR)/macro/lef/gpio_logic_high.lef]
set ::env(EXTRA_GDS_FILES) [glob $::env(DESIGN_DIR)/macro/gds/gpio_logic_high.gds]

# 0.07 ns 70 ps
# set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.05
# set ::env(PL_RESIZER_ALLOW_SETUP_VIOS) 1
# set ::env(PL_RESIZER_HOLD_MAX_BUFFER_PERCENT) 2
# set ::env(PL_RESIZER_SETUP_MAX_BUFFER_PERCENT) 2

# set ::env(MAGIC_EXT_USE_GDS) 1
# set ::env(QUIT_ON_LVS_ERROR) 0

set ::env(SYNTH_EXTRA_MAPPING_FILE) [glob $::env(DESIGN_DIR)/yosys_mapping.v]
