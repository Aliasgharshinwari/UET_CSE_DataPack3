
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name SAP-1 -dir "D:/Uni/DSD - Lab/SAP/SAP-1/planAhead_run_2" -part xc6slx4tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Uni/DSD - Lab/SAP/SAP-1/topm.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Uni/DSD - Lab/SAP/SAP-1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "topm.ucf" [current_fileset -constrset]
add_files [list {topm.ucf}] -fileset [get_property constrset [current_run]]
link_design
