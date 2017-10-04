// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="convolve_kernel,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.174000,HLS_SYN_LAT=25351,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=1399,HLS_SYN_LUT=1208}" *)

module convolve_kernel (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bufw_Addr_A,
        bufw_EN_A,
        bufw_WEN_A,
        bufw_Din_A,
        bufw_Dout_A,
        bufw_Clk_A,
        bufw_Rst_A,
        bufi_Addr_A,
        bufi_EN_A,
        bufi_WEN_A,
        bufi_Din_A,
        bufi_Dout_A,
        bufi_Clk_A,
        bufi_Rst_A,
        bufo_Addr_A,
        bufo_EN_A,
        bufo_WEN_A,
        bufo_Din_A,
        bufo_Dout_A,
        bufo_Clk_A,
        bufo_Rst_A
);

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] bufw_Addr_A;
output   bufw_EN_A;
output  [3:0] bufw_WEN_A;
output  [31:0] bufw_Din_A;
input  [31:0] bufw_Dout_A;
output   bufw_Clk_A;
output   bufw_Rst_A;
output  [31:0] bufi_Addr_A;
output   bufi_EN_A;
output  [3:0] bufi_WEN_A;
output  [31:0] bufi_Din_A;
input  [31:0] bufi_Dout_A;
output   bufi_Clk_A;
output   bufi_Rst_A;
output  [31:0] bufo_Addr_A;
output   bufo_EN_A;
output  [3:0] bufo_WEN_A;
output  [31:0] bufo_Din_A;
input  [31:0] bufo_Dout_A;
output   bufo_Clk_A;
output   bufo_Rst_A;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg bufw_EN_A;
reg bufi_EN_A;
reg bufo_EN_A;
reg[3:0] bufo_WEN_A;

(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] row_b_cast6_cast_fu_161_p1;
reg   [5:0] row_b_cast6_cast_reg_455;
wire    ap_CS_fsm_state2;
wire   [2:0] row_b_cast_fu_165_p1;
reg   [2:0] row_b_cast_reg_460;
wire   [1:0] row_b_1_fu_175_p2;
reg   [1:0] row_b_1_reg_468;
wire   [5:0] col_b_cast5_cast_fu_181_p1;
reg   [5:0] col_b_cast5_cast_reg_473;
wire    ap_CS_fsm_state3;
wire   [2:0] col_b_cast_fu_185_p1;
reg   [2:0] col_b_cast_reg_478;
wire   [1:0] col_b_1_fu_195_p2;
reg   [1:0] col_b_1_reg_486;
wire  signed [5:0] tmp_10_cast_fu_223_p1;
reg  signed [5:0] tmp_10_cast_reg_491;
wire    ap_CS_fsm_state4;
reg   [4:0] bufo_addr_reg_496;
wire   [1:0] to_b_1_fu_260_p2;
reg   [1:0] to_b_1_reg_504;
wire   [63:0] tmp_17_fu_291_p2;
reg   [63:0] tmp_17_reg_509;
wire    ap_CS_fsm_state5;
wire  signed [6:0] tmp_19_cast_fu_315_p1;
reg  signed [6:0] tmp_19_cast_reg_514;
wire   [1:0] ti_b_1_fu_325_p2;
reg   [1:0] ti_b_1_reg_522;
wire   [8:0] tmp_22_fu_356_p2;
reg   [8:0] tmp_22_reg_527;
wire    ap_CS_fsm_state6;
wire   [2:0] i_1_fu_368_p2;
reg   [2:0] i_1_reg_535;
wire   [8:0] tmp_25_fu_404_p2;
reg   [8:0] tmp_25_reg_540;
wire   [0:0] tmp_7_fu_362_p2;
wire    ap_CS_fsm_state7;
wire   [2:0] j_1_fu_430_p2;
reg   [2:0] j_1_reg_553;
wire   [0:0] tmp_s_fu_424_p2;
reg   [31:0] bufw_load_reg_563;
wire    ap_CS_fsm_state8;
reg   [31:0] bufi_load_reg_568;
wire   [31:0] grp_fu_157_p2;
reg   [31:0] tmp_4_reg_573;
wire    ap_CS_fsm_state12;
reg   [31:0] bufo_load_reg_578;
wire   [31:0] grp_fu_153_p2;
reg   [31:0] tmp_6_reg_583;
wire    ap_CS_fsm_state17;
reg   [1:0] row_b_reg_87;
wire   [0:0] tmp_1_fu_189_p2;
reg   [1:0] col_b_reg_98;
wire   [0:0] tmp_3_fu_254_p2;
wire   [0:0] tmp_fu_169_p2;
reg   [1:0] to_b_reg_109;
wire   [0:0] tmp_5_fu_319_p2;
reg   [1:0] ti_b_reg_120;
reg   [2:0] i_reg_131;
reg   [2:0] j_reg_142;
wire    ap_CS_fsm_state18;
wire   [63:0] tmp_14_cast_fu_249_p1;
wire   [63:0] tmp_26_cast_fu_419_p1;
wire   [63:0] tmp_27_cast_fu_450_p1;
wire   [31:0] bufw_Addr_A_orig;
wire   [31:0] bufi_Addr_A_orig;
wire    ap_CS_fsm_state11;
wire   [31:0] bufo_Addr_A_orig;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state9;
wire   [3:0] tmp_8_fu_205_p3;
wire   [4:0] p_shl1_cast_fu_213_p1;
wire   [4:0] to_b_cast4_cast_fu_201_p1;
wire   [4:0] tmp_10_fu_217_p2;
wire   [5:0] tmp_11_fu_227_p2;
wire   [5:0] tmp_12_fu_232_p2;
wire   [5:0] tmp_13_fu_238_p2;
wire   [5:0] tmp_14_fu_244_p2;
wire   [5:0] ti_b_cast3_cast_fu_266_p1;
wire   [5:0] tmp_15_fu_270_p2;
wire   [7:0] tmp_16_fu_279_p3;
wire  signed [63:0] tmp_15_cast_fu_275_p1;
wire  signed [63:0] p_shl3_fu_287_p1;
wire   [4:0] tmp_18_fu_297_p3;
wire   [5:0] p_shl2_cast_fu_305_p1;
wire   [5:0] tmp_19_fu_309_p2;
wire   [63:0] i_cast2_fu_331_p1;
wire   [63:0] tmp_20_fu_335_p2;
wire   [6:0] tmp_24_fu_344_p1;
wire   [8:0] tmp_21_fu_340_p1;
wire   [8:0] p_shl4_cast_fu_348_p3;
wire   [2:0] tmp_9_fu_374_p2;
wire   [6:0] tmp_9_cast_cast_fu_379_p1;
wire   [6:0] tmp_23_fu_383_p2;
wire   [5:0] tmp_28_fu_392_p1;
wire   [8:0] p_shl5_cast_fu_396_p3;
wire  signed [8:0] tmp_23_cast_fu_388_p1;
wire   [8:0] j_cast1_cast_fu_410_p1;
wire   [8:0] tmp_26_fu_414_p2;
wire   [2:0] tmp_2_fu_436_p2;
wire   [8:0] tmp_2_cast_cast_fu_441_p1;
wire   [8:0] tmp_27_fu_445_p2;
reg   [17:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 18'd1;
end

convolve_kernel_fbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
convolve_kernel_fbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bufo_load_reg_578),
    .din1(tmp_4_reg_573),
    .ce(1'b1),
    .dout(grp_fu_153_p2)
);

convolve_kernel_fcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
convolve_kernel_fcud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bufw_load_reg_563),
    .din1(bufi_load_reg_568),
    .ce(1'b1),
    .dout(grp_fu_157_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == tmp_fu_169_p2))) begin
        col_b_reg_98 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == tmp_3_fu_254_p2))) begin
        col_b_reg_98 <= col_b_1_reg_486;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == tmp_5_fu_319_p2))) begin
        i_reg_131 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (tmp_s_fu_424_p2 == 1'd1))) begin
        i_reg_131 <= i_1_reg_535;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_7_fu_362_p2 == 1'd0))) begin
        j_reg_142 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        j_reg_142 <= j_1_reg_553;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_1_fu_189_p2 == 1'd1))) begin
        row_b_reg_87 <= row_b_1_reg_468;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        row_b_reg_87 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == tmp_3_fu_254_p2))) begin
        ti_b_reg_120 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (tmp_7_fu_362_p2 == 1'd1))) begin
        ti_b_reg_120 <= ti_b_1_reg_522;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == tmp_1_fu_189_p2))) begin
        to_b_reg_109 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == tmp_5_fu_319_p2))) begin
        to_b_reg_109 <= to_b_1_reg_504;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        bufi_load_reg_568 <= bufi_Dout_A;
        bufw_load_reg_563 <= bufw_Dout_A;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bufo_addr_reg_496 <= tmp_14_cast_fu_249_p1;
        tmp_10_cast_reg_491 <= tmp_10_cast_fu_223_p1;
        to_b_1_reg_504 <= to_b_1_fu_260_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        bufo_load_reg_578 <= bufo_Dout_A;
        tmp_4_reg_573 <= grp_fu_157_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        col_b_1_reg_486 <= col_b_1_fu_195_p2;
        col_b_cast5_cast_reg_473[1 : 0] <= col_b_cast5_cast_fu_181_p1[1 : 0];
        col_b_cast_reg_478[1 : 0] <= col_b_cast_fu_185_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_1_reg_535 <= i_1_fu_368_p2;
        tmp_22_reg_527 <= tmp_22_fu_356_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        j_1_reg_553 <= j_1_fu_430_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        row_b_1_reg_468 <= row_b_1_fu_175_p2;
        row_b_cast6_cast_reg_455[1 : 0] <= row_b_cast6_cast_fu_161_p1[1 : 0];
        row_b_cast_reg_460[1 : 0] <= row_b_cast_fu_165_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ti_b_1_reg_522 <= ti_b_1_fu_325_p2;
        tmp_17_reg_509 <= tmp_17_fu_291_p2;
        tmp_19_cast_reg_514 <= tmp_19_cast_fu_315_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (tmp_7_fu_362_p2 == 1'd0))) begin
        tmp_25_reg_540 <= tmp_25_fu_404_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        tmp_6_reg_583 <= grp_fu_153_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == tmp_fu_169_p2))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == tmp_fu_169_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        bufi_EN_A = 1'b1;
    end else begin
        bufi_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state11))) begin
        bufo_EN_A = 1'b1;
    end else begin
        bufo_EN_A = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        bufo_WEN_A = 4'd15;
    end else begin
        bufo_WEN_A = 4'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        bufw_EN_A = 1'b1;
    end else begin
        bufw_EN_A = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (1'd1 == tmp_fu_169_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_1_fu_189_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == tmp_3_fu_254_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == tmp_5_fu_319_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (tmp_7_fu_362_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (tmp_s_fu_424_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
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
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bufi_Addr_A = bufi_Addr_A_orig << 32'd2;

assign bufi_Addr_A_orig = tmp_27_cast_fu_450_p1;

assign bufi_Clk_A = ap_clk;

assign bufi_Din_A = 32'd0;

assign bufi_Rst_A = ap_rst;

assign bufi_WEN_A = 4'd0;

assign bufo_Addr_A = bufo_Addr_A_orig << 32'd2;

assign bufo_Addr_A_orig = bufo_addr_reg_496;

assign bufo_Clk_A = ap_clk;

assign bufo_Din_A = tmp_6_reg_583;

assign bufo_Rst_A = ap_rst;

assign bufw_Addr_A = bufw_Addr_A_orig << 32'd2;

assign bufw_Addr_A_orig = tmp_26_cast_fu_419_p1;

assign bufw_Clk_A = ap_clk;

assign bufw_Din_A = 32'd0;

assign bufw_Rst_A = ap_rst;

assign bufw_WEN_A = 4'd0;

assign col_b_1_fu_195_p2 = (col_b_reg_98 + 2'd1);

assign col_b_cast5_cast_fu_181_p1 = col_b_reg_98;

assign col_b_cast_fu_185_p1 = col_b_reg_98;

assign i_1_fu_368_p2 = (3'd1 + i_reg_131);

assign i_cast2_fu_331_p1 = i_reg_131;

assign j_1_fu_430_p2 = (j_reg_142 + 3'd1);

assign j_cast1_cast_fu_410_p1 = j_reg_142;

assign p_shl1_cast_fu_213_p1 = tmp_8_fu_205_p3;

assign p_shl2_cast_fu_305_p1 = tmp_18_fu_297_p3;

assign p_shl3_fu_287_p1 = $signed(tmp_16_fu_279_p3);

assign p_shl4_cast_fu_348_p3 = {{tmp_24_fu_344_p1}, {2'd0}};

assign p_shl5_cast_fu_396_p3 = {{tmp_28_fu_392_p1}, {3'd0}};

assign row_b_1_fu_175_p2 = (row_b_reg_87 + 2'd1);

assign row_b_cast6_cast_fu_161_p1 = row_b_reg_87;

assign row_b_cast_fu_165_p1 = row_b_reg_87;

assign ti_b_1_fu_325_p2 = (ti_b_reg_120 + 2'd1);

assign ti_b_cast3_cast_fu_266_p1 = ti_b_reg_120;

assign tmp_10_cast_fu_223_p1 = $signed(tmp_10_fu_217_p2);

assign tmp_10_fu_217_p2 = (p_shl1_cast_fu_213_p1 - to_b_cast4_cast_fu_201_p1);

assign tmp_11_fu_227_p2 = ($signed(row_b_cast6_cast_reg_455) + $signed(tmp_10_cast_fu_223_p1));

assign tmp_12_fu_232_p2 = tmp_11_fu_227_p2 << 6'd2;

assign tmp_13_fu_238_p2 = (tmp_12_fu_232_p2 - tmp_11_fu_227_p2);

assign tmp_14_cast_fu_249_p1 = tmp_14_fu_244_p2;

assign tmp_14_fu_244_p2 = (col_b_cast5_cast_reg_473 + tmp_13_fu_238_p2);

assign tmp_15_cast_fu_275_p1 = $signed(tmp_15_fu_270_p2);

assign tmp_15_fu_270_p2 = ($signed(tmp_10_cast_reg_491) + $signed(ti_b_cast3_cast_fu_266_p1));

assign tmp_16_fu_279_p3 = {{tmp_15_fu_270_p2}, {2'd0}};

assign tmp_17_fu_291_p2 = ($signed(tmp_15_cast_fu_275_p1) + $signed(p_shl3_fu_287_p1));

assign tmp_18_fu_297_p3 = {{ti_b_reg_120}, {3'd0}};

assign tmp_19_cast_fu_315_p1 = $signed(tmp_19_fu_309_p2);

assign tmp_19_fu_309_p2 = (p_shl2_cast_fu_305_p1 - ti_b_cast3_cast_fu_266_p1);

assign tmp_1_fu_189_p2 = ((col_b_reg_98 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_20_fu_335_p2 = (tmp_17_reg_509 + i_cast2_fu_331_p1);

assign tmp_21_fu_340_p1 = tmp_20_fu_335_p2[8:0];

assign tmp_22_fu_356_p2 = (tmp_21_fu_340_p1 + p_shl4_cast_fu_348_p3);

assign tmp_23_cast_fu_388_p1 = $signed(tmp_23_fu_383_p2);

assign tmp_23_fu_383_p2 = ($signed(tmp_9_cast_cast_fu_379_p1) + $signed(tmp_19_cast_reg_514));

assign tmp_24_fu_344_p1 = tmp_20_fu_335_p2[6:0];

assign tmp_25_fu_404_p2 = ($signed(p_shl5_cast_fu_396_p3) - $signed(tmp_23_cast_fu_388_p1));

assign tmp_26_cast_fu_419_p1 = tmp_26_fu_414_p2;

assign tmp_26_fu_414_p2 = (tmp_22_reg_527 + j_cast1_cast_fu_410_p1);

assign tmp_27_cast_fu_450_p1 = tmp_27_fu_445_p2;

assign tmp_27_fu_445_p2 = (tmp_25_reg_540 + tmp_2_cast_cast_fu_441_p1);

assign tmp_28_fu_392_p1 = tmp_23_fu_383_p2[5:0];

assign tmp_2_cast_cast_fu_441_p1 = tmp_2_fu_436_p2;

assign tmp_2_fu_436_p2 = (col_b_cast_reg_478 + j_reg_142);

assign tmp_3_fu_254_p2 = ((to_b_reg_109 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_5_fu_319_p2 = ((ti_b_reg_120 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_7_fu_362_p2 = ((i_reg_131 == 3'd5) ? 1'b1 : 1'b0);

assign tmp_8_fu_205_p3 = {{to_b_reg_109}, {2'd0}};

assign tmp_9_cast_cast_fu_379_p1 = tmp_9_fu_374_p2;

assign tmp_9_fu_374_p2 = (i_reg_131 + row_b_cast_reg_460);

assign tmp_fu_169_p2 = ((row_b_reg_87 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_s_fu_424_p2 = ((j_reg_142 == 3'd5) ? 1'b1 : 1'b0);

assign to_b_1_fu_260_p2 = (2'd1 + to_b_reg_109);

assign to_b_cast4_cast_fu_201_p1 = to_b_reg_109;

always @ (posedge ap_clk) begin
    row_b_cast6_cast_reg_455[5:2] <= 4'b0000;
    row_b_cast_reg_460[2] <= 1'b0;
    col_b_cast5_cast_reg_473[5:2] <= 4'b0000;
    col_b_cast_reg_478[2] <= 1'b0;
end

endmodule //convolve_kernel