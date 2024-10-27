
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name lab3 -dir "D:/Uni/DSD - Lab/Lab3Again/lab3/planAhead_run_2" -part xc6slx9csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Uni/DSD - Lab/Lab3Again/lab3/taskk.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Uni/DSD - Lab/Lab3Again/lab3} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "taskk.ucf" [current_fileset -constrset]
add_files [list {taskk.ucf}] -fileset [get_property constrset [current_run]]
link_design
