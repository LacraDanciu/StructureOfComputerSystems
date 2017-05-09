
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name clock -dir "C:/Users/student/Documents/30431/MariaB/Lab5/clock/planAhead_run_1" -part xc6slx16csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/student/Documents/30431/MariaB/Lab5/clock/counter.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/student/Documents/30431/MariaB/Lab5/clock} }
set_property target_constrs_file "counter.ucf" [current_fileset -constrset]
add_files [list {counter.ucf}] -fileset [get_property constrset [current_run]]
link_design
