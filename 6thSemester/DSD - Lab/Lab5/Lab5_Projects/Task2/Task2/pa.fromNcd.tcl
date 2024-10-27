
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Task2 -dir "D:/Uni/DSD - Lab/Lab5_Projects/Task2/Task2/planAhead_run_2" -part xc6slx9csg324-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/Uni/DSD - Lab/Lab5_Projects/Task2/Task2/task2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Uni/DSD - Lab/Lab5_Projects/Task2/Task2} }
set_property target_constrs_file "task2.ucf" [current_fileset -constrset]
add_files [list {task2.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/Uni/DSD - Lab/Lab5_Projects/Task2/Task2/task2.ncd"
if {[catch {read_twx -name results_1 -file "D:/Uni/DSD - Lab/Lab5_Projects/Task2/Task2/task2.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/Uni/DSD - Lab/Lab5_Projects/Task2/Task2/task2.twx\": $eInfo"
}
