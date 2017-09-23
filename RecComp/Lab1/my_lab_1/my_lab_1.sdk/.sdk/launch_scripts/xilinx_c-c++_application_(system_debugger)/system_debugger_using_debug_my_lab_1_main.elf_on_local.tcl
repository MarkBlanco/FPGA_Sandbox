connect -url tcp:127.0.0.1:3121
source C:/Users/markb/Source/Repos/FPGA_Sandbox/RecComp/Lab1/my_lab_1/my_lab_1.sdk/zqynq_lab_1_design_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248774271"} -index 0
loadhw -hw C:/Users/markb/Source/Repos/FPGA_Sandbox/RecComp/Lab1/my_lab_1/my_lab_1.sdk/zqynq_lab_1_design_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248774271"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248774271"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248774271"} -index 0
dow C:/Users/markb/Source/Repos/FPGA_Sandbox/RecComp/Lab1/my_lab_1/my_lab_1.sdk/my_lab_1_main/Debug/my_lab_1_main.elf
configparams force-mem-access 0
bpadd -addr &main