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

#include "matrix_mult_mul_8bkb.h"
#include "matrix_mult_mac_mcud.h"
#include "matrix_mult_mac_mdEe.h"

namespace ap_rtl {

struct matrix_mult : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<8> > a_q0;
    sc_out< sc_lv<5> > a_address1;
    sc_out< sc_logic > a_ce1;
    sc_in< sc_lv<8> > a_q1;
    sc_out< sc_lv<5> > b_address0;
    sc_out< sc_logic > b_ce0;
    sc_in< sc_lv<8> > b_q0;
    sc_out< sc_lv<5> > b_address1;
    sc_out< sc_logic > b_ce1;
    sc_in< sc_lv<8> > b_q1;
    sc_out< sc_lv<5> > prod_address0;
    sc_out< sc_logic > prod_ce0;
    sc_out< sc_logic > prod_we0;
    sc_out< sc_lv<16> > prod_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    matrix_mult(sc_module_name name);
    SC_HAS_PROCESS(matrix_mult);

    ~matrix_mult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    matrix_mult_mul_8bkb<1,5,8,8,16>* matrix_mult_mul_8bkb_U0;
    matrix_mult_mul_8bkb<1,5,8,8,16>* matrix_mult_mul_8bkb_U1;
    matrix_mult_mac_mcud<1,3,8,8,16,16>* matrix_mult_mac_mcud_U2;
    matrix_mult_mac_mcud<1,3,8,8,16,16>* matrix_mult_mac_mcud_U3;
    matrix_mult_mac_mdEe<1,3,8,8,16,16>* matrix_mult_mac_mdEe_U4;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > indvar_flatten_reg_172;
    sc_signal< sc_lv<3> > i_reg_183;
    sc_signal< sc_lv<3> > j_reg_194;
    sc_signal< sc_lv<8> > reg_205;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_453;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage2_iter1;
    sc_signal< bool > ap_block_state10_pp0_stage2_iter2;
    sc_signal< bool > ap_block_state13_pp0_stage2_iter3;
    sc_signal< bool > ap_block_state16_pp0_stage2_iter4;
    sc_signal< bool > ap_block_pp0_stage2_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_flatten_reg_453;
    sc_signal< sc_lv<8> > reg_209;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state9_pp0_stage1_iter2;
    sc_signal< bool > ap_block_state12_pp0_stage1_iter3;
    sc_signal< bool > ap_block_state15_pp0_stage1_iter4;
    sc_signal< bool > ap_block_pp0_stage1_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_453;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_214_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_exitcond_flatten_reg_453;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_exitcond_flatten_reg_453;
    sc_signal< sc_lv<5> > indvar_flatten_next_fu_220_p2;
    sc_signal< sc_lv<5> > indvar_flatten_next_reg_457;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<3> > j_mid2_fu_238_p3;
    sc_signal< sc_lv<3> > j_mid2_reg_462;
    sc_signal< sc_lv<3> > ap_reg_pp0_iter1_j_mid2_reg_462;
    sc_signal< sc_lv<3> > ap_reg_pp0_iter2_j_mid2_reg_462;
    sc_signal< sc_lv<3> > i_cast6_mid2_v_fu_246_p3;
    sc_signal< sc_lv<3> > i_cast6_mid2_v_reg_471;
    sc_signal< sc_lv<6> > tmp_7_fu_268_p2;
    sc_signal< sc_lv<6> > tmp_7_reg_478;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter1_tmp_7_reg_478;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter2_tmp_7_reg_478;
    sc_signal< sc_lv<5> > j_cast5_cast3_fu_274_p1;
    sc_signal< sc_lv<5> > j_cast5_cast3_reg_488;
    sc_signal< sc_lv<5> > ap_reg_pp0_iter1_j_cast5_cast3_reg_488;
    sc_signal< sc_lv<5> > ap_reg_pp0_iter2_j_cast5_cast3_reg_488;
    sc_signal< sc_lv<4> > tmp_12_fu_280_p2;
    sc_signal< sc_lv<4> > tmp_12_reg_494;
    sc_signal< sc_lv<5> > tmp_15_fu_286_p2;
    sc_signal< sc_lv<5> > tmp_15_reg_499;
    sc_signal< sc_lv<6> > tmp_8_fu_292_p2;
    sc_signal< sc_lv<6> > tmp_8_reg_504;
    sc_signal< sc_lv<6> > tmp_11_fu_297_p2;
    sc_signal< sc_lv<6> > tmp_11_reg_509;
    sc_signal< sc_lv<3> > j_1_fu_310_p2;
    sc_signal< sc_lv<3> > j_1_reg_524;
    sc_signal< sc_lv<8> > b_load_1_reg_539;
    sc_signal< sc_lv<8> > a_load_1_reg_544;
    sc_signal< sc_lv<5> > tmp_14_fu_323_p2;
    sc_signal< sc_lv<5> > tmp_14_reg_549;
    sc_signal< sc_lv<6> > tmp_9_fu_342_p2;
    sc_signal< sc_lv<6> > tmp_9_reg_564;
    sc_signal< sc_lv<6> > tmp_10_fu_347_p2;
    sc_signal< sc_lv<6> > tmp_10_reg_569;
    sc_signal< sc_lv<8> > b_load_3_reg_604;
    sc_signal< sc_lv<5> > tmp_13_fu_387_p2;
    sc_signal< sc_lv<5> > tmp_13_reg_614;
    sc_signal< sc_lv<6> > tmp_16_fu_392_p2;
    sc_signal< sc_lv<6> > tmp_16_reg_619;
    sc_signal< sc_lv<6> > ap_reg_pp0_iter3_tmp_16_reg_619;
    sc_signal< sc_lv<16> > grp_fu_336_p2;
    sc_signal< sc_lv<16> > tmp_2_4_reg_649;
    sc_signal< sc_lv<16> > grp_fu_362_p2;
    sc_signal< sc_lv<16> > tmp_2_1_reg_654;
    sc_signal< sc_lv<16> > grp_fu_432_p3;
    sc_signal< sc_lv<16> > tmp4_reg_669;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<16> > grp_fu_439_p3;
    sc_signal< sc_lv<16> > tmp1_reg_674;
    sc_signal< sc_lv<16> > grp_fu_446_p3;
    sc_signal< sc_lv<16> > tmp3_reg_679;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<16> > tmp_3_4_fu_424_p2;
    sc_signal< sc_lv<16> > tmp_3_4_reg_684;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage2_flag00011011;
    sc_signal< sc_lv<5> > indvar_flatten_phi_fu_176_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<3> > i_phi_fu_187_p4;
    sc_signal< sc_lv<3> > j_phi_fu_198_p4;
    sc_signal< sc_lv<32> > tmp_12_cast_fu_302_p1;
    sc_signal< bool > ap_block_pp0_stage2_flag00000000;
    sc_signal< sc_lv<32> > tmp_15_cast_fu_306_p1;
    sc_signal< sc_lv<32> > tmp_8_cast_fu_315_p1;
    sc_signal< sc_lv<32> > tmp_11_cast_fu_319_p1;
    sc_signal< sc_lv<32> > tmp_14_cast_fu_352_p1;
    sc_signal< sc_lv<32> > tmp_9_cast_fu_368_p1;
    sc_signal< bool > ap_block_pp0_stage1_flag00000000;
    sc_signal< sc_lv<32> > tmp_10_cast_fu_372_p1;
    sc_signal< sc_lv<32> > j_cast5_fu_376_p1;
    sc_signal< sc_lv<32> > tmp_7_cast_fu_380_p1;
    sc_signal< sc_lv<32> > tmp_13_cast_fu_404_p1;
    sc_signal< sc_lv<32> > tmp_16_cast_fu_428_p1;
    sc_signal< sc_lv<1> > exitcond_fu_232_p2;
    sc_signal< sc_lv<3> > i_1_fu_226_p2;
    sc_signal< sc_lv<5> > tmp_fu_257_p3;
    sc_signal< sc_lv<6> > i_cast6_mid2_cast_fu_254_p1;
    sc_signal< sc_lv<6> > p_shl_cast_fu_264_p1;
    sc_signal< sc_lv<4> > j_cast5_cast_fu_277_p1;
    sc_signal< sc_lv<6> > j_cast5_cast4_fu_384_p1;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_flag00011011;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_pp0_stage0;
    static const sc_lv<5> ap_ST_fsm_pp0_stage1;
    static const sc_lv<5> ap_ST_fsm_pp0_stage2;
    static const sc_lv<5> ap_ST_fsm_state17;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_4;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<6> ap_const_lv6_3;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<32> ap_const_lv32_4;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_address1();
    void thread_a_ce0();
    void thread_a_ce1();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state17();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_pp0_stage1_flag00000000();
    void thread_ap_block_pp0_stage1_flag00011001();
    void thread_ap_block_pp0_stage1_flag00011011();
    void thread_ap_block_pp0_stage2_flag00000000();
    void thread_ap_block_pp0_stage2_flag00011001();
    void thread_ap_block_pp0_stage2_flag00011011();
    void thread_ap_block_state10_pp0_stage2_iter2();
    void thread_ap_block_state11_pp0_stage0_iter3();
    void thread_ap_block_state12_pp0_stage1_iter3();
    void thread_ap_block_state13_pp0_stage2_iter3();
    void thread_ap_block_state14_pp0_stage0_iter4();
    void thread_ap_block_state15_pp0_stage1_iter4();
    void thread_ap_block_state16_pp0_stage2_iter4();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state6_pp0_stage1_iter1();
    void thread_ap_block_state7_pp0_stage2_iter1();
    void thread_ap_block_state8_pp0_stage0_iter2();
    void thread_ap_block_state9_pp0_stage1_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_b_address0();
    void thread_b_address1();
    void thread_b_ce0();
    void thread_b_ce1();
    void thread_exitcond_flatten_fu_214_p2();
    void thread_exitcond_fu_232_p2();
    void thread_i_1_fu_226_p2();
    void thread_i_cast6_mid2_cast_fu_254_p1();
    void thread_i_cast6_mid2_v_fu_246_p3();
    void thread_i_phi_fu_187_p4();
    void thread_indvar_flatten_next_fu_220_p2();
    void thread_indvar_flatten_phi_fu_176_p4();
    void thread_j_1_fu_310_p2();
    void thread_j_cast5_cast3_fu_274_p1();
    void thread_j_cast5_cast4_fu_384_p1();
    void thread_j_cast5_cast_fu_277_p1();
    void thread_j_cast5_fu_376_p1();
    void thread_j_mid2_fu_238_p3();
    void thread_j_phi_fu_198_p4();
    void thread_p_shl_cast_fu_264_p1();
    void thread_prod_address0();
    void thread_prod_ce0();
    void thread_prod_d0();
    void thread_prod_we0();
    void thread_tmp_10_cast_fu_372_p1();
    void thread_tmp_10_fu_347_p2();
    void thread_tmp_11_cast_fu_319_p1();
    void thread_tmp_11_fu_297_p2();
    void thread_tmp_12_cast_fu_302_p1();
    void thread_tmp_12_fu_280_p2();
    void thread_tmp_13_cast_fu_404_p1();
    void thread_tmp_13_fu_387_p2();
    void thread_tmp_14_cast_fu_352_p1();
    void thread_tmp_14_fu_323_p2();
    void thread_tmp_15_cast_fu_306_p1();
    void thread_tmp_15_fu_286_p2();
    void thread_tmp_16_cast_fu_428_p1();
    void thread_tmp_16_fu_392_p2();
    void thread_tmp_3_4_fu_424_p2();
    void thread_tmp_7_cast_fu_380_p1();
    void thread_tmp_7_fu_268_p2();
    void thread_tmp_8_cast_fu_315_p1();
    void thread_tmp_8_fu_292_p2();
    void thread_tmp_9_cast_fu_368_p1();
    void thread_tmp_9_fu_342_p2();
    void thread_tmp_fu_257_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif