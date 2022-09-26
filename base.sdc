## 
# set outLoadNum 100
create_clock -name v_clock -period 4.0000
##
###############################################################################
# Created by write_sdc
# Thu Mar 17 11:21:00 2022
###############################################################################
current_design gpio_control_block
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name serial_clock -period 4.0000 [get_ports {serial_clock}]
set_clock_transition 0.1500 [get_clocks {serial_clock}]
set_clock_uncertainty 0.2000 serial_clock
set_propagated_clock [get_clocks {serial_clock}]
create_clock -name serial_load -period 4.0000 [get_ports {serial_load}]
set_clock_transition 0.1500 [get_clocks {serial_load}]
set_clock_uncertainty 0.2000 serial_load
set_propagated_clock [get_clocks {serial_load}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[0]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[10]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[11]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[12]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[1]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[2]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[3]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[4]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[5]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[6]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[7]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[8]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {gpio_defaults[9]}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {mgmt_gpio_oeb}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {mgmt_gpio_out}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_in}]
#set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {resetn}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {serial_data_in}]
#set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {serial_load}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {user_gpio_oeb}]
set_input_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {user_gpio_out}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {mgmt_gpio_in}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {one}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_ana_en}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_ana_pol}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_ana_sel}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_dm[0]}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_dm[1]}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_dm[2]}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_holdover}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_ib_mode_sel}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_inenb}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_out}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_outenb}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_slow_sel}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {pad_gpio_vtrip_sel}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {resetn_out}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {serial_clock_out}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {serial_data_out}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {serial_load_out}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {user_gpio_in}]
set_output_delay 1.0000 -clock [get_clocks {serial_clock}] -add_delay [get_ports {zero}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {mgmt_gpio_in}]
set_load -pin_load 0.0334 [get_ports {one}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_ana_en}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_ana_pol}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_ana_sel}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_holdover}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_ib_mode_sel}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_inenb}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_out}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_outenb}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_slow_sel}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_vtrip_sel}]
set_load -pin_load 0.0334 [get_ports {resetn_out}]
set_load -pin_load 0.4000 [get_ports {serial_clock_out}]
set_load -pin_load 0.0334 [get_ports {serial_data_out}]
set_load -pin_load 0.4000 [get_ports {serial_load_out}]
set_load -pin_load 0.0334 [get_ports {user_gpio_in}]
set_load -pin_load 0.0334 [get_ports {zero}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_dm[2]}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_dm[1]}]
set_load -pin_load 0.0334 [get_ports {pad_gpio_dm[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgmt_gpio_oeb}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mgmt_gpio_out}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {pad_gpio_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {resetn}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {serial_clock}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {serial_data_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {serial_load}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {user_gpio_oeb}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {user_gpio_out}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gpio_defaults[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
set_max_trans 1.0000 [current_design]

# RECT -5.98 -8.400 10.815 21.625 ;
# RECT -5.98 21.565 -1.715 76.67 ;
# RECT -1.765 69.005 43.835 76.53 ;
# RECT 10.85 -8.400 43.43 -3.16 ;
# RECT 43.02 -8.400 163.83 76.445 ;
