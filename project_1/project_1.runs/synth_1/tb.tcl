# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/4thSemester/COL216/Labs/Lab5/project_1/project_1.cache/wt [current_project]
set_property parent.project_path D:/4thSemester/COL216/Labs/Lab5/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/4thSemester/COL216/Labs/Lab5/project_1/project_1.srcs/sources_1/imports/tb_release/arm_golden.v
read_vhdl -library xil_defaultlib {
  D:/4thSemester/COL216/Labs/Lab5/project_1/project_1.srcs/sources_1/new/ARM_alu.vhd
  D:/4thSemester/COL216/Labs/Lab5/project_1/project_1.srcs/sources_1/imports/tb_release/rng_xoroshiro128plus.vhd
  D:/4thSemester/COL216/Labs/Lab5/project_1/project_1.srcs/sources_1/imports/tb_release/tb.vhd
}
catch { write_hwdef -file tb.hwdef }
synth_design -top tb -part xc7a35tcpg236-1
write_checkpoint -noxdef tb.dcp
catch { report_utilization -file tb_utilization_synth.rpt -pb tb_utilization_synth.pb }
