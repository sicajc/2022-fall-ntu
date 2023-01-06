// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "fir.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic fir::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic fir::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> fir::ap_ST_fsm_state1 = "1";
const sc_lv<8> fir::ap_ST_fsm_state2 = "10";
const sc_lv<8> fir::ap_ST_fsm_state3 = "100";
const sc_lv<8> fir::ap_ST_fsm_state4 = "1000";
const sc_lv<8> fir::ap_ST_fsm_state5 = "10000";
const sc_lv<8> fir::ap_ST_fsm_state6 = "100000";
const sc_lv<8> fir::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> fir::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> fir::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> fir::ap_const_lv32_4 = "100";
const sc_lv<32> fir::ap_const_lv32_5 = "101";
const sc_lv<32> fir::ap_const_lv32_1 = "1";
const sc_lv<1> fir::ap_const_lv1_0 = "0";
const sc_lv<32> fir::ap_const_lv32_3 = "11";
const sc_lv<32> fir::ap_const_lv32_6 = "110";
const sc_lv<32> fir::ap_const_lv32_7 = "111";
const sc_lv<32> fir::ap_const_lv32_2 = "10";
const sc_lv<7> fir::ap_const_lv7_7F = "1111111";
const sc_lv<1> fir::ap_const_lv1_1 = "1";
const sc_lv<8> fir::ap_const_lv8_7F = "1111111";
const sc_lv<7> fir::ap_const_lv7_0 = "0000000";
const sc_lv<8> fir::ap_const_lv8_FF = "11111111";
const sc_lv<8> fir::ap_const_lv8_FE = "11111110";
const sc_lv<8> fir::ap_const_lv8_FD = "11111101";
const sc_lv<8> fir::ap_const_lv8_FC = "11111100";
const bool fir::ap_const_boolean_1 = true;

