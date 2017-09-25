// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrix_mult_HH_
#define _matrix_mult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrix_mult_mac_mbkb.h"

namespace ap_rtl {

struct matrix_mult : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<8> > a_q0;
    sc_out< sc_lv<5> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<8> > b_q0;
    sc_out< sc_lv<5> > prod_address0;
    sc_out< sc_logic > prod_ce0;
    sc_out< sc_logic > prod_we0;
    sc_out< sc_lv<16> > prod_d0;
    sc_in< sc_lv<16> > prod_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    matrix_mult(sc_module_name name);
    SC_HAS_PROCESS(matrix_mult);

    ~matrix_mult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrix_mult_mac_mbkb<1,3,8,8,16,16>* matrix_mult_mac_mbkb_U0;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > k_reg_127;
    sc_signal< sc_lv<5> > indvar_flatten_next_fu_144_p2;
    sc_signal< sc_lv<5> > indvar_flatten_next_reg_288;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<3> > j_mid2_fu_162_p3;
    sc_signal< sc_lv<3> > j_mid2_reg_293;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_138_p2;
    sc_signal< sc_lv<3> > i_cast3_mid2_v_fu_170_p3;
    sc_signal< sc_lv<3> > i_cast3_mid2_v_reg_299;
    sc_signal< sc_lv<6> > tmp_7_fu_192_p2;
    sc_signal< sc_lv<6> > tmp_7_reg_306;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > j_cast2_cast_fu_198_p1;
    sc_signal< sc_lv<6> > j_cast2_cast_reg_312;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > prod_addr_reg_317;
    sc_signal< sc_lv<1> > exitcond_fu_211_p2;
    sc_signal< sc_lv<1> > exitcond_reg_322;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_reg_322;
    sc_signal< sc_lv<3> > k_1_fu_217_p2;
    sc_signal< sc_lv<3> > k_1_reg_326;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<6> > tmp_9_fu_227_p2;
    sc_signal< sc_lv<6> > tmp_9_reg_331;
    sc_signal< sc_lv<6> > tmp_11_fu_250_p2;
    sc_signal< sc_lv<6> > tmp_11_reg_336;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state7_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_flag00011001;
    sc_signal< sc_lv<3> > j_1_fu_271_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage1_flag00011011;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<5> > indvar_flatten_reg_94;
    sc_signal< sc_lv<3> > i_reg_105;
    sc_signal< sc_lv<3> > j_reg_116;
    sc_signal< sc_lv<3> > k_phi_fu_131_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<32> > tmp_8_cast_fu_206_p1;
    sc_signal< sc_lv<32> > tmp_9_cast_fu_255_p1;
    sc_signal< bool > ap_block_pp0_stage1_flag00000000;
    sc_signal< sc_lv<32> > tmp_12_cast_fu_259_p1;
    sc_signal< sc_lv<16> > grp_fu_276_p3;
    sc_signal< sc_lv<1> > exitcond1_fu_156_p2;
    sc_signal< sc_lv<3> > i_1_fu_150_p2;
    sc_signal< sc_lv<5> > tmp_4_fu_181_p3;
    sc_signal< sc_lv<6> > i_cast3_mid2_cast_fu_178_p1;
    sc_signal< sc_lv<6> > p_shl_cast_fu_188_p1;
    sc_signal< sc_lv<6> > tmp_8_fu_201_p2;
    sc_signal< sc_lv<6> > k_cast1_cast_fu_223_p1;
    sc_signal< sc_lv<5> > tmp_s_fu_232_p3;
    sc_signal< sc_lv<6> > p_shl1_cast_fu_240_p1;
    sc_signal< sc_lv<6> > tmp_10_fu_244_p2;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_pp0_stage0;
    static const sc_lv<8> ap_ST_fsm_pp0_stage1;
    static const sc_lv<8> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<2> ap_const_lv2_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_pp0_stage1_flag00000000();
    void thread_ap_block_pp0_stage1_flag00011001();
    void thread_ap_block_pp0_stage1_flag00011011();
    void thread_ap_block_state10_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter0();
    void thread_ap_block_state7_pp0_stage1_iter0();
    void thread_ap_block_state8_pp0_stage0_iter1();
    void thread_ap_block_state9_pp0_stage1_iter1();
    void thread_ap_condition_pp0_exit_iter0_state6();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_b_address0();
    void thread_b_ce0();
    void thread_exitcond1_fu_156_p2();
    void thread_exitcond_flatten_fu_138_p2();
    void thread_exitcond_fu_211_p2();
    void thread_i_1_fu_150_p2();
    void thread_i_cast3_mid2_cast_fu_178_p1();
    void thread_i_cast3_mid2_v_fu_170_p3();
    void thread_indvar_flatten_next_fu_144_p2();
    void thread_j_1_fu_271_p2();
    void thread_j_cast2_cast_fu_198_p1();
    void thread_j_mid2_fu_162_p3();
    void thread_k_1_fu_217_p2();
    void thread_k_cast1_cast_fu_223_p1();
    void thread_k_phi_fu_131_p4();
    void thread_p_shl1_cast_fu_240_p1();
    void thread_p_shl_cast_fu_188_p1();
    void thread_prod_address0();
    void thread_prod_ce0();
    void thread_prod_d0();
    void thread_prod_we0();
    void thread_tmp_10_fu_244_p2();
    void thread_tmp_11_fu_250_p2();
    void thread_tmp_12_cast_fu_259_p1();
    void thread_tmp_4_fu_181_p3();
    void thread_tmp_7_fu_192_p2();
    void thread_tmp_8_cast_fu_206_p1();
    void thread_tmp_8_fu_201_p2();
    void thread_tmp_9_cast_fu_255_p1();
    void thread_tmp_9_fu_227_p2();
    void thread_tmp_s_fu_232_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
