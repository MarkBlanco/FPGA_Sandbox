############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_array_partition -type complete -dim 3 "convolve_kernel" bufi
set_directive_array_partition -type complete -dim 3 "convolve_kernel" bufo
set_directive_pipeline "convolve_kernel/row_loop"
set_directive_array_partition -type complete -dim 3 "convolve_kernel" bufw
set_directive_array_partition -type complete -dim 4 "convolve_kernel" bufw
set_directive_resource -core RAM_2P_BRAM "convolve_kernel" bufo