fir::fir(sc_module_name name) : sc_module(name), mVcdFile(0) {
    shift_reg_U = new fir_shift_reg("shift_reg_U");
    shift_reg_U->clk(ap_clk);
    shift_reg_U->reset(ap_rst);
    shift_reg_U->address0(shift_reg_address0);
    shift_reg_U->ce0(shift_reg_ce0);
    shift_reg_U->we0(shift_reg_we0);
    shift_reg_U->d0(shift_reg_d0);
    shift_reg_U->q0(shift_reg_q0);
    shift_reg_U->address1(shift_reg_address1);
    shift_reg_U->ce1(shift_reg_ce1);
    shift_reg_U->q1(shift_reg_q1);
    c_U = new fir_c("c_U");
    c_U->clk(ap_clk);
    c_U->reset(ap_rst);
    c_U->address0(c_address0);
    c_U->ce0(c_ce0);
    c_U->q0(c_q0);
    c_U->address1(c_address1);
    c_U->ce1(c_ce1);
    c_U->q1(c_q1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln37_1_fu_278_p2);
    sensitive << ( i_1_0_reg_192 );

    SC_METHOD(thread_add_ln37_2_fu_294_p2);
    sensitive << ( i_1_0_reg_192 );

    SC_METHOD(thread_add_ln37_3_fu_310_p2);
    sensitive << ( i_1_0_reg_192 );

    SC_METHOD(thread_add_ln37_fu_262_p2);
    sensitive << ( i_1_0_reg_192 );

    SC_METHOD(thread_add_ln38_1_fu_360_p2);
    sensitive << ( mul_ln38_2_reg_451 );
    sensitive << ( mul_ln38_3_reg_456 );

    SC_METHOD(thread_add_ln38_2_fu_364_p2);
    sensitive << ( add_ln38_reg_461 );
    sensitive << ( add_ln38_1_fu_360_p2 );

    SC_METHOD(thread_add_ln38_3_fu_369_p2);
    sensitive << ( acc_0_0_reg_179 );
    sensitive << ( add_ln38_2_fu_364_p2 );

    SC_METHOD(thread_add_ln38_fu_356_p2);
    sensitive << ( mul_ln38_reg_441 );
    sensitive << ( mul_ln38_1_reg_446 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_fu_248_p3 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_fu_248_p3 );

    SC_METHOD(thread_c_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln38_fu_256_p1 );
    sensitive << ( zext_ln38_2_fu_288_p1 );

    SC_METHOD(thread_c_address1);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln38_1_fu_272_p1 );
    sensitive << ( zext_ln38_3_fu_304_p1 );

    SC_METHOD(thread_c_ce0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_c_ce1);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_i_1_0_cast_fu_244_p1);
    sensitive << ( i_1_0_reg_192 );

    SC_METHOD(thread_i_fu_228_p2);
    sensitive << ( i_0_reg_167 );

    SC_METHOD(thread_icmp_ln30_fu_222_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_0_reg_167 );

    SC_METHOD(thread_mul_ln38_1_fu_330_p1);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( reg_218 );

    SC_METHOD(thread_mul_ln38_1_fu_330_p2);
    sensitive << ( reg_213 );
    sensitive << ( mul_ln38_1_fu_330_p1 );

    SC_METHOD(thread_mul_ln38_2_fu_340_p1);
    sensitive << ( reg_209 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_mul_ln38_2_fu_340_p2);
    sensitive << ( reg_204 );
    sensitive << ( mul_ln38_2_fu_340_p1 );

    SC_METHOD(thread_mul_ln38_3_fu_350_p1);
    sensitive << ( reg_218 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_mul_ln38_3_fu_350_p2);
    sensitive << ( reg_213 );
    sensitive << ( mul_ln38_3_fu_350_p1 );

    SC_METHOD(thread_mul_ln38_fu_320_p1);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( reg_209 );

    SC_METHOD(thread_mul_ln38_fu_320_p2);
    sensitive << ( reg_204 );
    sensitive << ( mul_ln38_fu_320_p1 );

    SC_METHOD(thread_sext_ln37_1_fu_284_p1);
    sensitive << ( add_ln37_1_fu_278_p2 );

    SC_METHOD(thread_sext_ln37_2_fu_300_p1);
    sensitive << ( add_ln37_2_fu_294_p2 );

    SC_METHOD(thread_sext_ln37_fu_268_p1);
    sensitive << ( add_ln37_fu_262_p2 );

    SC_METHOD(thread_shift_reg_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln30_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln31_fu_234_p1 );
    sensitive << ( zext_ln31_1_fu_239_p1 );
    sensitive << ( zext_ln38_fu_256_p1 );
    sensitive << ( zext_ln38_3_fu_304_p1 );

    SC_METHOD(thread_shift_reg_address1);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( zext_ln38_1_fu_272_p1 );
    sensitive << ( zext_ln38_2_fu_288_p1 );

    SC_METHOD(thread_shift_reg_ce0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln30_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_shift_reg_ce1);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_shift_reg_d0);
    sensitive << ( x );
    sensitive << ( shift_reg_q0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln30_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_shift_reg_we0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln30_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_fu_248_p3);
    sensitive << ( i_1_0_reg_192 );

    SC_METHOD(thread_y);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_fu_248_p3 );
    sensitive << ( acc_0_0_reg_179 );

    SC_METHOD(thread_y_ap_vld);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_fu_248_p3 );

    SC_METHOD(thread_zext_ln31_1_fu_239_p1);
    sensitive << ( i_0_reg_167 );

    SC_METHOD(thread_zext_ln31_fu_234_p1);
    sensitive << ( i_fu_228_p2 );

    SC_METHOD(thread_zext_ln38_1_fu_272_p1);
    sensitive << ( sext_ln37_fu_268_p1 );

    SC_METHOD(thread_zext_ln38_2_fu_288_p1);
    sensitive << ( sext_ln37_1_fu_284_p1 );

    SC_METHOD(thread_zext_ln38_3_fu_304_p1);
    sensitive << ( sext_ln37_2_fu_300_p1 );

    SC_METHOD(thread_zext_ln38_fu_256_p1);
    sensitive << ( i_1_0_cast_fu_244_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln30_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_fu_248_p3 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "00000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "fir_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, y, "(port)y");
    sc_trace(mVcdFile, y_ap_vld, "(port)y_ap_vld");
    sc_trace(mVcdFile, x, "(port)x");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, shift_reg_address0, "shift_reg_address0");
    sc_trace(mVcdFile, shift_reg_ce0, "shift_reg_ce0");
    sc_trace(mVcdFile, shift_reg_we0, "shift_reg_we0");
    sc_trace(mVcdFile, shift_reg_d0, "shift_reg_d0");
    sc_trace(mVcdFile, shift_reg_q0, "shift_reg_q0");
    sc_trace(mVcdFile, shift_reg_address1, "shift_reg_address1");
    sc_trace(mVcdFile, shift_reg_ce1, "shift_reg_ce1");
    sc_trace(mVcdFile, shift_reg_q1, "shift_reg_q1");
    sc_trace(mVcdFile, c_address0, "c_address0");
    sc_trace(mVcdFile, c_ce0, "c_ce0");
    sc_trace(mVcdFile, c_q0, "c_q0");
    sc_trace(mVcdFile, c_address1, "c_address1");
    sc_trace(mVcdFile, c_ce1, "c_ce1");
    sc_trace(mVcdFile, c_q1, "c_q1");
    sc_trace(mVcdFile, reg_204, "reg_204");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, reg_209, "reg_209");
    sc_trace(mVcdFile, reg_213, "reg_213");
    sc_trace(mVcdFile, reg_218, "reg_218");
    sc_trace(mVcdFile, i_fu_228_p2, "i_fu_228_p2");
    sc_trace(mVcdFile, i_reg_383, "i_reg_383");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln30_fu_222_p2, "icmp_ln30_fu_222_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_fu_248_p3, "tmp_fu_248_p3");
    sc_trace(mVcdFile, add_ln37_3_fu_310_p2, "add_ln37_3_fu_310_p2");
    sc_trace(mVcdFile, add_ln37_3_reg_436, "add_ln37_3_reg_436");
    sc_trace(mVcdFile, mul_ln38_fu_320_p2, "mul_ln38_fu_320_p2");
    sc_trace(mVcdFile, mul_ln38_reg_441, "mul_ln38_reg_441");
    sc_trace(mVcdFile, mul_ln38_1_fu_330_p2, "mul_ln38_1_fu_330_p2");
    sc_trace(mVcdFile, mul_ln38_1_reg_446, "mul_ln38_1_reg_446");
    sc_trace(mVcdFile, mul_ln38_2_fu_340_p2, "mul_ln38_2_fu_340_p2");
    sc_trace(mVcdFile, mul_ln38_2_reg_451, "mul_ln38_2_reg_451");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, mul_ln38_3_fu_350_p2, "mul_ln38_3_fu_350_p2");
    sc_trace(mVcdFile, mul_ln38_3_reg_456, "mul_ln38_3_reg_456");
    sc_trace(mVcdFile, add_ln38_fu_356_p2, "add_ln38_fu_356_p2");
    sc_trace(mVcdFile, add_ln38_reg_461, "add_ln38_reg_461");
    sc_trace(mVcdFile, add_ln38_3_fu_369_p2, "add_ln38_3_fu_369_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, i_0_reg_167, "i_0_reg_167");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, acc_0_0_reg_179, "acc_0_0_reg_179");
    sc_trace(mVcdFile, i_1_0_reg_192, "i_1_0_reg_192");
    sc_trace(mVcdFile, zext_ln31_fu_234_p1, "zext_ln31_fu_234_p1");
    sc_trace(mVcdFile, zext_ln31_1_fu_239_p1, "zext_ln31_1_fu_239_p1");
    sc_trace(mVcdFile, zext_ln38_fu_256_p1, "zext_ln38_fu_256_p1");
    sc_trace(mVcdFile, zext_ln38_1_fu_272_p1, "zext_ln38_1_fu_272_p1");
    sc_trace(mVcdFile, zext_ln38_2_fu_288_p1, "zext_ln38_2_fu_288_p1");
    sc_trace(mVcdFile, zext_ln38_3_fu_304_p1, "zext_ln38_3_fu_304_p1");
    sc_trace(mVcdFile, i_1_0_cast_fu_244_p1, "i_1_0_cast_fu_244_p1");
    sc_trace(mVcdFile, add_ln37_fu_262_p2, "add_ln37_fu_262_p2");
    sc_trace(mVcdFile, sext_ln37_fu_268_p1, "sext_ln37_fu_268_p1");
    sc_trace(mVcdFile, add_ln37_1_fu_278_p2, "add_ln37_1_fu_278_p2");
    sc_trace(mVcdFile, sext_ln37_1_fu_284_p1, "sext_ln37_1_fu_284_p1");
    sc_trace(mVcdFile, add_ln37_2_fu_294_p2, "add_ln37_2_fu_294_p2");
    sc_trace(mVcdFile, sext_ln37_2_fu_300_p1, "sext_ln37_2_fu_300_p1");
    sc_trace(mVcdFile, mul_ln38_fu_320_p1, "mul_ln38_fu_320_p1");
    sc_trace(mVcdFile, mul_ln38_1_fu_330_p1, "mul_ln38_1_fu_330_p1");
    sc_trace(mVcdFile, mul_ln38_2_fu_340_p1, "mul_ln38_2_fu_340_p1");
    sc_trace(mVcdFile, mul_ln38_3_fu_350_p1, "mul_ln38_3_fu_350_p1");
    sc_trace(mVcdFile, add_ln38_1_fu_360_p2, "add_ln38_1_fu_360_p2");
    sc_trace(mVcdFile, add_ln38_2_fu_364_p2, "add_ln38_2_fu_364_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("fir.hdltvin.dat");
    mHdltvoutHandle.open("fir.hdltvout.dat");
}

fir::~fir() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete shift_reg_U;
    delete c_U;
}

