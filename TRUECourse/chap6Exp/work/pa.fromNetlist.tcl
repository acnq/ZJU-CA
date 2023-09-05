
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name exp7 -dir "D:/AAuniversityTasks/CSComputerArch/TRUECourse/chap6Exp/work/planAhead_run_2" -part xc7k325tfbg676-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/AAuniversityTasks/CSComputerArch/TRUECourse/chap6Exp/work/mips_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/AAuniversityTasks/CSComputerArch/TRUECourse/chap6Exp/work} }
set_property target_constrs_file "mips_top.ucf" [current_fileset -constrset]
add_files [list {mips_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
