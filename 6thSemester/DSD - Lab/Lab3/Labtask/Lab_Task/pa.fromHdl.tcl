
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Lab_Task -dir "D:/Uni/DSD - Lab/Lab3/Labtask/Lab_Task/planAhead_run_4" -part xc6slx9csg324-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "task1.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {task.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top task1 $srcset
add_files [list {task1.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9csg324-2