void fir::thread_ap_clk_no_reset_() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        acc_0_0_reg_179 = add_ln38_3_fu_369_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_1))) {
        acc_0_0_reg_179 = ap_const_lv32_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_0_reg_167 = ap_const_lv7_7F;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_0_reg_167 = i_reg_383.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        i_1_0_reg_192 = add_ln37_3_reg_436.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_1))) {
        i_1_0_reg_192 = ap_const_lv8_7F;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        reg_204 = shift_reg_q1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        reg_204 = shift_reg_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        reg_213 = shift_reg_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        reg_213 = shift_reg_q1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        add_ln37_3_reg_436 = add_ln37_3_fu_310_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        add_ln38_reg_461 = add_ln38_fu_356_p2.read();
        mul_ln38_2_reg_451 = mul_ln38_2_fu_340_p2.read();
        mul_ln38_3_reg_456 = mul_ln38_3_fu_350_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_0))) {
        i_reg_383 = i_fu_228_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        mul_ln38_1_reg_446 = mul_ln38_1_fu_330_p2.read();
        mul_ln38_reg_441 = mul_ln38_fu_320_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        reg_209 = c_q0.read();
        reg_218 = c_q1.read();
    }
}

void fir::thread_add_ln37_1_fu_278_p2() {
    add_ln37_1_fu_278_p2 = (!i_1_0_reg_192.read().is_01() || !ap_const_lv8_FE.is_01())? sc_lv<8>(): (sc_bigint<8>(i_1_0_reg_192.read()) + sc_bigint<8>(ap_const_lv8_FE));
}

