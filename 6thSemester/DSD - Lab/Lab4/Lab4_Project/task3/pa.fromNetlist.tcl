
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name task3 -dir "D:/Uni/DSD - Lab/Lab4_Project/task3/planAhead_run_2" -part xc6slx9csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Uni/DSD - Lab/Lab4_Project/task3/t3.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Uni/DSD - Lab/Lab4_Project/task3} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "t3.ucf" [current_fileset -constrset]
add_files [list {t3.ucf}] -fileset [get_property constrset [current_run]]
link_design
