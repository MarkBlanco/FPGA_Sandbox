-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity convolve_kernel is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 4;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    bufw_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    bufw_EN_A : OUT STD_LOGIC;
    bufw_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    bufw_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    bufw_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    bufw_Clk_A : OUT STD_LOGIC;
    bufw_Rst_A : OUT STD_LOGIC;
    bufi_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    bufi_EN_A : OUT STD_LOGIC;
    bufi_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    bufi_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    bufi_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    bufi_Clk_A : OUT STD_LOGIC;
    bufi_Rst_A : OUT STD_LOGIC;
    bufo_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    bufo_EN_A : OUT STD_LOGIC;
    bufo_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    bufo_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    bufo_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0);
    bufo_Clk_A : OUT STD_LOGIC;
    bufo_Rst_A : OUT STD_LOGIC;
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of convolve_kernel is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "convolve_kernel,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.174000,HLS_SYN_LAT=25351,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=1218,HLS_SYN_LUT=1185}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (17 downto 0) := "000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (17 downto 0) := "000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (17 downto 0) := "000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (17 downto 0) := "000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (17 downto 0) := "000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (17 downto 0) := "000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (17 downto 0) := "000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (17 downto 0) := "000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (17 downto 0) := "000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (17 downto 0) := "001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (17 downto 0) := "010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (17 downto 0) := "100000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal row_b_cast6_cast_fu_169_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal row_b_cast6_cast_reg_503 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal row_b_1_fu_179_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal row_b_1_reg_511 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_cast_fu_193_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_cast_reg_516 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_fu_173_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal col_b_cast5_cast_fu_197_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal col_b_cast5_cast_reg_521 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal col_b_1_fu_207_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal col_b_1_reg_529 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_4_cast_fu_221_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_cast_reg_534 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_cast_fu_247_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_12_cast_reg_539 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal bufo_addr_reg_544 : STD_LOGIC_VECTOR (4 downto 0);
    signal to_b_1_fu_284_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal to_b_1_reg_552 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_19_fu_315_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_19_reg_557 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_22_fu_345_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_22_reg_562 : STD_LOGIC_VECTOR (5 downto 0);
    signal ti_b_1_fu_357_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ti_b_1_reg_570 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_25_fu_388_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_25_reg_575 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_1_fu_404_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_reg_583 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_29_fu_448_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_29_reg_588 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_9_fu_398_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal j_1_fu_478_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_1_reg_601 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_3_fu_472_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bufw_load_reg_611 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal bufi_load_reg_616 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_165_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_621 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal bufo_load_reg_626 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_161_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_reg_631 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal row_b_reg_95 : STD_LOGIC_VECTOR (1 downto 0);
    signal col_b_reg_106 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_5_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal to_b_reg_117 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_7_fu_351_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ti_b_reg_128 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_139 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_150 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal tmp_16_cast_fu_273_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_30_cast_fu_463_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_31_cast_fu_498_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal bufo_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_1_fu_185_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_4_fu_213_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_11_fu_229_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl1_cast_fu_237_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal to_b_cast4_cast_fu_225_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_12_fu_241_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_13_fu_251_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_14_fu_256_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_15_fu_262_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_16_fu_268_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ti_b_cast3_cast_fu_290_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_17_fu_294_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_18_fu_303_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_17_cast_fu_299_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_shl4_fu_311_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_20_fu_321_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_21_fu_333_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_shl3_cast_fu_341_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl2_cast_fu_329_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_cast2_fu_363_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_fu_367_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_27_fu_376_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_24_fu_372_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl5_cast_fu_380_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_cast_fu_394_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_s_fu_410_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_cast_cast_fu_415_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_26_fu_419_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_28_fu_424_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_32_fu_436_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl6_cast_fu_432_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl7_cast_fu_444_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal j_cast1_cast_fu_454_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_30_fu_458_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal j_cast_fu_468_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_6_fu_484_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_6_cast_cast_fu_489_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_31_fu_493_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (17 downto 0);

    component convolve_kernel_fbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component convolve_kernel_fcud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component convolve_kernel_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC );
    end component;



