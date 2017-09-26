// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.742000,HLS_SYN_LAT=14,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=44,HLS_SYN_FF=2961,HLS_SYN_LUT=1046}" *)

module fir (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y,
        y_ap_vld,
        c_address0,
        c_ce0,
        c_q0,
        x,
        x_ap_vld
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] y;
output   y_ap_vld;
output  [3:0] c_address0;
output   c_ce0;
input  [31:0] c_q0;
input  [31:0] x;
input   x_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_ap_vld;
reg[3:0] c_address0;
reg c_ce0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] x_preg;
reg  signed [31:0] x_in_sig;
reg    x_ap_vld_preg;
reg    x_ap_vld_in_sig;
reg  signed [31:0] shift_reg_9;
reg  signed [31:0] shift_reg_8;
reg  signed [31:0] shift_reg_7;
reg  signed [31:0] shift_reg_6;
reg  signed [31:0] shift_reg_5;
reg  signed [31:0] shift_reg_4;
reg  signed [31:0] shift_reg_3;
reg  signed [31:0] shift_reg_2;
reg  signed [31:0] shift_reg_1;
reg  signed [31:0] shift_reg_0;
reg    x_blk_n;
wire    ap_CS_fsm_state13;
reg  signed [31:0] reg_188;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state11;
reg  signed [31:0] reg_192;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state12;
reg  signed [31:0] reg_196;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state10;
wire   [31:0] grp_fu_204_p2;
reg   [31:0] tmp_6_reg_442;
wire   [31:0] grp_fu_220_p2;
reg   [31:0] tmp_6_1_reg_447;
wire   [31:0] tmp1_fu_226_p2;
reg   [31:0] tmp1_reg_462;
wire    ap_CS_fsm_state7;
reg  signed [31:0] c_load_5_reg_482;
wire   [31:0] grp_fu_240_p2;
reg   [31:0] tmp_6_2_reg_492;
wire   [31:0] grp_fu_256_p2;
reg   [31:0] tmp_6_3_reg_497;
wire   [31:0] grp_fu_272_p2;
reg   [31:0] tmp_6_4_reg_502;
wire   [31:0] tmp2_fu_282_p2;
reg   [31:0] tmp2_reg_517;
wire   [31:0] grp_fu_297_p2;
reg   [31:0] tmp_6_5_reg_542;
wire   [31:0] grp_fu_312_p2;
reg   [31:0] tmp_6_6_reg_547;
wire   [31:0] grp_fu_328_p2;
reg   [31:0] tmp_6_7_reg_552;
wire   [31:0] tmp6_fu_334_p2;
reg   [31:0] tmp6_reg_562;
wire   [31:0] grp_fu_348_p2;
reg   [31:0] tmp_6_8_reg_582;
wire    ap_CS_fsm_state14;
wire   [31:0] grp_fu_364_p2;
reg   [31:0] tmp_6_9_reg_587;
wire   [31:0] grp_fu_376_p2;
reg   [31:0] tmp_6_s_reg_592;
wire    ap_CS_fsm_state15;
wire   [31:0] tmp3_fu_278_p2;
wire   [31:0] tmp8_fu_390_p2;
wire   [31:0] tmp7_fu_394_p2;
wire   [31:0] tmp5_fu_386_p2;
wire   [31:0] tmp4_fu_399_p2;
wire   [31:0] tmp_fu_382_p2;
reg    grp_fu_348_ce;
reg    grp_fu_364_ce;
reg    grp_fu_376_ce;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 x_preg = 32'd0;
#0 x_ap_vld_preg = 1'b0;
#0 shift_reg_9 = 32'd0;
#0 shift_reg_8 = 32'd0;
#0 shift_reg_7 = 32'd0;
#0 shift_reg_6 = 32'd0;
#0 shift_reg_5 = 32'd0;
#0 shift_reg_4 = 32'd0;
#0 shift_reg_3 = 32'd0;
#0 shift_reg_2 = 32'd0;
#0 shift_reg_1 = 32'd0;
#0 shift_reg_0 = 32'd0;
end

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_9),
    .din1(reg_188),
    .ce(1'b1),
    .dout(grp_fu_204_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_8),
    .din1(reg_192),
    .ce(1'b1),
    .dout(grp_fu_220_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_7),
    .din1(reg_196),
    .ce(1'b1),
    .dout(grp_fu_240_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_6),
    .din1(reg_188),
    .ce(1'b1),
    .dout(grp_fu_256_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_5),
    .din1(reg_192),
    .ce(1'b1),
    .dout(grp_fu_272_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_4),
    .din1(c_load_5_reg_482),
    .ce(1'b1),
    .dout(grp_fu_297_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_3),
    .din1(reg_188),
    .ce(1'b1),
    .dout(grp_fu_312_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_2),
    .din1(reg_192),
    .ce(1'b1),
    .dout(grp_fu_328_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_1),
    .din1(reg_196),
    .ce(grp_fu_348_ce),
    .dout(grp_fu_348_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(shift_reg_0),
    .din1(reg_188),
    .ce(grp_fu_364_ce),
    .dout(grp_fu_364_p2)
);

fir_mul_32s_32s_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fir_mul_32s_32s_3bkb_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_192),
    .din1(x_in_sig),
    .ce(grp_fu_376_ce),
    .dout(grp_fu_376_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        x_ap_vld_preg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            x_ap_vld_preg <= 1'b0;
        end else if (((1'b1 == x_ap_vld) & ~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)))) begin
            x_ap_vld_preg <= x_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        x_preg <= 32'd0;
    end else begin
        if (((1'b1 == x_ap_vld) & ~((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)))) begin
            x_preg <= x;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        c_load_5_reg_482 <= c_q0;
        shift_reg_6 <= shift_reg_5;
        shift_reg_7 <= shift_reg_6;
        shift_reg_8 <= shift_reg_7;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_188 <= c_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12))) begin
        reg_192 <= c_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_196 <= c_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (x_ap_vld_in_sig == 1'b1))) begin
        shift_reg_0 <= x_in_sig;
        shift_reg_1 <= shift_reg_0;
        shift_reg_2 <= shift_reg_1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        shift_reg_3 <= shift_reg_2;
        shift_reg_4 <= shift_reg_3;
        shift_reg_5 <= shift_reg_4;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        shift_reg_9 <= shift_reg_8;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp1_reg_462 <= tmp1_fu_226_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp2_reg_517 <= tmp2_fu_282_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp6_reg_562 <= tmp6_fu_334_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_6_1_reg_447 <= grp_fu_220_p2;
        tmp_6_reg_442 <= grp_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_6_2_reg_492 <= grp_fu_240_p2;
        tmp_6_3_reg_497 <= grp_fu_256_p2;
        tmp_6_4_reg_502 <= grp_fu_272_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_6_5_reg_542 <= grp_fu_297_p2;
        tmp_6_6_reg_547 <= grp_fu_312_p2;
        tmp_6_7_reg_552 <= grp_fu_328_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        tmp_6_8_reg_582 <= grp_fu_348_p2;
        tmp_6_9_reg_587 <= grp_fu_364_p2;
        tmp_6_s_reg_592 <= grp_fu_376_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        c_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        c_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        c_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        c_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        c_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        c_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        c_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        c_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        c_address0 = 64'd10;
    end else begin
        c_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | (1'b1 == ap_CS_fsm_state7))) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state13) & (x_ap_vld_in_sig == 1'b1)) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_348_ce = 1'b1;
    end else begin
        grp_fu_348_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state13) & (x_ap_vld_in_sig == 1'b1)) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_364_ce = 1'b1;
    end else begin
        grp_fu_364_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state13) & (x_ap_vld_in_sig == 1'b1)) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_376_ce = 1'b1;
    end else begin
        grp_fu_376_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == x_ap_vld)) begin
        x_ap_vld_in_sig = x_ap_vld;
    end else begin
        x_ap_vld_in_sig = x_ap_vld_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        x_blk_n = x_ap_vld;
    end else begin
        x_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == x_ap_vld)) begin
        x_in_sig = x;
    end else begin
        x_in_sig = x_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (x_ap_vld_in_sig == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign tmp1_fu_226_p2 = (tmp_6_reg_442 + tmp_6_1_reg_447);

assign tmp2_fu_282_p2 = (tmp3_fu_278_p2 + tmp_6_2_reg_492);

assign tmp3_fu_278_p2 = (tmp_6_3_reg_497 + tmp_6_4_reg_502);

assign tmp4_fu_399_p2 = (tmp7_fu_394_p2 + tmp5_fu_386_p2);

assign tmp5_fu_386_p2 = (tmp6_reg_562 + tmp_6_5_reg_542);

assign tmp6_fu_334_p2 = (tmp_6_6_reg_547 + tmp_6_7_reg_552);

assign tmp7_fu_394_p2 = (tmp8_fu_390_p2 + tmp_6_8_reg_582);

assign tmp8_fu_390_p2 = (tmp_6_9_reg_587 + tmp_6_s_reg_592);

assign tmp_fu_382_p2 = (tmp2_reg_517 + tmp1_reg_462);

assign y = (tmp4_fu_399_p2 + tmp_fu_382_p2);

endmodule //fir