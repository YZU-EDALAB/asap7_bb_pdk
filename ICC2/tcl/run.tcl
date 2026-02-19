# # means mark
# means instruction


set_host_options -max_cores 25
# #Uses  the  scale  factor  from  the  tech  file  to create a new library.
set_app_options -name lib.setting.use_tech_scale_factor -value true
create_lib fin21_b17_offGrid.ndm -use_technology_lib TECH_changeBM.ndm -ref_libs { ../finFlex21.ndm ../work0125_physical_only.ndm ../TECH_changeBM.ndm}
# report_ref_libs
save_lib
# #"Shift+K" to remove all rulers
gui_set_hotkey -hot_key shift+K -tcl_cmd gui_remove_all_rulers


# #Design Setup
read_verilog verilogINPUT/fin21_b17_25.v
read_sdc sdcINPUT/b17.sdc
set_layer_map_file -library fin21_b17_offGrid.ndm -format starrc -map_file ../asap7_Pad_tluplus.map 
read_parasitic_tech -tlup ../ASAP7_BPR_112.tluplus -layermap ../asap7_Pad_tluplus.map -name NormalTLU
# #sets parasitic parameters such as TLU+ and temperature
set_parasitic_parameters -corners {default} -early_spec NormalTLU -late_spec NormalTLU
report_lib -parasitic_tech [current_lib]

# #Specifies the technology node, such as "7" or "12"
set_technology -node 7
create_net -power VDD
create_net -ground VSS
connect_pg_net -net VDD [get_pins -physical_context *VDD]
connect_pg_net -net VSS [get_pins -physical_context *VSS]

#read_parasitic_tech -tlup ../ASAP7_1229_3.tluplus -layermap ../asap7_Pad_tluplus.map -name NormalTLU
#set_parasitic_parameters -corners {default} -early_spec NormalTLU -late_spec NormalTLU
#report_lib -parasitic_tech [current_lib]
#set_app_options -name route.common.connect_within_pins_by_layer_name -value {{M1 via_wire_all_pins}}
#set_app_options -name route.common.connect_within_pins_by_layer_name -value {{M1 via_standard_cell_pins}}

#Total= 55296, Short= 8417
#set_process_label -early early_timing -corners {default}
#set_process_label -late late_timing -corners {default}
#set_process_number -early 1 -late 2 -corners {default}
set_temperature 25 -min 25
set_voltage 0.7 -min 0.7 -object_list [get_supply_nets {VDD}]
set_voltage 0 -min 0 -object_list [get_supply_nets {VSS}]

report_lib -parasitic_tech [current_lib]

set_attribute [get_layers {BM1 M1 M3 M5 M7 M9}] routing_direction vertical
set_attribute [get_layers {BM2 BPR LIG M2 M4 M6 M8 Pad}] routing_direction horizontal
#set_attribute [get_layers {M1}] track_offset 0.036
set_attribute [get_layers {M1}] track_offset 0
set_attribute [get_layers {M2}] track_offset 0
set_attribute [get_layers {M3}] track_offset 0
set_attribute [get_layers {M4}] track_offset 0.06
set_attribute [get_layers {M5}] track_offset 0
set_attribute [get_layers {M6}] track_offset 0.144
#set_attribute [get_layers {M2}] track_offset 0.108
#remove_attribute [get_layers {M1}] routing_direction

# #Modes are used to contain a set of constraints environment for the design
current_mode default
report_mode