void fir::thread_add_ln37_2_fu_294_p2() {
    add_ln37_2_fu_294_p2 = (!i_1_0_reg_192.read().is_01() || !ap_const_lv8_FD.is_01())? sc_lv<8>(): (sc_bigint<8>(i_1_0_reg_192.read()) + sc_bigint<8>(ap_const_lv8_FD));
}

void fir::thread_add_ln37_3_fu_310_p2() {
    add_ln37_3_fu_310_p2 = (!i_1_0_reg_192.read().is_01() || !ap_const_lv8_FC.is_01())? sc_lv<8>(): (sc_bigint<8>(i_1_0_reg_192.read()) + sc_bigint<8>(ap_const_lv8_FC));
}

void fir::thread_add_ln37_fu_262_p2() {
    add_ln37_fu_262_p2 = (!i_1_0_reg_192.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<8>(): (sc_bigint<8>(i_1_0_reg_192.read()) + sc_bigint<8>(ap_const_lv8_FF));
}

void fir::thread_add_ln38_1_fu_360_p2() {
    add_ln38_1_fu_360_p2 = (!mul_ln38_2_reg_451.read().is_01() || !mul_ln38_3_reg_456.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln38_2_reg_451.read()) + sc_biguint<32>(mul_ln38_3_reg_456.read()));
}

