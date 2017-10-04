// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aesl_mux_load_5_3_x_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        empty_11_Addr_A,
        empty_11_EN_A,
        empty_11_WEN_A,
        empty_11_Din_A,
        empty_11_Dout_A,
        empty_12_Addr_A,
        empty_12_EN_A,
        empty_12_WEN_A,
        empty_12_Din_A,
        empty_12_Dout_A,
        empty_13_Addr_A,
        empty_13_EN_A,
        empty_13_WEN_A,
        empty_13_Din_A,
        empty_13_Dout_A,
        empty_14_Addr_A,
        empty_14_EN_A,
        empty_14_WEN_A,
        empty_14_Din_A,
        empty_14_Dout_A,
        empty_15_Addr_A,
        empty_15_EN_A,
        empty_15_WEN_A,
        empty_15_Din_A,
        empty_15_Dout_A,
        empty_16,
        empty_17,
        empty_18,
        empty,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
output  [31:0] empty_11_Addr_A;
output   empty_11_EN_A;
output  [3:0] empty_11_WEN_A;
output  [31:0] empty_11_Din_A;
input  [31:0] empty_11_Dout_A;
output  [31:0] empty_12_Addr_A;
output   empty_12_EN_A;
output  [3:0] empty_12_WEN_A;
output  [31:0] empty_12_Din_A;
input  [31:0] empty_12_Dout_A;
output  [31:0] empty_13_Addr_A;
output   empty_13_EN_A;
output  [3:0] empty_13_WEN_A;
output  [31:0] empty_13_Din_A;
input  [31:0] empty_13_Dout_A;
output  [31:0] empty_14_Addr_A;
output   empty_14_EN_A;
output  [3:0] empty_14_WEN_A;
output  [31:0] empty_14_Din_A;
input  [31:0] empty_14_Dout_A;
output  [31:0] empty_15_Addr_A;
output   empty_15_EN_A;
output  [3:0] empty_15_WEN_A;
output  [31:0] empty_15_Din_A;
input  [31:0] empty_15_Dout_A;
input  [2:0] empty_16;
input  [1:0] empty_17;
input  [1:0] empty_18;
input  [3:0] empty;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg empty_11_EN_A;
reg empty_12_EN_A;
reg empty_13_EN_A;
reg empty_14_EN_A;
reg empty_15_EN_A;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0_flag00000000;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_flag00011001;
reg   [3:0] tmp_16_reg_224;
reg   [2:0] tmp_19_reg_229;
reg   [2:0] ap_reg_pp0_iter1_tmp_19_reg_229;
reg   [2:0] ap_reg_pp0_iter2_tmp_19_reg_229;
wire   [31:0] tmp_23_fu_156_p2;
reg   [31:0] tmp_23_reg_237;
wire   [31:0] tmp_25_fu_175_p2;
reg   [31:0] tmp_25_reg_243;
reg   [31:0] empty_28_reg_277;
reg   [31:0] empty_29_reg_282;
reg   [31:0] empty_30_reg_287;
reg   [31:0] empty_31_reg_292;
reg   [31:0] empty_32_reg_297;
wire   [0:0] sel_tmp_fu_181_p2;
reg   [0:0] sel_tmp_reg_302;
wire   [0:0] sel_tmp2_fu_186_p2;
reg   [0:0] sel_tmp2_reg_307;
wire   [0:0] sel_tmp4_fu_191_p2;
reg   [0:0] sel_tmp4_reg_312;
wire   [0:0] sel_tmp6_fu_196_p2;
reg   [0:0] sel_tmp6_reg_317;
reg    ap_block_pp0_stage0_flag00011011;
wire   [3:0] tmp_fu_138_p3;
wire   [31:0] p_shl1_fu_146_p1;
wire   [31:0] p_cast_fu_134_p1;
wire   [31:0] tmp_s_fu_150_p2;
wire   [31:0] p_cast1_fu_130_p1;
wire   [31:0] tmp_20_fu_165_p2;
wire   [31:0] tmp_24_fu_170_p2;
wire   [31:0] p_cast2_fu_162_p1;
wire   [31:0] sel_tmp1_fu_201_p3;
wire   [31:0] sel_tmp3_fu_206_p3;
wire   [31:0] sel_tmp5_fu_212_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to3;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1))) begin
        ap_reg_pp0_iter1_tmp_19_reg_229 <= tmp_19_reg_229;
        tmp_16_reg_224 <= empty;
        tmp_19_reg_229 <= empty_16;
        tmp_23_reg_237 <= tmp_23_fu_156_p2;
        tmp_25_reg_243 <= tmp_25_fu_175_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1))) begin
        ap_reg_pp0_iter2_tmp_19_reg_229 <= ap_reg_pp0_iter1_tmp_19_reg_229;
        empty_28_reg_277 <= empty_15_Dout_A;
        empty_29_reg_282 <= empty_11_Dout_A;
        empty_30_reg_287 <= empty_12_Dout_A;
        empty_31_reg_292 <= empty_13_Dout_A;
        empty_32_reg_297 <= empty_14_Dout_A;
        sel_tmp2_reg_307 <= sel_tmp2_fu_186_p2;
        sel_tmp4_reg_312 <= sel_tmp4_fu_191_p2;
        sel_tmp6_reg_317 <= sel_tmp6_fu_196_p2;
        sel_tmp_reg_302 <= sel_tmp_fu_181_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_start) & (ap_block_pp0_stage0_flag00000000 == 1'b0)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter4)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_idle_pp0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2) & (1'b0 == ap_enable_reg_pp0_iter3) & (1'b0 == ap_enable_reg_pp0_iter4))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2) & (1'b0 == ap_enable_reg_pp0_iter3))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_start) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_idle_pp0_0to3))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_idle_pp0_0to3) & (1'b1 == ap_start))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        empty_11_EN_A = 1'b1;
    end else begin
        empty_11_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        empty_12_EN_A = 1'b1;
    end else begin
        empty_12_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        empty_13_EN_A = 1'b1;
    end else begin
        empty_13_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        empty_14_EN_A = 1'b1;
    end else begin
        empty_14_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        empty_15_EN_A = 1'b1;
    end else begin
        empty_15_EN_A = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_flag00011001 = ((1'b0 == ap_start) & (1'b1 == ap_start));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011011 = (((1'b0 == ap_start) & (1'b1 == ap_start)) | (ap_ce == 1'b0));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (1'b0 == ap_start);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return = ((sel_tmp6_reg_317[0:0] === 1'b1) ? empty_32_reg_297 : sel_tmp5_fu_212_p3);

assign empty_11_Addr_A = tmp_25_reg_243 << 32'd2;

assign empty_11_Din_A = 32'd0;

assign empty_11_WEN_A = 4'd0;

assign empty_12_Addr_A = tmp_25_reg_243 << 32'd2;

assign empty_12_Din_A = 32'd0;

assign empty_12_WEN_A = 4'd0;

assign empty_13_Addr_A = tmp_25_reg_243 << 32'd2;

assign empty_13_Din_A = 32'd0;

assign empty_13_WEN_A = 4'd0;

assign empty_14_Addr_A = tmp_25_reg_243 << 32'd2;

assign empty_14_Din_A = 32'd0;

assign empty_14_WEN_A = 4'd0;

assign empty_15_Addr_A = tmp_25_reg_243 << 32'd2;

assign empty_15_Din_A = 32'd0;

assign empty_15_WEN_A = 4'd0;

assign p_cast1_fu_130_p1 = empty_18;

assign p_cast2_fu_162_p1 = tmp_16_reg_224;

assign p_cast_fu_134_p1 = empty_17;

assign p_shl1_fu_146_p1 = tmp_fu_138_p3;

assign sel_tmp1_fu_201_p3 = ((sel_tmp_reg_302[0:0] === 1'b1) ? empty_29_reg_282 : empty_28_reg_277);

assign sel_tmp2_fu_186_p2 = ((ap_reg_pp0_iter2_tmp_19_reg_229 == 3'd1) ? 1'b1 : 1'b0);

assign sel_tmp3_fu_206_p3 = ((sel_tmp2_reg_307[0:0] === 1'b1) ? empty_30_reg_287 : sel_tmp1_fu_201_p3);

assign sel_tmp4_fu_191_p2 = ((ap_reg_pp0_iter2_tmp_19_reg_229 == 3'd2) ? 1'b1 : 1'b0);

assign sel_tmp5_fu_212_p3 = ((sel_tmp4_reg_312[0:0] === 1'b1) ? empty_31_reg_292 : sel_tmp3_fu_206_p3);

assign sel_tmp6_fu_196_p2 = ((ap_reg_pp0_iter2_tmp_19_reg_229 == 3'd3) ? 1'b1 : 1'b0);

assign sel_tmp_fu_181_p2 = ((ap_reg_pp0_iter2_tmp_19_reg_229 == 3'd0) ? 1'b1 : 1'b0);

assign tmp_20_fu_165_p2 = tmp_23_reg_237 << 32'd2;

assign tmp_23_fu_156_p2 = (tmp_s_fu_150_p2 + p_cast1_fu_130_p1);

assign tmp_24_fu_170_p2 = (tmp_23_reg_237 + tmp_20_fu_165_p2);

assign tmp_25_fu_175_p2 = (tmp_24_fu_170_p2 + p_cast2_fu_162_p1);

assign tmp_fu_138_p3 = {{empty_17}, {2'd0}};

assign tmp_s_fu_150_p2 = (p_shl1_fu_146_p1 - p_cast_fu_134_p1);

endmodule //aesl_mux_load_5_3_x_s