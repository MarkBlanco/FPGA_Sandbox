-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_ap_vld : OUT STD_LOGIC;
    c_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    x : IN STD_LOGIC_VECTOR (31 downto 0);
    x_ap_vld : IN STD_LOGIC );
end;


architecture behav of fir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.742000,HLS_SYN_LAT=14,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=44,HLS_SYN_FF=2961,HLS_SYN_LUT=1046}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (14 downto 0) := "000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (14 downto 0) := "000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (14 downto 0) := "000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (14 downto 0) := "000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (14 downto 0) := "000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (14 downto 0) := "000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (14 downto 0) := "000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (14 downto 0) := "000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (14 downto 0) := "000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (14 downto 0) := "001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (14 downto 0) := "010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (14 downto 0) := "100000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv64_A : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001010";
    constant ap_const_lv64_9 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001001";
    constant ap_const_lv64_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001000";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_4 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000100";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal x_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal x_in_sig : STD_LOGIC_VECTOR (31 downto 0);
    signal x_ap_vld_preg : STD_LOGIC := '0';
    signal x_ap_vld_in_sig : STD_LOGIC;
    signal shift_reg_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal shift_reg_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal x_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal reg_188 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal reg_192 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal reg_196 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_fu_204_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_reg_442 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_220_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_1_reg_447 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp1_fu_226_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp1_reg_462 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal c_load_5_reg_482 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_240_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_2_reg_492 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_256_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_3_reg_497 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_272_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_4_reg_502 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_fu_282_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_reg_517 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_297_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_5_reg_542 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_312_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_6_reg_547 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_328_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_7_reg_552 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp6_fu_334_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp6_reg_562 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_348_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_8_reg_582 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal grp_fu_364_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_9_reg_587 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_376_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_s_reg_592 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal tmp3_fu_278_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp8_fu_390_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp7_fu_394_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp5_fu_386_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp4_fu_399_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_382_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_348_ce : STD_LOGIC;
    signal grp_fu_364_ce : STD_LOGIC;
    signal grp_fu_376_ce : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (14 downto 0);

    component fir_mul_32s_32s_3bkb IS
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