void fir::thread_add_ln38_2_fu_364_p2() {
    add_ln38_2_fu_364_p2 = (!add_ln38_1_fu_360_p2.read().is_01() || !add_ln38_reg_461.read().is_01())? sc_lv<32>(): (sc_biguint<32>(add_ln38_1_fu_360_p2.read()) + sc_biguint<32>(add_ln38_reg_461.read()));
}

void fir::thread_add_ln38_3_fu_369_p2() {
    add_ln38_3_fu_369_p2 = (!acc_0_0_reg_179.read().is_01() || !add_ln38_2_fu_364_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(acc_0_0_reg_179.read()) + sc_biguint<32>(add_ln38_2_fu_364_p2.read()));
}

void fir::thread_add_ln38_fu_356_p2() {
    add_ln38_fu_356_p2 = (!mul_ln38_reg_441.read().is_01() || !mul_ln38_1_reg_446.read().is_01())? sc_lv<32>(): (sc_biguint<32>(mul_ln38_reg_441.read()) + sc_biguint<32>(mul_ln38_1_reg_446.read()));
}

void fir::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void fir::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void fir::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void fir::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void fir::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void fir::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void fir::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void fir::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void fir::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(tmp_fu_248_p3.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void fir::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void fir::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(tmp_fu_248_p3.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fir::thread_c_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        c_address0 =  (sc_lv<7>) (zext_ln38_2_fu_288_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        c_address0 =  (sc_lv<7>) (zext_ln38_fu_256_p1.read());
    } else {
        c_address0 = "XXXXXXX";
    }
}

void fir::thread_c_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        c_address1 =  (sc_lv<7>) (zext_ln38_3_fu_304_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        c_address1 =  (sc_lv<7>) (zext_ln38_1_fu_272_p1.read());
    } else {
        c_address1 = "XXXXXXX";
    }
}

void fir::thread_c_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        c_ce0 = ap_const_logic_1;
    } else {
        c_ce0 = ap_const_logic_0;
    }
}

void fir::thread_c_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        c_ce1 = ap_const_logic_1;
    } else {
        c_ce1 = ap_const_logic_0;
    }
}

void fir::thread_i_1_0_cast_fu_244_p1() {
    i_1_0_cast_fu_244_p1 = esl_sext<32,8>(i_1_0_reg_192.read());
}

void fir::thread_i_fu_228_p2() {
    i_fu_228_p2 = (!i_0_reg_167.read().is_01() || !ap_const_lv7_7F.is_01())? sc_lv<7>(): (sc_biguint<7>(i_0_reg_167.read()) + sc_bigint<7>(ap_const_lv7_7F));
}

void fir::thread_icmp_ln30_fu_222_p2() {
    icmp_ln30_fu_222_p2 = (!i_0_reg_167.read().is_01() || !ap_const_lv7_0.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_167.read() == ap_const_lv7_0);
}

void fir::thread_mul_ln38_1_fu_330_p1() {
    mul_ln38_1_fu_330_p1 = reg_218.read();
}

