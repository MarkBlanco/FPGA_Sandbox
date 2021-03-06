-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adders_io is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in1 : IN STD_LOGIC_VECTOR (31 downto 0);
    in1_ap_vld : IN STD_LOGIC;
    in2 : IN STD_LOGIC_VECTOR (31 downto 0);
    in2_ap_ack : OUT STD_LOGIC;
    in_out1_i : IN STD_LOGIC_VECTOR (31 downto 0);
    in_out1_i_ap_vld : IN STD_LOGIC;
    in_out1_i_ap_ack : OUT STD_LOGIC;
    in_out1_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    in_out1_o_ap_vld : OUT STD_LOGIC;
    in_out1_o_ap_ack : IN STD_LOGIC );
end;


architecture behav of adders_io is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "adders_io,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=2.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.728000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=302,HLS_SYN_LUT=154}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal in1_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal in1_in_sig : STD_LOGIC_VECTOR (31 downto 0);
    signal in1_ap_vld_preg : STD_LOGIC := '0';
    signal in1_ap_vld_in_sig : STD_LOGIC;
    signal in1_blk_n : STD_LOGIC;
    signal in_out1_i_blk_n : STD_LOGIC;
    signal in_out1_o_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal in_out1_read_reg_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal tmp1_fu_57_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp1_reg_73 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_reg_ioackin_in_out1_o_ap_ack : STD_LOGIC := '0';
    signal ap_sig_ioackin_in_out1_o_ap_ack : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




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


    ap_reg_ioackin_in_out1_o_ap_ack_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_in_out1_o_ap_ack <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    if ((ap_sig_ioackin_in_out1_o_ap_ack = ap_const_logic_1)) then 
                        ap_reg_ioackin_in_out1_o_ap_ack <= ap_const_logic_0;
                    elsif ((ap_const_logic_1 = in_out1_o_ap_ack)) then 
                        ap_reg_ioackin_in_out1_o_ap_ack <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    in1_ap_vld_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                in1_ap_vld_preg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_sig_ioackin_in_out1_o_ap_ack = ap_const_logic_1))) then 
                    in1_ap_vld_preg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = in1_ap_vld) and not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))))) then 
                    in1_ap_vld_preg <= in1_ap_vld;
                end if; 
            end if;
        end if;
    end process;


    in1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                in1_preg <= ap_const_lv32_0;
            else
                if (((ap_const_logic_1 = in1_ap_vld) and not(((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))))) then 
                    in1_preg <= in1;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_const_logic_0 = in1_ap_vld_in_sig) or (ap_const_logic_0 = in_out1_i_ap_vld))))) then
                in_out1_read_reg_68 <= in_out1_i;
                tmp1_reg_73 <= tmp1_fu_57_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, in1_ap_vld_in_sig, in_out1_i_ap_vld, ap_CS_fsm_state2, ap_sig_ioackin_in_out1_o_ap_ack)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_const_logic_0 = in1_ap_vld_in_sig) or (ap_const_logic_0 = in_out1_i_ap_vld))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_sig_ioackin_in_out1_o_ap_ack = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state1_assign_proc : process(ap_start, in1_ap_vld_in_sig, in_out1_i_ap_vld)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_const_logic_0 = in1_ap_vld_in_sig) or (ap_const_logic_0 = in_out1_i_ap_vld));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, ap_sig_ioackin_in_out1_o_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_sig_ioackin_in_out1_o_ap_ack = ap_const_logic_1))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, ap_sig_ioackin_in_out1_o_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_sig_ioackin_in_out1_o_ap_ack = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_in_out1_o_ap_ack_assign_proc : process(in_out1_o_ap_ack, ap_reg_ioackin_in_out1_o_ap_ack)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_in_out1_o_ap_ack)) then 
            ap_sig_ioackin_in_out1_o_ap_ack <= in_out1_o_ap_ack;
        else 
            ap_sig_ioackin_in_out1_o_ap_ack <= ap_const_logic_1;
        end if; 
    end process;


    in1_ap_vld_in_sig_assign_proc : process(in1_ap_vld, in1_ap_vld_preg)
    begin
        if ((ap_const_logic_1 = in1_ap_vld)) then 
            in1_ap_vld_in_sig <= in1_ap_vld;
        else 
            in1_ap_vld_in_sig <= in1_ap_vld_preg;
        end if; 
    end process;


    in1_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, in1_ap_vld)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            in1_blk_n <= in1_ap_vld;
        else 
            in1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in1_in_sig_assign_proc : process(in1, in1_preg, in1_ap_vld)
    begin
        if ((ap_const_logic_1 = in1_ap_vld)) then 
            in1_in_sig <= in1;
        else 
            in1_in_sig <= in1_preg;
        end if; 
    end process;


    in2_ap_ack_assign_proc : process(ap_start, ap_CS_fsm_state1, in1_ap_vld_in_sig, in_out1_i_ap_vld)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_const_logic_0 = in1_ap_vld_in_sig) or (ap_const_logic_0 = in_out1_i_ap_vld))))) then 
            in2_ap_ack <= ap_const_logic_1;
        else 
            in2_ap_ack <= ap_const_logic_0;
        end if; 
    end process;


    in_out1_i_ap_ack_assign_proc : process(ap_start, ap_CS_fsm_state1, in1_ap_vld_in_sig, in_out1_i_ap_vld)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_const_logic_0 = in1_ap_vld_in_sig) or (ap_const_logic_0 = in_out1_i_ap_vld))))) then 
            in_out1_i_ap_ack <= ap_const_logic_1;
        else 
            in_out1_i_ap_ack <= ap_const_logic_0;
        end if; 
    end process;


    in_out1_i_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, in_out1_i_ap_vld)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            in_out1_i_blk_n <= in_out1_i_ap_vld;
        else 
            in_out1_i_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    in_out1_o <= std_logic_vector(unsigned(tmp1_reg_73) + unsigned(in_out1_read_reg_68));

    in_out1_o_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_reg_ioackin_in_out1_o_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_logic_0 = ap_reg_ioackin_in_out1_o_ap_ack))) then 
            in_out1_o_ap_vld <= ap_const_logic_1;
        else 
            in_out1_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    in_out1_o_blk_n_assign_proc : process(in_out1_o_ap_ack, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            in_out1_o_blk_n <= in_out1_o_ap_ack;
        else 
            in_out1_o_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    tmp1_fu_57_p2 <= std_logic_vector(unsigned(in2) + unsigned(in1_in_sig));
end behav;
