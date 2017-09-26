// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "matrix_mult.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic matrix_mult::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic matrix_mult::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> matrix_mult::ap_ST_fsm_state1 = "1";
const sc_lv<8> matrix_mult::ap_ST_fsm_state2 = "10";
const sc_lv<8> matrix_mult::ap_ST_fsm_state3 = "100";
const sc_lv<8> matrix_mult::ap_ST_fsm_state4 = "1000";
const sc_lv<8> matrix_mult::ap_ST_fsm_state5 = "10000";
const sc_lv<8> matrix_mult::ap_ST_fsm_pp0_stage0 = "100000";
const sc_lv<8> matrix_mult::ap_ST_fsm_pp0_stage1 = "1000000";
const sc_lv<8> matrix_mult::ap_ST_fsm_state11 = "10000000";
const sc_lv<32> matrix_mult::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool matrix_mult::ap_const_boolean_1 = true;
const sc_lv<32> matrix_mult::ap_const_lv32_1 = "1";
const sc_lv<1> matrix_mult::ap_const_lv1_0 = "0";
const sc_lv<32> matrix_mult::ap_const_lv32_2 = "10";
const sc_lv<32> matrix_mult::ap_const_lv32_3 = "11";
const sc_lv<32> matrix_mult::ap_const_lv32_5 = "101";
const bool matrix_mult::ap_const_boolean_0 = false;
const sc_lv<32> matrix_mult::ap_const_lv32_6 = "110";
const sc_lv<32> matrix_mult::ap_const_lv32_7 = "111";
const sc_lv<32> matrix_mult::ap_const_lv32_4 = "100";
const sc_lv<1> matrix_mult::ap_const_lv1_1 = "1";
const sc_lv<5> matrix_mult::ap_const_lv5_0 = "00000";
const sc_lv<3> matrix_mult::ap_const_lv3_0 = "000";
const sc_lv<16> matrix_mult::ap_const_lv16_0 = "0000000000000000";
const sc_lv<5> matrix_mult::ap_const_lv5_19 = "11001";
const sc_lv<5> matrix_mult::ap_const_lv5_1 = "1";
const sc_lv<3> matrix_mult::ap_const_lv3_1 = "1";
const sc_lv<3> matrix_mult::ap_const_lv3_5 = "101";
const sc_lv<2> matrix_mult::ap_const_lv2_0 = "00";

