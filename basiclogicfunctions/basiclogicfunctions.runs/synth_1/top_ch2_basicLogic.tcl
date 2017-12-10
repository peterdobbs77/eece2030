# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Peter/Documents/15_16Sophomore/EECE2030/basiclogicfunctions/basiclogicfunctions.cache/wt [current_project]
set_property parent.project_path C:/Users/Peter/Documents/15_16Sophomore/EECE2030/basiclogicfunctions/basiclogicfunctions.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Peter/Documents/15_16Sophomore/EECE2030/basiclogicfunctions/basiclogicfunctions.srcs/sources_1/new/fourIn.vhd
  C:/Users/Peter/Documents/15_16Sophomore/EECE2030/basiclogicfunctions/basiclogicfunctions.srcs/sources_1/new/threeIn.vhd
  C:/Users/Peter/Documents/15_16Sophomore/EECE2030/basiclogicfunctions/basiclogicfunctions.srcs/sources_1/new/top_ch2_basicLogic.vhd
}
read_xdc C:/Users/Peter/Documents/15_16Sophomore/EECE2030/basiclogicfunctions/basiclogicfunctions.srcs/constrs_1/imports/EECE2030/Basys3_Master.xdc
set_property used_in_implementation false [get_files C:/Users/Peter/Documents/15_16Sophomore/EECE2030/basiclogicfunctions/basiclogicfunctions.srcs/constrs_1/imports/EECE2030/Basys3_Master.xdc]

synth_design -top top_ch2_basicLogic -part xc7a35tcpg236-1
write_checkpoint -noxdef top_ch2_basicLogic.dcp
catch { report_utilization -file top_ch2_basicLogic_utilization_synth.rpt -pb top_ch2_basicLogic_utilization_synth.pb }