# #Design Planning
# #core_offset : specifies the distance between the side of the core and the side of the die boundary
# #core_utilization :  total  area  of the core occupied by all standard cells and macro cells divided by the total core area
# #honor_pad_limit : Adjusts  the  core and die size to honor pad-limited designs
initialize_floorplan -core_utilization 0.4 -site_def coreSite -honor_pad_limit -core_offset {10}
create_io_ring -name ioring -corner_height 5
#set_ignored_layers -min_routing_layer M1 -max_routing_layer M4
#set_app_options -list {route.common.global_min_layer_mode hard}
#set_app_options -list {route.common.global_max_layer_mode hard}
#set_ignored_layers -min_routing_layer M1 -max_routing_layer M5
#set_routing_rule [get_nets *] -min_routing_layer M1 -max_routing_layer M5
set_ignored_layers -min_routing_layer M1 -max_routing_layer M5
#set_routing_rule [get_nets *] -min_routing_layer M1 -max_routing_layer M5
#set_app_options -list {route.common.global_min_layer_mode allow_pin_connection}
#set_app_options -list {route.common.global_min_layer_mode hard}
#set_app_options -list {route.common.global_max_layer_mode hard}

# Place IO port
#set_signal_io_constraints -file pin95.cons
#remove_individual_pin_constraints
#source PinLocation.tcl
#set_block_pin_constraints -self -sides {1 2 3 4} -allowed_layers {M3 M4} -width {{M4 0.096} {M3 0.072}} -length {{M3 2.88} {M4 2.88}} -hard_constraints layer
#read_pin_constraints -file b17_core_uti70_pin.cons
#place_pins -self
#place_pins -self -ports [get_ports *]

#create_net -power VDD
#create_net -ground VSS
# Placement
#set_app_options -name place.coarse.fix_hard_macros -value false
#set_app_options -name plan.place.auto_create_blockages -value auto
#set_app_options -name plan.place.congestion_driven_mode -value std_cell
#create_placement -floorplan
#create_placement  -floorplan -effort high -congestion -congestion_effort high
#set_app_options -name plan.place.congestion_driven_mode -value std_cell
# Test Power 
# Define Power

# #Via Array: Maximize via cuts at a metal intersection when creating PG straps.
set_app_options -name plan.pgroute.via_array_size_control \
       -value try_cuts_in_intersection

# #Power Ring
# #corner_bridge : creates bridge connection at all ring corners  and  connects  inner  and  outer rings
create_pg_ring_pattern ring_pattern_1_2 \
                       -nets {VDD VSS} \
                       -horizontal_layer BM2 -vertical_layer BM1 \
                       -horizontal_width {1.8} -vertical_width {1.8} \
                       -horizontal_spacing {1} -vertical_spacing {1} \
                       -corner_bridge true
# #assign Power Ring
set_pg_strategy Strategy_ring_1_2 -core -pattern {{name : ring_pattern_1_2}{nets : {VDD VSS}}{offset : {1.8 1.8}}}
compile_pg -strategies {Strategy_ring_1_2}

# #Power Rails
create_pg_std_cell_conn_pattern rail_pattern -layers {BPR}
set_pg_strategy power_rails -core \
   -pattern {{name: rail_pattern}{nets: VSS VDD}} \
   -extension {{{stop : outermost_ring}}}

compile_pg -strategies power_rails

# #Power Stripes
# #The direction keyword specifies the extension direction , T is top , B is buttom
create_pg_mesh_pattern power_stripe_pattern \
		-layers { {{vertical_layer: BM1} {width: 1} {spacing: 1} {pitch: 4} {offset: 0.3} {trim: true} }}
set_pg_strategy power_stripes -core \
	-pattern {{name : power_stripe_pattern}{nets : {VDD VSS}}} \
	-extension {{{nets : {VDD VSS}}{direction : T B}{stop : outermost_ring}}}
	
compile_pg -strategies power_stripes
# #End Test Power 

# #Cell delays will be calculated assuming zero interconnect capacitance, and net  delays  will  be zero.
# #if -value is Zero-interconnect analysis is always used for unplaced designs to calculates cell and net delays.
set_app_options -name time.delay_calculation_style -value auto
# #scan chain disable
set_app_options  -name place.coarse.continue_on_missing_scandef -value true

#source add_tie.tcl

#set TIE_LIB_CELL_PATTERN_LIST "*TIELO_x1_75t*"
#set_lib_cell_purpose -include optimization [get_lib_cells $TIE_LIB_CELL_PATTERN_LIST]
#set_dont_touch [get_lib_cells $TIE_LIB_CELL_PATTERN_LIST] false

