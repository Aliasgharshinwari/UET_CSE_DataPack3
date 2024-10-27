
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Test -dir "D:/Uni/DSD - Lab/Xilinx_Work/New_Test_Project/Test/planAhead_run_1" -part xc6slx9csg324-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/Uni/DSD - Lab/Xilinx_Work/New_Test_Project/Test/new.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Uni/DSD - Lab/Xilinx_Work/New_Test_Project/Test} }
set_property target_constrs_file "new.ucf" [current_fileset -constrset]
add_files [list {new.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/Uni/DSD - Lab/Xilinx_Work/New_Test_Project/Test/new.ncd"
if {[catch {read_twx -name results_1 -file "D:/Uni/DSD - Lab/Xilinx_Work/New_Test_Project/Test/new.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/Uni/DSD - Lab/Xilinx_Work/New_Test_Project/Test/new.twx\": $eInfo"
}