void fir::thread_mul_ln38_1_fu_330_p2() {
    mul_ln38_1_fu_330_p2 = (!reg_213.read().is_01() || !mul_ln38_1_fu_330_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(reg_213.read()) * sc_bigint<5>(mul_ln38_1_fu_330_p1.read());
}

void fir::thread_mul_ln38_2_fu_340_p1() {
    mul_ln38_2_fu_340_p1 = reg_209.read();
}

void fir::thread_mul_ln38_2_fu_340_p2() {
    mul_ln38_2_fu_340_p2 = (!reg_204.read().is_01() || !mul_ln38_2_fu_340_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(reg_204.read()) * sc_bigint<5>(mul_ln38_2_fu_340_p1.read());
}

void fir::thread_mul_ln38_3_fu_350_p1() {
    mul_ln38_3_fu_350_p1 = reg_218.read();
}

void fir::thread_mul_ln38_3_fu_350_p2() {
    mul_ln38_3_fu_350_p2 = (!reg_213.read().is_01() || !mul_ln38_3_fu_350_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(reg_213.read()) * sc_bigint<5>(mul_ln38_3_fu_350_p1.read());
}

void fir::thread_mul_ln38_fu_320_p1() {
    mul_ln38_fu_320_p1 = reg_209.read();
}

void fir::thread_mul_ln38_fu_320_p2() {
    mul_ln38_fu_320_p2 = (!reg_204.read().is_01() || !mul_ln38_fu_320_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(reg_204.read()) * sc_bigint<5>(mul_ln38_fu_320_p1.read());
}

void fir::thread_sext_ln37_1_fu_284_p1() {
    sext_ln37_1_fu_284_p1 = esl_sext<32,8>(add_ln37_1_fu_278_p2.read());
}

void fir::thread_sext_ln37_2_fu_300_p1() {
    sext_ln37_2_fu_300_p1 = esl_sext<32,8>(add_ln37_2_fu_294_p2.read());
}

void fir::thread_sext_ln37_fu_268_p1() {
    sext_ln37_fu_268_p1 = esl_sext<32,8>(add_ln37_fu_262_p2.read());
}

void fir::thread_shift_reg_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        shift_reg_address0 =  (sc_lv<7>) (zext_ln38_3_fu_304_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        shift_reg_address0 =  (sc_lv<7>) (zext_ln38_fu_256_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_address0 =  (sc_lv<7>) (zext_ln31_1_fu_239_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_1))) {
        shift_reg_address0 = ap_const_lv7_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_0))) {
        shift_reg_address0 =  (sc_lv<7>) (zext_ln31_fu_234_p1.read());
    } else {
        shift_reg_address0 = "XXXXXXX";
    }
}

void fir::thread_shift_reg_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        shift_reg_address1 =  (sc_lv<7>) (zext_ln38_2_fu_288_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        shift_reg_address1 =  (sc_lv<7>) (zext_ln38_1_fu_272_p1.read());
    } else {
        shift_reg_address1 = "XXXXXXX";
    }
}

void fir::thread_shift_reg_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_1)))) {
        shift_reg_ce0 = ap_const_logic_1;
    } else {
        shift_reg_ce0 = ap_const_logic_0;
    }
}

void fir::thread_shift_reg_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        shift_reg_ce1 = ap_const_logic_1;
    } else {
        shift_reg_ce1 = ap_const_logic_0;
    }
}

void fir::thread_shift_reg_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        shift_reg_d0 = shift_reg_q0.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_1))) {
        shift_reg_d0 = x.read();
    } else {
        shift_reg_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void fir::thread_shift_reg_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_1)))) {
        shift_reg_we0 = ap_const_logic_1;
    } else {
        shift_reg_we0 = ap_const_logic_0;
    }
}

void fir::thread_tmp_fu_248_p3() {
    tmp_fu_248_p3 = i_1_0_reg_192.read().range(7, 7);
}

void fir::thread_y() {
    y = acc_0_0_reg_179.read();
}

void fir::thread_y_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(tmp_fu_248_p3.read(), ap_const_lv1_1))) {
        y_ap_vld = ap_const_logic_1;
    } else {
        y_ap_vld = ap_const_logic_0;
    }
}

void fir::thread_zext_ln31_1_fu_239_p1() {
    zext_ln31_1_fu_239_p1 = esl_zext<64,7>(i_0_reg_167.read());
}

void fir::thread_zext_ln31_fu_234_p1() {
    zext_ln31_fu_234_p1 = esl_zext<64,7>(i_fu_228_p2.read());
}

void fir::thread_zext_ln38_1_fu_272_p1() {
    zext_ln38_1_fu_272_p1 = esl_zext<64,32>(sext_ln37_fu_268_p1.read());
}

void fir::thread_zext_ln38_2_fu_288_p1() {
    zext_ln38_2_fu_288_p1 = esl_zext<64,32>(sext_ln37_1_fu_284_p1.read());
}

void fir::thread_zext_ln38_3_fu_304_p1() {
    zext_ln38_3_fu_304_p1 = esl_zext<64,32>(sext_ln37_2_fu_300_p1.read());
}

void fir::thread_zext_ln38_fu_256_p1() {
    zext_ln38_fu_256_p1 = esl_zext<64,32>(i_1_0_cast_fu_244_p1.read());
}

void fir::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln30_fu_222_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(tmp_fu_248_p3.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<8>) ("XXXXXXXX");
            break;
    }
}

void fir::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"y\" :  \"" << y.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"y_ap_vld\" :  \"" << y_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"x\" :  \"" << x.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