#set_ideal_network [get_ports {clock}]
check_design -checks pre_placement_stage
check_design -checks physical_constraints

# # setup time analysis is turned off
set_scenario_status default -setup false
#set_app_options -name place.coarse.fix_hard_macros -value false
#set_app_options -name plan.place.auto_create_blockages -value auto
#set_app_options -name plan.place.congestion_driven_mode -value std_cell
set_app_options -name place.coarse.pin_cost_aware -value true
#set_app_options -name place.coarse.congestion_driven_max_util -value 0.85
#set_app_options -name place.coarse.max_density -value 0.85
# #Sets the effort level for congestion-driven restructuring
set_app_options -name place.coarse.cong_restruct_effort -value ultra
# #reduce densities in congested areas more aggressively.
set_app_options -name place.coarse.increased_cell_expansion -value true
set_app_options -name place.coarse.congestion_expansion_direction -value both
set_app_options -name place.coarse.enhanced_legalizer_driven_placement -value true
#set_app_options -name place.coarse.perturbation_effort -value high
set_app_options -name place_opt.place.congestion_effort -value high
set_app_options -name place_opt.final_place.effort -value high
#set_app_options -name place_opt.initial_drc.global_route_based -value 1
set_app_options -name place_opt.initial_place.two_pass -value true
set_app_options -name place.legalize.enable_advanced_legalizer -value true
remove_individual_pin_constraints
# #Specifies the IO Pads
set_block_pin_constraints -self -sides {1 2 3 4} -allowed_layers {M3 M4} -width {{M4 0.096} {M3 0.072}} -length {{M3 2.88} {M4 2.88}} -hard_constraints layer -pin_spacing 20
place_pins -self

place_opt

# #用了cell會跑掉
# #refine_placement -effort high -congestion_effort high -perturbation_level high

place_pins -self

check_routes
#optimize_routability

report_timing
report_power

set_scenario_status * -active true
set_scenario_status default -setup true
set_scenario_status default -hold true
#connect_pg_net

# #CTS
# #refine_placement
# #Verify the placement is legal.
check_legality -verbose

report_clocks
report_clocks -skew
report_clocks -groups
report_clock_qor

report_ports [get_ports clock]
check_design -checks pre_clock_tree_stage

set CTS_LIB_CELL_PATTERN_LIST "*DFF*"
set CTS_CELLS [get_lib_cells $CTS_LIB_CELL_PATTERN_LIST]
set_dont_touch $CTS_CELLS false
set_lib_cell_purpose -include cts $CTS_CELLS

# Clock NDRs
#mark_clock_trees

#if {cts_w2_s2_vlg != ""} {
#	remove_routing_rules cts_w2_s2_vlg > /dev/null
#
#	create_routing_rule cts_w2_s2_vlg \
#		-default_reference_rule \
##		-spacings { M2 0.14 M3 0.14 M4 0.28 M5 0.28} \
#		-taper_distance 0.4 \
#		-driver_taper_distance 0.4 
#
#	set_clock_routing_rules -rules cts_w2_s2_vlg \
#		-min_routing_layer M4 \
#		-max_routing_layer M5
#}

#if {cts_w1_s2 != ""} {
#	create_routing_rule cts_w1_s2 \
#		-default_reference_rule \
#		-spacings { M2 0.14 M3 0.14 M4 0.28 M5 0.28} 
#	set_clock_routing_rules -net_type sink -rules cts_w1_s2 \
#		-min_routing_layer M1 \
#		-max_routing_layer M5
#}
report_clock_routing_rules

#set_max_transition 0.1 -clock_path [get_clocks]
get_scenario -filter active&&hold
report_scenarios
report_clock_tree_options


#set_app_options -name opt.dft.clock_aware_scan_reorder -value true
# #No scanchain

set_app_options -name opt.dft.clock_aware_scan_reorder -value false
set_app_options -name time.remove_clock_reconvergence_pessimism -value true
set_app_options -name clock_opt.flow.enable_ccd -value false
set_app_options -name cts.compile.enable_local_skew -value true
set_app_options -name cts.optimize.enable_local_skew -value true