matrix_mult::matrix_mult(sc_module_name name) : sc_module(name), mVcdFile(0) {
    matrix_mult_mac_mbkb_U0 = new matrix_mult_mac_mbkb<1,3,8,8,16,16>("matrix_mult_mac_mbkb_U0");
    matrix_mult_mac_mbkb_U0->clk(ap_clk);
    matrix_mult_mac_mbkb_U0->reset(ap_rst);
    matrix_mult_mac_mbkb_U0->din0(a_q0);
    matrix_mult_mac_mbkb_U0->din1(b_q0);
    matrix_mult_mac_mbkb_U0->din2(prod_q0);
    matrix_mult_mac_mbkb_U0->ce(ap_var_for_const0);
    matrix_mult_mac_mbkb_U0->dout(grp_fu_276_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( tmp_9_cast_fu_255_p1 );
    sensitive << ( ap_block_pp0_stage1_flag00000000 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_flag00011001 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00000000);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011001);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011011);

    SC_METHOD(thread_ap_block_pp0_stage1_flag00000000);

    SC_METHOD(thread_ap_block_pp0_stage1_flag00011001);

    SC_METHOD(thread_ap_block_pp0_stage1_flag00011011);

    SC_METHOD(thread_ap_block_state10_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state6_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state7_pp0_stage1_iter0);

    SC_METHOD(thread_ap_block_state8_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state9_pp0_stage1_iter1);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state6);
    sensitive << ( exitcond_fu_211_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_flatten_fu_138_p2 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_flatten_fu_138_p2 );

    SC_METHOD(thread_b_address0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_flag00000000 );
    sensitive << ( tmp_12_cast_fu_259_p1 );

    SC_METHOD(thread_b_ce0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_flag00011001 );

    SC_METHOD(thread_exitcond1_fu_156_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_flatten_fu_138_p2 );
    sensitive << ( j_reg_116 );

    SC_METHOD(thread_exitcond_flatten_fu_138_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( indvar_flatten_reg_94 );

    SC_METHOD(thread_exitcond_fu_211_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( k_phi_fu_131_p4 );

    SC_METHOD(thread_i_1_fu_150_p2);
    sensitive << ( i_reg_105 );

    SC_METHOD(thread_i_cast3_mid2_cast_fu_178_p1);
    sensitive << ( i_cast3_mid2_v_reg_299 );

    SC_METHOD(thread_i_cast3_mid2_v_fu_170_p3);
    sensitive << ( i_reg_105 );
    sensitive << ( exitcond1_fu_156_p2 );
    sensitive << ( i_1_fu_150_p2 );

    SC_METHOD(thread_indvar_flatten_next_fu_144_p2);
    sensitive << ( indvar_flatten_reg_94 );

    SC_METHOD(thread_j_1_fu_271_p2);
    sensitive << ( j_mid2_reg_293 );

    SC_METHOD(thread_j_cast2_cast_fu_198_p1);
    sensitive << ( j_mid2_reg_293 );

    SC_METHOD(thread_j_mid2_fu_162_p3);
    sensitive << ( j_reg_116 );
    sensitive << ( exitcond1_fu_156_p2 );

    SC_METHOD(thread_k_1_fu_217_p2);
    sensitive << ( k_phi_fu_131_p4 );

    SC_METHOD(thread_k_cast1_cast_fu_223_p1);
    sensitive << ( k_phi_fu_131_p4 );

    SC_METHOD(thread_k_phi_fu_131_p4);
    sensitive << ( k_reg_127 );
    sensitive << ( exitcond_reg_322 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( k_1_reg_326 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_p_shl1_cast_fu_240_p1);
    sensitive << ( tmp_s_fu_232_p3 );

    SC_METHOD(thread_p_shl_cast_fu_188_p1);
    sensitive << ( tmp_4_fu_181_p3 );

    SC_METHOD(thread_prod_address0);
    sensitive << ( prod_addr_reg_317 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( ap_block_pp0_stage1_flag00000000 );

    SC_METHOD(thread_prod_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_flag00011001 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_prod_d0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( grp_fu_276_p3 );

    SC_METHOD(thread_prod_we0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_reg_pp0_iter1_exitcond_reg_322 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_tmp_10_fu_244_p2);
    sensitive << ( k_cast1_cast_fu_223_p1 );
    sensitive << ( p_shl1_cast_fu_240_p1 );

    SC_METHOD(thread_tmp_11_fu_250_p2);
    sensitive << ( j_cast2_cast_reg_312 );
    sensitive << ( tmp_10_fu_244_p2 );

    SC_METHOD(thread_tmp_12_cast_fu_259_p1);
    sensitive << ( tmp_11_reg_336 );

    SC_METHOD(thread_tmp_4_fu_181_p3);
    sensitive << ( i_cast3_mid2_v_reg_299 );

    SC_METHOD(thread_tmp_7_fu_192_p2);
    sensitive << ( i_cast3_mid2_cast_fu_178_p1 );
    sensitive << ( p_shl_cast_fu_188_p1 );

    SC_METHOD(thread_tmp_8_cast_fu_206_p1);
    sensitive << ( tmp_8_fu_201_p2 );

    SC_METHOD(thread_tmp_8_fu_201_p2);
    sensitive << ( tmp_7_reg_306 );
    sensitive << ( j_cast2_cast_fu_198_p1 );

    SC_METHOD(thread_tmp_9_cast_fu_255_p1);
    sensitive << ( tmp_9_reg_331 );

    SC_METHOD(thread_tmp_9_fu_227_p2);
    sensitive << ( tmp_7_reg_306 );
    sensitive << ( k_cast1_cast_fu_223_p1 );

    SC_METHOD(thread_tmp_s_fu_232_p3);
    sensitive << ( k_phi_fu_131_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_flatten_fu_138_p2 );
    sensitive << ( exitcond_fu_211_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_flag00011011 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage1_flag00011011 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "00000001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "matrix_mult_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a_address0, "(port)a_address0");
    sc_trace(mVcdFile, a_ce0, "(port)a_ce0");
    sc_trace(mVcdFile, a_q0, "(port)a_q0");
    sc_trace(mVcdFile, b_address0, "(port)b_address0");
    sc_trace(mVcdFile, b_ce0, "(port)b_ce0");
    sc_trace(mVcdFile, b_q0, "(port)b_q0");
    sc_trace(mVcdFile, prod_address0, "(port)prod_address0");
    sc_trace(mVcdFile, prod_ce0, "(port)prod_ce0");
    sc_trace(mVcdFile, prod_we0, "(port)prod_we0");
    sc_trace(mVcdFile, prod_d0, "(port)prod_d0");
    sc_trace(mVcdFile, prod_q0, "(port)prod_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, k_reg_127, "k_reg_127");
    sc_trace(mVcdFile, indvar_flatten_next_fu_144_p2, "indvar_flatten_next_fu_144_p2");
    sc_trace(mVcdFile, indvar_flatten_next_reg_288, "indvar_flatten_next_reg_288");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, j_mid2_fu_162_p3, "j_mid2_fu_162_p3");
    sc_trace(mVcdFile, j_mid2_reg_293, "j_mid2_reg_293");
    sc_trace(mVcdFile, exitcond_flatten_fu_138_p2, "exitcond_flatten_fu_138_p2");
    sc_trace(mVcdFile, i_cast3_mid2_v_fu_170_p3, "i_cast3_mid2_v_fu_170_p3");
    sc_trace(mVcdFile, i_cast3_mid2_v_reg_299, "i_cast3_mid2_v_reg_299");
    sc_trace(mVcdFile, tmp_7_fu_192_p2, "tmp_7_fu_192_p2");
    sc_trace(mVcdFile, tmp_7_reg_306, "tmp_7_reg_306");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, j_cast2_cast_fu_198_p1, "j_cast2_cast_fu_198_p1");
    sc_trace(mVcdFile, j_cast2_cast_reg_312, "j_cast2_cast_reg_312");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, prod_addr_reg_317, "prod_addr_reg_317");
    sc_trace(mVcdFile, exitcond_fu_211_p2, "exitcond_fu_211_p2");
    sc_trace(mVcdFile, exitcond_reg_322, "exitcond_reg_322");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state6_pp0_stage0_iter0, "ap_block_state6_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state8_pp0_stage0_iter1, "ap_block_state8_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state10_pp0_stage0_iter2, "ap_block_state10_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011001, "ap_block_pp0_stage0_flag00011001");
    sc_trace(mVcdFile, ap_reg_pp0_iter1_exitcond_reg_322, "ap_reg_pp0_iter1_exitcond_reg_322");
    sc_trace(mVcdFile, k_1_fu_217_p2, "k_1_fu_217_p2");
    sc_trace(mVcdFile, k_1_reg_326, "k_1_reg_326");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_9_fu_227_p2, "tmp_9_fu_227_p2");
    sc_trace(mVcdFile, tmp_9_reg_331, "tmp_9_reg_331");
    sc_trace(mVcdFile, tmp_11_fu_250_p2, "tmp_11_fu_250_p2");
    sc_trace(mVcdFile, tmp_11_reg_336, "tmp_11_reg_336");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage1, "ap_CS_fsm_pp0_stage1");
    sc_trace(mVcdFile, ap_block_state7_pp0_stage1_iter0, "ap_block_state7_pp0_stage1_iter0");
    sc_trace(mVcdFile, ap_block_state9_pp0_stage1_iter1, "ap_block_state9_pp0_stage1_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage1_flag00011001, "ap_block_pp0_stage1_flag00011001");
    sc_trace(mVcdFile, j_1_fu_271_p2, "j_1_fu_271_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011011, "ap_block_pp0_stage0_flag00011011");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state6, "ap_condition_pp0_exit_iter0_state6");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage1_flag00011011, "ap_block_pp0_stage1_flag00011011");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, indvar_flatten_reg_94, "indvar_flatten_reg_94");
    sc_trace(mVcdFile, i_reg_105, "i_reg_105");
    sc_trace(mVcdFile, j_reg_116, "j_reg_116");
    sc_trace(mVcdFile, k_phi_fu_131_p4, "k_phi_fu_131_p4");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00000000, "ap_block_pp0_stage0_flag00000000");
    sc_trace(mVcdFile, tmp_8_cast_fu_206_p1, "tmp_8_cast_fu_206_p1");
    sc_trace(mVcdFile, tmp_9_cast_fu_255_p1, "tmp_9_cast_fu_255_p1");
    sc_trace(mVcdFile, ap_block_pp0_stage1_flag00000000, "ap_block_pp0_stage1_flag00000000");
    sc_trace(mVcdFile, tmp_12_cast_fu_259_p1, "tmp_12_cast_fu_259_p1");
    sc_trace(mVcdFile, grp_fu_276_p3, "grp_fu_276_p3");
    sc_trace(mVcdFile, exitcond1_fu_156_p2, "exitcond1_fu_156_p2");
    sc_trace(mVcdFile, i_1_fu_150_p2, "i_1_fu_150_p2");
    sc_trace(mVcdFile, tmp_4_fu_181_p3, "tmp_4_fu_181_p3");
    sc_trace(mVcdFile, i_cast3_mid2_cast_fu_178_p1, "i_cast3_mid2_cast_fu_178_p1");
    sc_trace(mVcdFile, p_shl_cast_fu_188_p1, "p_shl_cast_fu_188_p1");
    sc_trace(mVcdFile, tmp_8_fu_201_p2, "tmp_8_fu_201_p2");
    sc_trace(mVcdFile, k_cast1_cast_fu_223_p1, "k_cast1_cast_fu_223_p1");
    sc_trace(mVcdFile, tmp_s_fu_232_p3, "tmp_s_fu_232_p3");
    sc_trace(mVcdFile, p_shl1_cast_fu_240_p1, "p_shl1_cast_fu_240_p1");
    sc_trace(mVcdFile, tmp_10_fu_244_p2, "tmp_10_fu_244_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
    mHdltvinHandle.open("matrix_mult.hdltvin.dat");
    mHdltvoutHandle.open("matrix_mult.hdltvout.dat");
}

matrix_mult::~matrix_mult() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete matrix_mult_mac_mbkb_U0;
}

void matrix_mult::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void matrix_mult::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state6.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage1_flag00011011.read(), ap_const_boolean_0))) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state6.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state6.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
              esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
              esl_seteq<1,1,1>(ap_block_pp0_stage1_flag00011011.read(), ap_const_boolean_0)))) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        i_reg_105 = i_cast3_mid2_v_reg_299.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_105 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        indvar_flatten_reg_94 = indvar_flatten_next_reg_288.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        indvar_flatten_reg_94 = ap_const_lv5_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        j_reg_116 = j_1_fu_271_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        j_reg_116 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_322.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        k_reg_127 = k_1_reg_326.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        k_reg_127 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        ap_reg_pp0_iter1_exitcond_reg_322 = exitcond_reg_322.read();
        exitcond_reg_322 = exitcond_fu_211_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_138_p2.read(), ap_const_lv1_0))) {
        i_cast3_mid2_v_reg_299 = i_cast3_mid2_v_fu_170_p3.read();
        j_mid2_reg_293 = j_mid2_fu_162_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        indvar_flatten_next_reg_288 = indvar_flatten_next_fu_144_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_cast2_cast_reg_312 = j_cast2_cast_fu_198_p1.read();
        prod_addr_reg_317 =  (sc_lv<5>) (tmp_8_cast_fu_206_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        k_1_reg_326 = k_1_fu_217_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_211_p2.read()))) {
        tmp_11_reg_336 = tmp_11_fu_250_p2.read();
        tmp_9_reg_331 = tmp_9_fu_227_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        tmp_7_reg_306 = tmp_7_fu_192_p2.read();
    }
}

void matrix_mult::thread_a_address0() {
    a_address0 =  (sc_lv<5>) (tmp_9_cast_fu_255_p1.read());
}

void matrix_mult::thread_a_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1_flag00011001.read(), ap_const_boolean_0))) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[5];
}

void matrix_mult::thread_ap_CS_fsm_pp0_stage1() {
    ap_CS_fsm_pp0_stage1 = ap_CS_fsm.read()[6];
}

void matrix_mult::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void matrix_mult::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[7];
}

void matrix_mult::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void matrix_mult::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void matrix_mult::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void matrix_mult::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void matrix_mult::thread_ap_block_pp0_stage0_flag00000000() {
    ap_block_pp0_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_pp0_stage0_flag00011001() {
    ap_block_pp0_stage0_flag00011001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_pp0_stage0_flag00011011() {
    ap_block_pp0_stage0_flag00011011 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_pp0_stage1_flag00000000() {
    ap_block_pp0_stage1_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_pp0_stage1_flag00011001() {
    ap_block_pp0_stage1_flag00011001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_pp0_stage1_flag00011011() {
    ap_block_pp0_stage1_flag00011011 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_state10_pp0_stage0_iter2() {
    ap_block_state10_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_state6_pp0_stage0_iter0() {
    ap_block_state6_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_state7_pp0_stage1_iter0() {
    ap_block_state7_pp0_stage1_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_state8_pp0_stage0_iter1() {
    ap_block_state8_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_block_state9_pp0_stage1_iter1() {
    ap_block_state9_pp0_stage1_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void matrix_mult::thread_ap_condition_pp0_exit_iter0_state6() {
    if (esl_seteq<1,1,1>(exitcond_fu_211_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state6 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state6 = ap_const_logic_0;
    }
}

void matrix_mult::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_138_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void matrix_mult::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void matrix_mult::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void matrix_mult::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_138_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void matrix_mult::thread_b_address0() {
    b_address0 =  (sc_lv<5>) (tmp_12_cast_fu_259_p1.read());
}

void matrix_mult::thread_b_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage1_flag00011001.read(), ap_const_boolean_0))) {
        b_ce0 = ap_const_logic_1;
    } else {
        b_ce0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_exitcond1_fu_156_p2() {
    exitcond1_fu_156_p2 = (!j_reg_116.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_116.read() == ap_const_lv3_5);
}

void matrix_mult::thread_exitcond_flatten_fu_138_p2() {
    exitcond_flatten_fu_138_p2 = (!indvar_flatten_reg_94.read().is_01() || !ap_const_lv5_19.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_94.read() == ap_const_lv5_19);
}

void matrix_mult::thread_exitcond_fu_211_p2() {
    exitcond_fu_211_p2 = (!k_phi_fu_131_p4.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(k_phi_fu_131_p4.read() == ap_const_lv3_5);
}

void matrix_mult::thread_i_1_fu_150_p2() {
    i_1_fu_150_p2 = (!i_reg_105.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_reg_105.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void matrix_mult::thread_i_cast3_mid2_cast_fu_178_p1() {
    i_cast3_mid2_cast_fu_178_p1 = esl_zext<6,3>(i_cast3_mid2_v_reg_299.read());
}

void matrix_mult::thread_i_cast3_mid2_v_fu_170_p3() {
    i_cast3_mid2_v_fu_170_p3 = (!exitcond1_fu_156_p2.read()[0].is_01())? sc_lv<3>(): ((exitcond1_fu_156_p2.read()[0].to_bool())? i_1_fu_150_p2.read(): i_reg_105.read());
}

void matrix_mult::thread_indvar_flatten_next_fu_144_p2() {
    indvar_flatten_next_fu_144_p2 = (!indvar_flatten_reg_94.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(indvar_flatten_reg_94.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void matrix_mult::thread_j_1_fu_271_p2() {
    j_1_fu_271_p2 = (!j_mid2_reg_293.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_mid2_reg_293.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void matrix_mult::thread_j_cast2_cast_fu_198_p1() {
    j_cast2_cast_fu_198_p1 = esl_zext<6,3>(j_mid2_reg_293.read());
}

void matrix_mult::thread_j_mid2_fu_162_p3() {
    j_mid2_fu_162_p3 = (!exitcond1_fu_156_p2.read()[0].is_01())? sc_lv<3>(): ((exitcond1_fu_156_p2.read()[0].to_bool())? ap_const_lv3_0: j_reg_116.read());
}

void matrix_mult::thread_k_1_fu_217_p2() {
    k_1_fu_217_p2 = (!k_phi_fu_131_p4.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(k_phi_fu_131_p4.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void matrix_mult::thread_k_cast1_cast_fu_223_p1() {
    k_cast1_cast_fu_223_p1 = esl_zext<6,3>(k_phi_fu_131_p4.read());
}

void matrix_mult::thread_k_phi_fu_131_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_322.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        k_phi_fu_131_p4 = k_1_reg_326.read();
    } else {
        k_phi_fu_131_p4 = k_reg_127.read();
    }
}

void matrix_mult::thread_p_shl1_cast_fu_240_p1() {
    p_shl1_cast_fu_240_p1 = esl_zext<6,5>(tmp_s_fu_232_p3.read());
}

void matrix_mult::thread_p_shl_cast_fu_188_p1() {
    p_shl_cast_fu_188_p1 = esl_zext<6,5>(tmp_4_fu_181_p3.read());
}

void matrix_mult::thread_prod_address0() {
    prod_address0 = prod_addr_reg_317.read();
}

void matrix_mult::thread_prod_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read())))) {
        prod_ce0 = ap_const_logic_1;
    } else {
        prod_ce0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_prod_d0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        prod_d0 = grp_fu_276_p3.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        prod_d0 = ap_const_lv16_0;
    } else {
        prod_d0 = "XXXXXXXXXXXXXXXX";
    }
}

void matrix_mult::thread_prod_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter1_exitcond_reg_322.read())))) {
        prod_we0 = ap_const_logic_1;
    } else {
        prod_we0 = ap_const_logic_0;
    }
}

void matrix_mult::thread_tmp_10_fu_244_p2() {
    tmp_10_fu_244_p2 = (!k_cast1_cast_fu_223_p1.read().is_01() || !p_shl1_cast_fu_240_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(k_cast1_cast_fu_223_p1.read()) + sc_biguint<6>(p_shl1_cast_fu_240_p1.read()));
}

void matrix_mult::thread_tmp_11_fu_250_p2() {
    tmp_11_fu_250_p2 = (!tmp_10_fu_244_p2.read().is_01() || !j_cast2_cast_reg_312.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_10_fu_244_p2.read()) + sc_biguint<6>(j_cast2_cast_reg_312.read()));
}

void matrix_mult::thread_tmp_12_cast_fu_259_p1() {
    tmp_12_cast_fu_259_p1 = esl_zext<32,6>(tmp_11_reg_336.read());
}

void matrix_mult::thread_tmp_4_fu_181_p3() {
    tmp_4_fu_181_p3 = esl_concat<3,2>(i_cast3_mid2_v_reg_299.read(), ap_const_lv2_0);
}

void matrix_mult::thread_tmp_7_fu_192_p2() {
    tmp_7_fu_192_p2 = (!i_cast3_mid2_cast_fu_178_p1.read().is_01() || !p_shl_cast_fu_188_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(i_cast3_mid2_cast_fu_178_p1.read()) + sc_biguint<6>(p_shl_cast_fu_188_p1.read()));
}

void matrix_mult::thread_tmp_8_cast_fu_206_p1() {
    tmp_8_cast_fu_206_p1 = esl_zext<32,6>(tmp_8_fu_201_p2.read());
}

void matrix_mult::thread_tmp_8_fu_201_p2() {
    tmp_8_fu_201_p2 = (!tmp_7_reg_306.read().is_01() || !j_cast2_cast_fu_198_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_7_reg_306.read()) + sc_biguint<6>(j_cast2_cast_fu_198_p1.read()));
}

void matrix_mult::thread_tmp_9_cast_fu_255_p1() {
    tmp_9_cast_fu_255_p1 = esl_zext<32,6>(tmp_9_reg_331.read());
}

void matrix_mult::thread_tmp_9_fu_227_p2() {
    tmp_9_fu_227_p2 = (!tmp_7_reg_306.read().is_01() || !k_cast1_cast_fu_223_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(tmp_7_reg_306.read()) + sc_biguint<6>(k_cast1_cast_fu_223_p1.read()));
}

void matrix_mult::thread_tmp_s_fu_232_p3() {
    tmp_s_fu_232_p3 = esl_concat<3,2>(k_phi_fu_131_p4.read(), ap_const_lv2_0);
}

void matrix_mult::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_138_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_fu_211_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(exitcond_fu_211_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state11;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 64 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage1_flag00011011.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            }
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<8>) ("XXXXXXXX");
            break;
    }
}

void matrix_mult::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_address0\" :  \"" << a_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_ce0\" :  \"" << a_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_q0\" :  \"" << a_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_address0\" :  \"" << b_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_ce0\" :  \"" << b_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b_q0\" :  \"" << b_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_address0\" :  \"" << prod_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_ce0\" :  \"" << prod_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_we0\" :  \"" << prod_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"prod_d0\" :  \"" << prod_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"prod_q0\" :  \"" << prod_q0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