begin
    convolve_kernel_control_s_axi_U : component convolve_kernel_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle);

    convolve_kernel_fbkb_U0 : component convolve_kernel_fbkb
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => bufo_load_reg_626,
        din1 => tmp_8_reg_621,
        ce => ap_const_logic_1,
        dout => grp_fu_161_p2);

    convolve_kernel_fcud_U1 : component convolve_kernel_fcud
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => bufw_load_reg_611,
        din1 => bufi_load_reg_616,
        ce => ap_const_logic_1,
        dout => grp_fu_165_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    col_b_reg_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = tmp_5_fu_278_p2))) then 
                col_b_reg_106 <= col_b_1_reg_529;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_173_p2 = ap_const_lv1_0))) then 
                col_b_reg_106 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    i_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = tmp_7_fu_351_p2))) then 
                i_reg_139 <= ap_const_lv3_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_3_fu_472_p2 = ap_const_lv1_1))) then 
                i_reg_139 <= i_1_reg_583;
            end if; 
        end if;
    end process;

    j_reg_150_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = tmp_9_fu_398_p2))) then 
                j_reg_150 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
                j_reg_150 <= j_1_reg_601;
            end if; 
        end if;
    end process;

    row_b_reg_95_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_201_p2 = ap_const_lv1_1))) then 
                row_b_reg_95 <= row_b_1_reg_511;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                row_b_reg_95 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    ti_b_reg_128_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = tmp_5_fu_278_p2))) then 
                ti_b_reg_128 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (tmp_9_fu_398_p2 = ap_const_lv1_1))) then 
                ti_b_reg_128 <= ti_b_1_reg_570;
            end if; 
        end if;
    end process;

    to_b_reg_117_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_1 = tmp_7_fu_351_p2))) then 
                to_b_reg_117 <= to_b_1_reg_552;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = tmp_2_fu_201_p2))) then 
                to_b_reg_117 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                bufi_load_reg_616 <= bufi_Dout_A;
                bufw_load_reg_611 <= bufw_Dout_A;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                bufo_addr_reg_544 <= tmp_16_cast_fu_273_p1(5 - 1 downto 0);
                tmp_12_cast_reg_539 <= tmp_12_cast_fu_247_p1;
                to_b_1_reg_552 <= to_b_1_fu_284_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                bufo_load_reg_626 <= bufo_Dout_A;
                tmp_8_reg_621 <= grp_fu_165_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                col_b_1_reg_529 <= col_b_1_fu_207_p2;
                    col_b_cast5_cast_reg_521(1 downto 0) <= col_b_cast5_cast_fu_197_p1(1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                i_1_reg_583 <= i_1_fu_404_p2;
                tmp_25_reg_575 <= tmp_25_fu_388_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                j_1_reg_601 <= j_1_fu_478_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                row_b_1_reg_511 <= row_b_1_fu_179_p2;
                    row_b_cast6_cast_reg_503(1 downto 0) <= row_b_cast6_cast_fu_169_p1(1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                ti_b_1_reg_570 <= ti_b_1_fu_357_p2;
                tmp_19_reg_557 <= tmp_19_fu_315_p2;
                    tmp_22_reg_562(5 downto 1) <= tmp_22_fu_345_p2(5 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state17)) then
                tmp_10_reg_631 <= grp_fu_161_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_173_p2 = ap_const_lv1_0))) then
                    tmp_1_cast_reg_516(2 downto 1) <= tmp_1_cast_fu_193_p1(2 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = tmp_9_fu_398_p2))) then
                    tmp_29_reg_588(9 downto 1) <= tmp_29_fu_448_p2(9 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = tmp_2_fu_201_p2))) then
                    tmp_4_cast_reg_534(2 downto 1) <= tmp_4_cast_fu_221_p1(2 downto 1);
            end if;
        end if;
    end process;
    row_b_cast6_cast_reg_503(5 downto 2) <= "0000";
    tmp_1_cast_reg_516(0) <= '0';
    tmp_1_cast_reg_516(3) <= '0';
    col_b_cast5_cast_reg_521(5 downto 2) <= "0000";
    tmp_4_cast_reg_534(0) <= '0';
    tmp_4_cast_reg_534(3) <= '0';
    tmp_22_reg_562(0) <= '0';
    tmp_29_reg_588(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_173_p2, ap_CS_fsm_state3, tmp_2_fu_201_p2, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, tmp_9_fu_398_p2, ap_CS_fsm_state7, tmp_3_fu_472_p2, tmp_5_fu_278_p2, tmp_7_fu_351_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_173_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_201_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_1 = tmp_5_fu_278_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_1 = tmp_7_fu_351_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (tmp_9_fu_398_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_3_fu_472_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_173_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_173_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_173_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_173_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    bufi_Addr_A <= std_logic_vector(shift_left(unsigned(tmp_31_cast_fu_498_p1),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    bufi_Clk_A <= ap_clk;
    bufi_Din_A <= ap_const_lv32_0;

    bufi_EN_A_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            bufi_EN_A <= ap_const_logic_1;
        else 
            bufi_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    bufi_Rst_A <= ap_rst_n_inv;
    bufi_WEN_A <= ap_const_lv4_0;
    bufo_Addr_A <= std_logic_vector(shift_left(unsigned(bufo_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    bufo_Addr_A_orig <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bufo_addr_reg_544),32));
    bufo_Clk_A <= ap_clk;
    bufo_Din_A <= tmp_10_reg_631;

    bufo_EN_A_assign_proc : process(ap_CS_fsm_state18, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state18) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            bufo_EN_A <= ap_const_logic_1;
        else 
            bufo_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    bufo_Rst_A <= ap_rst_n_inv;

    bufo_WEN_A_assign_proc : process(ap_CS_fsm_state18)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
            bufo_WEN_A <= ap_const_lv4_F;
        else 
            bufo_WEN_A <= ap_const_lv4_0;
        end if; 
    end process;

    bufw_Addr_A <= std_logic_vector(shift_left(unsigned(tmp_30_cast_fu_463_p1),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    bufw_Clk_A <= ap_clk;
    bufw_Din_A <= ap_const_lv32_0;

    bufw_EN_A_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            bufw_EN_A <= ap_const_logic_1;
        else 
            bufw_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    bufw_Rst_A <= ap_rst_n_inv;
    bufw_WEN_A <= ap_const_lv4_0;
    col_b_1_fu_207_p2 <= std_logic_vector(unsigned(col_b_reg_106) + unsigned(ap_const_lv2_1));
    col_b_cast5_cast_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col_b_reg_106),6));
    i_1_fu_404_p2 <= std_logic_vector(unsigned(ap_const_lv3_1) + unsigned(i_reg_139));
    i_cast2_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_139),32));
    i_cast_fu_394_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_139),4));
    j_1_fu_478_p2 <= std_logic_vector(unsigned(j_reg_150) + unsigned(ap_const_lv3_1));
    j_cast1_cast_fu_454_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_150),9));
    j_cast_fu_468_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_150),4));
    p_shl1_cast_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_11_fu_229_p3),5));
    p_shl2_cast_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_20_fu_321_p3),6));
    p_shl3_cast_fu_341_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_21_fu_333_p3),6));
        p_shl4_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_18_fu_303_p3),32));

    p_shl5_cast_fu_380_p3 <= (tmp_27_fu_376_p1 & ap_const_lv2_0);
    p_shl6_cast_fu_432_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_28_fu_424_p3),10));
    p_shl7_cast_fu_444_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_32_fu_436_p3),10));
    row_b_1_fu_179_p2 <= std_logic_vector(unsigned(row_b_reg_95) + unsigned(ap_const_lv2_1));
    row_b_cast6_cast_fu_169_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(row_b_reg_95),6));
    ti_b_1_fu_357_p2 <= std_logic_vector(unsigned(ti_b_reg_128) + unsigned(ap_const_lv2_1));
    ti_b_cast3_cast_fu_290_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ti_b_reg_128),6));
    tmp_11_fu_229_p3 <= (to_b_reg_117 & ap_const_lv2_0);
        tmp_12_cast_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_12_fu_241_p2),6));

    tmp_12_fu_241_p2 <= std_logic_vector(unsigned(p_shl1_cast_fu_237_p1) - unsigned(to_b_cast4_cast_fu_225_p1));
    tmp_13_fu_251_p2 <= std_logic_vector(unsigned(row_b_cast6_cast_reg_503) + unsigned(tmp_12_cast_fu_247_p1));
    tmp_14_fu_256_p2 <= std_logic_vector(shift_left(unsigned(tmp_13_fu_251_p2),to_integer(unsigned('0' & ap_const_lv6_2(6-1 downto 0)))));
    tmp_15_fu_262_p2 <= std_logic_vector(unsigned(tmp_14_fu_256_p2) - unsigned(tmp_13_fu_251_p2));
    tmp_16_cast_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_16_fu_268_p2),32));
    tmp_16_fu_268_p2 <= std_logic_vector(unsigned(col_b_cast5_cast_reg_521) + unsigned(tmp_15_fu_262_p2));
        tmp_17_cast_fu_299_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_17_fu_294_p2),32));

    tmp_17_fu_294_p2 <= std_logic_vector(signed(tmp_12_cast_reg_539) + signed(ti_b_cast3_cast_fu_290_p1));
    tmp_18_fu_303_p3 <= (tmp_17_fu_294_p2 & ap_const_lv2_0);
    tmp_19_fu_315_p2 <= std_logic_vector(signed(tmp_17_cast_fu_299_p1) + signed(p_shl4_fu_311_p1));
    tmp_1_cast_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_185_p3),4));
    tmp_1_fu_185_p3 <= (row_b_reg_95 & ap_const_lv1_0);
    tmp_20_fu_321_p3 <= (ti_b_reg_128 & ap_const_lv3_0);
    tmp_21_fu_333_p3 <= (ti_b_reg_128 & ap_const_lv1_0);
    tmp_22_fu_345_p2 <= std_logic_vector(unsigned(p_shl3_cast_fu_341_p1) + unsigned(p_shl2_cast_fu_329_p1));
    tmp_23_fu_367_p2 <= std_logic_vector(unsigned(tmp_19_reg_557) + unsigned(i_cast2_fu_363_p1));
    tmp_24_fu_372_p1 <= tmp_23_fu_367_p2(9 - 1 downto 0);
    tmp_25_fu_388_p2 <= std_logic_vector(unsigned(tmp_24_fu_372_p1) + unsigned(p_shl5_cast_fu_380_p3));
    tmp_26_fu_419_p2 <= std_logic_vector(unsigned(tmp_cast_cast_fu_415_p1) + unsigned(tmp_22_reg_562));
    tmp_27_fu_376_p1 <= tmp_23_fu_367_p2(7 - 1 downto 0);
    tmp_28_fu_424_p3 <= (tmp_26_fu_419_p2 & ap_const_lv3_0);
    tmp_29_fu_448_p2 <= std_logic_vector(unsigned(p_shl6_cast_fu_432_p1) + unsigned(p_shl7_cast_fu_444_p1));
    tmp_2_fu_201_p2 <= "1" when (col_b_reg_106 = ap_const_lv2_3) else "0";
    tmp_30_cast_fu_463_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_30_fu_458_p2),32));
    tmp_30_fu_458_p2 <= std_logic_vector(unsigned(tmp_25_reg_575) + unsigned(j_cast1_cast_fu_454_p1));
    tmp_31_cast_fu_498_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_31_fu_493_p2),32));
    tmp_31_fu_493_p2 <= std_logic_vector(unsigned(tmp_29_reg_588) + unsigned(tmp_6_cast_cast_fu_489_p1));
    tmp_32_fu_436_p3 <= (tmp_26_fu_419_p2 & ap_const_lv1_0);
    tmp_3_fu_472_p2 <= "1" when (j_reg_150 = ap_const_lv3_5) else "0";
    tmp_4_cast_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_213_p3),4));
    tmp_4_fu_213_p3 <= (col_b_reg_106 & ap_const_lv1_0);
    tmp_5_fu_278_p2 <= "1" when (to_b_reg_117 = ap_const_lv2_3) else "0";
    tmp_6_cast_cast_fu_489_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_6_fu_484_p2),10));
    tmp_6_fu_484_p2 <= std_logic_vector(unsigned(tmp_4_cast_reg_534) + unsigned(j_cast_fu_468_p1));
    tmp_7_fu_351_p2 <= "1" when (ti_b_reg_128 = ap_const_lv2_3) else "0";
    tmp_9_fu_398_p2 <= "1" when (i_reg_139 = ap_const_lv3_5) else "0";
    tmp_cast_cast_fu_415_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_410_p2),6));
    tmp_fu_173_p2 <= "1" when (row_b_reg_95 = ap_const_lv2_3) else "0";
    tmp_s_fu_410_p2 <= std_logic_vector(unsigned(i_cast_fu_394_p1) + unsigned(tmp_1_cast_reg_516));
    to_b_1_fu_284_p2 <= std_logic_vector(unsigned(ap_const_lv2_1) + unsigned(to_b_reg_117));
    to_b_cast4_cast_fu_225_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(to_b_reg_117),5));
end behav;