############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cnn_optimization
set_top convolve_kernel
add_files kernel.h
add_files kernel.cpp
add_files -tb main.cpp
add_files -tb data.cpp
add_files -tb convolve.cpp
open_solution "solution1_1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 5 -name default
#source "./cnn_optimization/solution1_1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "Default CNN Kernel" -vendor "RecComp" -library "cnn_lab" -version "0.5" -display_name "Default CNN Kernel"