#report_clock_tree_options

#set_timing_derate -net_delay -early 0.9
#set_timing_derate -net_delay -late 1.1

#clock_opt
#clock_opt -to build_clock
#clock_opt -from route_clock -to final_opto
#status clock_opt
#[-list_only]
#[-from build_clock | route_clock | final_opto ]
#[-to build_clock | route_clock | final_opto ]
set_lib_cell_purpose -include cts {BUF* INV*}
set_clock_balance_points -delay 0 -balance_points clock

set_clock_tree_options -target_skew 0.2 -clock clock
synthesize_clock_trees -clocks clock
#set_clock_tree_options -target_skew 0.2 -clock clock
report_global_timing
#route_group -all_clock_nets -reuse_existing_global_route true
clock_opt -to route_clock


report_clock_balance_points
#clock_opt -to route_clock
report_timing
report_clock_timing -type skew

#connect_pg_net

#report_timing
#report_clock_timing -type skew

# Add Filler
# create_stdcell_fillers -lib_cells {FILLER_fin22}

remove_stdcell_fillers_with_violation


#set_app_options -name place.legalize.enable_advanced_legalizer -value true
#connect_pg_net -automatic

# #Routing
set_app_options -name route.common.connect_within_pins_by_layer_name -value {{M1 via_wire_standard_cell_pins}}
set_app_options -name route.common.connect_within_pins_by_layer_name -value {{M2 via_wire_standard_cell_pins}}
set_app_options -name route.common.wire_on_grid_by_layer_name -value {{M1 false}}
set_app_options -name route.common.wire_on_grid_by_layer_name -value {{M2 false}}
set_app_options -name route.common.via_on_grid_by_layer_name -value {{M1 false}}
set_app_options -name route.common.via_on_grid_by_layer_name -value {{M2 false}}
#must check route when use optimize_routability
check_routability -connect_standard_cells_within_pins true 
check_routes
optimize_routability

#set_app_options -list {route.common.post_detail_route_fix_soft_violations true}
#set_app_options -list { route.track.timing_driven true }
set_app_options -list { route.track.allow_wire_outside_gcell true}
#set_app_options -list {custom.route.layer_grid_mode {{M1 off}}}
#set_app_options -list {route.detail.timing_driven yes}
#set_app_options -list {route.global.crosstalk_driven false}
#set_app_options -list {route.track.crosstalk_driven false}

#set_app_options -list { route.global.timing_driven true }
set_app_options -list { route.global.force_full_effort true }
#set_app_options -list { route.track.timing_driven true }
#set_app_options -list { route.detail.timing_driven true }
#set_app_options -name route.common.extra_via_cost_multiplier_by_layer_name -value {{V1 1.5} {V2 0.5}}
#create_routing_guide -boundary {{0.0 0.0} {190.0 190.0}} -layers {M1 M2 M3 M4 M5} -horizontal_track_utilization 80 -vertical_track_utilization 80
set_app_options -name route.detail.optimize_partition_size_for_drc -value true

set_app_options -name route.global.timing_driven -value true
set_app_options -name route.detail.drc_convergence_effort_level -value high
route_auto -max_detail_route_iteration 50
#optimize_routes
route_detail -incremental true
#
check_routes

#route_detail -max_number_iterations 60 -incremental true 


#report_timing
#report_timing -from [get_cells -of_references [get_lib_cells *DFF*]] -to [get_cells -of_references [get_lib_cells *DFF*]]
#write_def -version 5.8 CPS6L_b17_core92_icc2.def
#write_verilog -exclude {empty_modules feedthrough_cells physical_only_cells} PR60_b17.v

#save_block
#write_timing_file -output timing_70_1205
#save_block -as TEST3.ndm:b17.design
# TEST3.ndm:b17.design
#open_block -read /home1st/s1096032/Routing_icc2_b17_core80/APR/TEST3.ndm:b17.design
#link_block







