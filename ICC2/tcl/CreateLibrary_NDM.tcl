set_app_options -name lib.setting.use_tech_scale_factor -value true
create_workspace -flow exploration -technology fin21.tf work0125
read_db { DB/fin21.db }

#read_lef { /home1st/s1096032/BS_v1/icc2/BS_v1_PR_LIG_label_4x.lef }
#read_lef { /home1st/s1096032/BS_v1/icc2/test_4x.lef }
read_lef { LEF/fin21_4x.lef }

#set_app_options -name plan.pins.ignore_pin_spacing_constraint_to_pg -value true
#read_parasitic_tech -tlup ASAP7_BPR_112.tluplus -layermap asap7_Pad_tluplus.map -name NormalTLU
group_libs
check_workspace
commit_workspace
remove_workspace