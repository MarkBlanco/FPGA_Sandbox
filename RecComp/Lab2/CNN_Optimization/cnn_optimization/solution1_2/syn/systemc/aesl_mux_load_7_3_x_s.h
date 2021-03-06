// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aesl_mux_load_7_3_x_s_HH_
#define _aesl_mux_load_7_3_x_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct aesl_mux_load_7_3_x_s : public sc_module {
    // Port declarations 45
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > empty_2_Addr_A;
    sc_out< sc_logic > empty_2_EN_A;
    sc_out< sc_lv<4> > empty_2_WEN_A;
    sc_out< sc_lv<32> > empty_2_Din_A;
    sc_in< sc_lv<32> > empty_2_Dout_A;
    sc_out< sc_lv<32> > empty_3_Addr_A;
    sc_out< sc_logic > empty_3_EN_A;
    sc_out< sc_lv<4> > empty_3_WEN_A;
    sc_out< sc_lv<32> > empty_3_Din_A;
    sc_in< sc_lv<32> > empty_3_Dout_A;
    sc_out< sc_lv<32> > empty_4_Addr_A;
    sc_out< sc_logic > empty_4_EN_A;
    sc_out< sc_lv<4> > empty_4_WEN_A;
    sc_out< sc_lv<32> > empty_4_Din_A;
    sc_in< sc_lv<32> > empty_4_Dout_A;
    sc_out< sc_lv<32> > empty_5_Addr_A;
    sc_out< sc_logic > empty_5_EN_A;
    sc_out< sc_lv<4> > empty_5_WEN_A;
    sc_out< sc_lv<32> > empty_5_Din_A;
    sc_in< sc_lv<32> > empty_5_Dout_A;
    sc_out< sc_lv<32> > empty_6_Addr_A;
    sc_out< sc_logic > empty_6_EN_A;
    sc_out< sc_lv<4> > empty_6_WEN_A;
    sc_out< sc_lv<32> > empty_6_Din_A;
    sc_in< sc_lv<32> > empty_6_Dout_A;
    sc_out< sc_lv<32> > empty_7_Addr_A;
    sc_out< sc_logic > empty_7_EN_A;
    sc_out< sc_lv<4> > empty_7_WEN_A;
    sc_out< sc_lv<32> > empty_7_Din_A;
    sc_in< sc_lv<32> > empty_7_Dout_A;
    sc_out< sc_lv<32> > empty_8_Addr_A;
    sc_out< sc_logic > empty_8_EN_A;
    sc_out< sc_lv<4> > empty_8_WEN_A;
    sc_out< sc_lv<32> > empty_8_Din_A;
    sc_in< sc_lv<32> > empty_8_Dout_A;
    sc_in< sc_lv<3> > empty_9;
    sc_in< sc_lv<2> > empty_10;
    sc_in< sc_lv<3> > empty;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    aesl_mux_load_7_3_x_s(sc_module_name name);
    SC_HAS_PROCESS(aesl_mux_load_7_3_x_s);

    ~aesl_mux_load_7_3_x_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<3> > tmp_15_reg_246;
    sc_signal< sc_lv<3> > ap_reg_pp0_iter1_tmp_15_reg_246;
    sc_signal< sc_lv<3> > ap_reg_pp0_iter2_tmp_15_reg_246;
    sc_signal< sc_lv<32> > tmp_22_fu_174_p2;
    sc_signal< sc_lv<32> > tmp_22_reg_256;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter1_tmp_22_reg_256;
    sc_signal< sc_lv<32> > empty_21_reg_302;
    sc_signal< sc_lv<32> > empty_22_reg_307;
    sc_signal< sc_lv<32> > empty_23_reg_312;
    sc_signal< sc_lv<32> > empty_24_reg_317;
    sc_signal< sc_lv<32> > empty_25_reg_322;
    sc_signal< sc_lv<32> > empty_26_reg_327;
    sc_signal< sc_lv<32> > empty_27_reg_332;
    sc_signal< sc_lv<32> > sel_tmp3_fu_196_p3;
    sc_signal< sc_lv<32> > sel_tmp3_reg_337;
    sc_signal< sc_lv<1> > sel_tmp4_fu_203_p2;
    sc_signal< sc_lv<1> > sel_tmp4_reg_342;
    sc_signal< sc_lv<1> > sel_tmp6_fu_208_p2;
    sc_signal< sc_lv<1> > sel_tmp6_reg_347;
    sc_signal< sc_lv<1> > sel_tmp8_fu_213_p2;
    sc_signal< sc_lv<1> > sel_tmp8_reg_352;
    sc_signal< sc_lv<1> > sel_tmp10_fu_218_p2;
    sc_signal< sc_lv<1> > sel_tmp10_reg_357;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_lv<5> > tmp_fu_156_p3;
    sc_signal< sc_lv<32> > p_shl_fu_164_p1;
    sc_signal< sc_lv<32> > p_cast_fu_152_p1;
    sc_signal< sc_lv<32> > p_cast1_fu_148_p1;
    sc_signal< sc_lv<32> > tmp_21_fu_168_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_180_p2;
    sc_signal< sc_lv<1> > sel_tmp2_fu_191_p2;
    sc_signal< sc_lv<32> > sel_tmp1_fu_185_p3;
    sc_signal< sc_lv<32> > sel_tmp5_fu_223_p3;
    sc_signal< sc_lv<32> > sel_tmp7_fu_228_p3;
    sc_signal< sc_lv<32> > sel_tmp9_fu_234_p3;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to3;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<4> ap_const_lv4_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_block_state5_pp0_stage0_iter4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to3();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_return();
    void thread_empty_2_Addr_A();
    void thread_empty_2_Din_A();
    void thread_empty_2_EN_A();
    void thread_empty_2_WEN_A();
    void thread_empty_3_Addr_A();
    void thread_empty_3_Din_A();
    void thread_empty_3_EN_A();
    void thread_empty_3_WEN_A();
    void thread_empty_4_Addr_A();
    void thread_empty_4_Din_A();
    void thread_empty_4_EN_A();
    void thread_empty_4_WEN_A();
    void thread_empty_5_Addr_A();
    void thread_empty_5_Din_A();
    void thread_empty_5_EN_A();
    void thread_empty_5_WEN_A();
    void thread_empty_6_Addr_A();
    void thread_empty_6_Din_A();
    void thread_empty_6_EN_A();
    void thread_empty_6_WEN_A();
    void thread_empty_7_Addr_A();
    void thread_empty_7_Din_A();
    void thread_empty_7_EN_A();
    void thread_empty_7_WEN_A();
    void thread_empty_8_Addr_A();
    void thread_empty_8_Din_A();
    void thread_empty_8_EN_A();
    void thread_empty_8_WEN_A();
    void thread_p_cast1_fu_148_p1();
    void thread_p_cast_fu_152_p1();
    void thread_p_shl_fu_164_p1();
    void thread_sel_tmp10_fu_218_p2();
    void thread_sel_tmp1_fu_185_p3();
    void thread_sel_tmp2_fu_191_p2();
    void thread_sel_tmp3_fu_196_p3();
    void thread_sel_tmp4_fu_203_p2();
    void thread_sel_tmp5_fu_223_p3();
    void thread_sel_tmp6_fu_208_p2();
    void thread_sel_tmp7_fu_228_p3();
    void thread_sel_tmp8_fu_213_p2();
    void thread_sel_tmp9_fu_234_p3();
    void thread_sel_tmp_fu_180_p2();
    void thread_tmp_21_fu_168_p2();
    void thread_tmp_22_fu_174_p2();
    void thread_tmp_fu_156_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