begin
    fir_mul_32s_32s_3bkb_U1 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_9,
        din1 => reg_188,
        ce => ap_const_logic_1,
        dout => grp_fu_204_p2);

    fir_mul_32s_32s_3bkb_U2 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_8,
        din1 => reg_192,
        ce => ap_const_logic_1,
        dout => grp_fu_220_p2);

    fir_mul_32s_32s_3bkb_U3 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_7,
        din1 => reg_196,
        ce => ap_const_logic_1,
        dout => grp_fu_240_p2);

    fir_mul_32s_32s_3bkb_U4 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_6,
        din1 => reg_188,
        ce => ap_const_logic_1,
        dout => grp_fu_256_p2);

    fir_mul_32s_32s_3bkb_U5 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_5,
        din1 => reg_192,
        ce => ap_const_logic_1,
        dout => grp_fu_272_p2);

    fir_mul_32s_32s_3bkb_U6 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_4,
        din1 => c_load_5_reg_482,
        ce => ap_const_logic_1,
        dout => grp_fu_297_p2);

    fir_mul_32s_32s_3bkb_U7 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_3,
        din1 => reg_188,
        ce => ap_const_logic_1,
        dout => grp_fu_312_p2);

    fir_mul_32s_32s_3bkb_U8 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_2,
        din1 => reg_192,
        ce => ap_const_logic_1,
        dout => grp_fu_328_p2);

    fir_mul_32s_32s_3bkb_U9 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_1,
        din1 => reg_196,
        ce => grp_fu_348_ce,
        dout => grp_fu_348_p2);

    fir_mul_32s_32s_3bkb_U10 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => shift_reg_0,
        din1 => reg_188,
        ce => grp_fu_364_ce,
        dout => grp_fu_364_p2);

    fir_mul_32s_32s_3bkb_U11 : component fir_mul_32s_32s_3bkb
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => reg_192,
        din1 => x_in_sig,
        ce => grp_fu_376_ce,
        dout => grp_fu_376_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    x_ap_vld_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                x_ap_vld_preg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
                    x_ap_vld_preg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = x_ap_vld) and not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))))) then 
                    x_ap_vld_preg <= x_ap_vld;
                end if; 
            end if;
        end if;
    end process;


    x_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                x_preg <= ap_const_lv32_0;
            else
                if (((ap_const_logic_1 = x_ap_vld) and not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))))) then 
                    x_preg <= x;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                c_load_5_reg_482 <= c_q0;
                shift_reg_6 <= shift_reg_5;
                shift_reg_7 <= shift_reg_6;
                shift_reg_8 <= shift_reg_7;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state11))) then
                reg_188 <= c_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state12))) then
                reg_192 <= c_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state10))) then
                reg_196 <= c_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and (x_ap_vld_in_sig = ap_const_logic_1))) then
                shift_reg_0 <= x_in_sig;
                shift_reg_1 <= shift_reg_0;
                shift_reg_2 <= shift_reg_1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                shift_reg_3 <= shift_reg_2;
                shift_reg_4 <= shift_reg_3;
                shift_reg_5 <= shift_reg_4;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                shift_reg_9 <= shift_reg_8;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                tmp1_reg_462 <= tmp1_fu_226_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                tmp2_reg_517 <= tmp2_fu_282_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                tmp6_reg_562 <= tmp6_fu_334_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                tmp_6_1_reg_447 <= grp_fu_220_p2;
                tmp_6_reg_442 <= grp_fu_204_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tmp_6_2_reg_492 <= grp_fu_240_p2;
                tmp_6_3_reg_497 <= grp_fu_256_p2;
                tmp_6_4_reg_502 <= grp_fu_272_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                tmp_6_5_reg_542 <= grp_fu_297_p2;
                tmp_6_6_reg_547 <= grp_fu_312_p2;
                tmp_6_7_reg_552 <= grp_fu_328_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then
                tmp_6_8_reg_582 <= grp_fu_348_p2;
                tmp_6_9_reg_587 <= grp_fu_364_p2;
                tmp_6_s_reg_592 <= grp_fu_376_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, x_ap_vld_in_sig, ap_CS_fsm_state13)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
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
                if (((ap_const_logic_1 = ap_CS_fsm_state13) and (x_ap_vld_in_sig = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state14;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state15)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state15)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    c_address0_assign_proc : process(ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state8, ap_CS_fsm_state11, ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state9, ap_CS_fsm_state4, ap_CS_fsm_state10, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            c_address0 <= ap_const_lv64_0(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            c_address0 <= ap_const_lv64_1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            c_address0 <= ap_const_lv64_2(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            c_address0 <= ap_const_lv64_3(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            c_address0 <= ap_const_lv64_4(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            c_address0 <= ap_const_lv64_5(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            c_address0 <= ap_const_lv64_6(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            c_address0 <= ap_const_lv64_7(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            c_address0 <= ap_const_lv64_8(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_address0 <= ap_const_lv64_9(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            c_address0 <= ap_const_lv64_A(4 - 1 downto 0);
        else 
            c_address0 <= "XXXX";
        end if; 
    end process;


    c_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state5, ap_CS_fsm_state8, ap_CS_fsm_state11, ap_CS_fsm_state3, ap_CS_fsm_state6, ap_CS_fsm_state9, ap_CS_fsm_state4, ap_CS_fsm_state10, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state10) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            c_ce0 <= ap_const_logic_1;
        else 
            c_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_348_ce_assign_proc : process(x_ap_vld_in_sig, ap_CS_fsm_state13, ap_CS_fsm_state14)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state13) and (x_ap_vld_in_sig = ap_const_logic_1)) or (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            grp_fu_348_ce <= ap_const_logic_1;
        else 
            grp_fu_348_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_364_ce_assign_proc : process(x_ap_vld_in_sig, ap_CS_fsm_state13, ap_CS_fsm_state14)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state13) and (x_ap_vld_in_sig = ap_const_logic_1)) or (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            grp_fu_364_ce <= ap_const_logic_1;
        else 
            grp_fu_364_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_376_ce_assign_proc : process(x_ap_vld_in_sig, ap_CS_fsm_state13, ap_CS_fsm_state14)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state13) and (x_ap_vld_in_sig = ap_const_logic_1)) or (ap_const_logic_1 = ap_CS_fsm_state14))) then 
            grp_fu_376_ce <= ap_const_logic_1;
        else 
            grp_fu_376_ce <= ap_const_logic_0;
        end if; 
    end process;

    tmp1_fu_226_p2 <= std_logic_vector(unsigned(tmp_6_reg_442) + unsigned(tmp_6_1_reg_447));
    tmp2_fu_282_p2 <= std_logic_vector(unsigned(tmp3_fu_278_p2) + unsigned(tmp_6_2_reg_492));
    tmp3_fu_278_p2 <= std_logic_vector(unsigned(tmp_6_3_reg_497) + unsigned(tmp_6_4_reg_502));
    tmp4_fu_399_p2 <= std_logic_vector(unsigned(tmp7_fu_394_p2) + unsigned(tmp5_fu_386_p2));
    tmp5_fu_386_p2 <= std_logic_vector(unsigned(tmp6_reg_562) + unsigned(tmp_6_5_reg_542));
    tmp6_fu_334_p2 <= std_logic_vector(unsigned(tmp_6_6_reg_547) + unsigned(tmp_6_7_reg_552));
    tmp7_fu_394_p2 <= std_logic_vector(unsigned(tmp8_fu_390_p2) + unsigned(tmp_6_8_reg_582));
    tmp8_fu_390_p2 <= std_logic_vector(unsigned(tmp_6_9_reg_587) + unsigned(tmp_6_s_reg_592));
    tmp_fu_382_p2 <= std_logic_vector(unsigned(tmp2_reg_517) + unsigned(tmp1_reg_462));

    x_ap_vld_in_sig_assign_proc : process(x_ap_vld, x_ap_vld_preg)
    begin
        if ((ap_const_logic_1 = x_ap_vld)) then 
            x_ap_vld_in_sig <= x_ap_vld;
        else 
            x_ap_vld_in_sig <= x_ap_vld_preg;
        end if; 
    end process;


    x_blk_n_assign_proc : process(x_ap_vld, ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            x_blk_n <= x_ap_vld;
        else 
            x_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    x_in_sig_assign_proc : process(x, x_preg, x_ap_vld)
    begin
        if ((ap_const_logic_1 = x_ap_vld)) then 
            x_in_sig <= x;
        else 
            x_in_sig <= x_preg;
        end if; 
    end process;

    y <= std_logic_vector(unsigned(tmp4_fu_399_p2) + unsigned(tmp_fu_382_p2));

    y_ap_vld_assign_proc : process(ap_CS_fsm_state15)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
