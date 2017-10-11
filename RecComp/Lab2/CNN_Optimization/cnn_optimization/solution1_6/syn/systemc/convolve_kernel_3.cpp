#include "convolve_kernel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void convolve_kernel::thread_hdltv_gen() {
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
        mHdltvoutHandle << " , " <<  " \"bufw_0_Addr_A\" :  \"" << bufw_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_EN_A\" :  \"" << bufw_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_WEN_A\" :  \"" << bufw_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_Din_A\" :  \"" << bufw_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_0_Dout_A\" :  \"" << bufw_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_Clk_A\" :  \"" << bufw_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_Rst_A\" :  \"" << bufw_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_Addr_B\" :  \"" << bufw_0_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_EN_B\" :  \"" << bufw_0_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_WEN_B\" :  \"" << bufw_0_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_Din_B\" :  \"" << bufw_0_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_0_Dout_B\" :  \"" << bufw_0_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_Clk_B\" :  \"" << bufw_0_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_Rst_B\" :  \"" << bufw_0_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Addr_A\" :  \"" << bufw_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_EN_A\" :  \"" << bufw_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_WEN_A\" :  \"" << bufw_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Din_A\" :  \"" << bufw_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_1_Dout_A\" :  \"" << bufw_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Clk_A\" :  \"" << bufw_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Rst_A\" :  \"" << bufw_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Addr_B\" :  \"" << bufw_1_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_EN_B\" :  \"" << bufw_1_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_WEN_B\" :  \"" << bufw_1_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Din_B\" :  \"" << bufw_1_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_1_Dout_B\" :  \"" << bufw_1_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Clk_B\" :  \"" << bufw_1_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_Rst_B\" :  \"" << bufw_1_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Addr_A\" :  \"" << bufw_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_EN_A\" :  \"" << bufw_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_WEN_A\" :  \"" << bufw_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Din_A\" :  \"" << bufw_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_2_Dout_A\" :  \"" << bufw_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Clk_A\" :  \"" << bufw_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Rst_A\" :  \"" << bufw_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Addr_B\" :  \"" << bufw_2_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_EN_B\" :  \"" << bufw_2_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_WEN_B\" :  \"" << bufw_2_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Din_B\" :  \"" << bufw_2_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_2_Dout_B\" :  \"" << bufw_2_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Clk_B\" :  \"" << bufw_2_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_Rst_B\" :  \"" << bufw_2_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Addr_A\" :  \"" << bufw_3_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_EN_A\" :  \"" << bufw_3_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_WEN_A\" :  \"" << bufw_3_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Din_A\" :  \"" << bufw_3_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_3_Dout_A\" :  \"" << bufw_3_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Clk_A\" :  \"" << bufw_3_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Rst_A\" :  \"" << bufw_3_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Addr_B\" :  \"" << bufw_3_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_EN_B\" :  \"" << bufw_3_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_WEN_B\" :  \"" << bufw_3_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Din_B\" :  \"" << bufw_3_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_3_Dout_B\" :  \"" << bufw_3_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Clk_B\" :  \"" << bufw_3_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_Rst_B\" :  \"" << bufw_3_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Addr_A\" :  \"" << bufw_4_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_EN_A\" :  \"" << bufw_4_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_WEN_A\" :  \"" << bufw_4_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Din_A\" :  \"" << bufw_4_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_4_Dout_A\" :  \"" << bufw_4_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Clk_A\" :  \"" << bufw_4_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Rst_A\" :  \"" << bufw_4_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Addr_B\" :  \"" << bufw_4_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_EN_B\" :  \"" << bufw_4_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_WEN_B\" :  \"" << bufw_4_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Din_B\" :  \"" << bufw_4_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_4_Dout_B\" :  \"" << bufw_4_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Clk_B\" :  \"" << bufw_4_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_Rst_B\" :  \"" << bufw_4_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Addr_A\" :  \"" << bufw_5_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_EN_A\" :  \"" << bufw_5_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_WEN_A\" :  \"" << bufw_5_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Din_A\" :  \"" << bufw_5_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_5_Dout_A\" :  \"" << bufw_5_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Clk_A\" :  \"" << bufw_5_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Rst_A\" :  \"" << bufw_5_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Addr_B\" :  \"" << bufw_5_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_EN_B\" :  \"" << bufw_5_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_WEN_B\" :  \"" << bufw_5_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Din_B\" :  \"" << bufw_5_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_5_Dout_B\" :  \"" << bufw_5_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Clk_B\" :  \"" << bufw_5_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_5_Rst_B\" :  \"" << bufw_5_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Addr_A\" :  \"" << bufw_6_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_EN_A\" :  \"" << bufw_6_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_WEN_A\" :  \"" << bufw_6_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Din_A\" :  \"" << bufw_6_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_6_Dout_A\" :  \"" << bufw_6_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Clk_A\" :  \"" << bufw_6_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Rst_A\" :  \"" << bufw_6_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Addr_B\" :  \"" << bufw_6_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_EN_B\" :  \"" << bufw_6_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_WEN_B\" :  \"" << bufw_6_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Din_B\" :  \"" << bufw_6_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_6_Dout_B\" :  \"" << bufw_6_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Clk_B\" :  \"" << bufw_6_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_6_Rst_B\" :  \"" << bufw_6_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Addr_A\" :  \"" << bufw_7_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_EN_A\" :  \"" << bufw_7_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_WEN_A\" :  \"" << bufw_7_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Din_A\" :  \"" << bufw_7_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_7_Dout_A\" :  \"" << bufw_7_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Clk_A\" :  \"" << bufw_7_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Rst_A\" :  \"" << bufw_7_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Addr_B\" :  \"" << bufw_7_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_EN_B\" :  \"" << bufw_7_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_WEN_B\" :  \"" << bufw_7_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Din_B\" :  \"" << bufw_7_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_7_Dout_B\" :  \"" << bufw_7_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Clk_B\" :  \"" << bufw_7_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_7_Rst_B\" :  \"" << bufw_7_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Addr_A\" :  \"" << bufw_8_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_EN_A\" :  \"" << bufw_8_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_WEN_A\" :  \"" << bufw_8_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Din_A\" :  \"" << bufw_8_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_8_Dout_A\" :  \"" << bufw_8_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Clk_A\" :  \"" << bufw_8_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Rst_A\" :  \"" << bufw_8_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Addr_B\" :  \"" << bufw_8_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_EN_B\" :  \"" << bufw_8_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_WEN_B\" :  \"" << bufw_8_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Din_B\" :  \"" << bufw_8_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_8_Dout_B\" :  \"" << bufw_8_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Clk_B\" :  \"" << bufw_8_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_8_Rst_B\" :  \"" << bufw_8_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Addr_A\" :  \"" << bufw_9_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_EN_A\" :  \"" << bufw_9_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_WEN_A\" :  \"" << bufw_9_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Din_A\" :  \"" << bufw_9_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_9_Dout_A\" :  \"" << bufw_9_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Clk_A\" :  \"" << bufw_9_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Rst_A\" :  \"" << bufw_9_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Addr_B\" :  \"" << bufw_9_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_EN_B\" :  \"" << bufw_9_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_WEN_B\" :  \"" << bufw_9_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Din_B\" :  \"" << bufw_9_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_9_Dout_B\" :  \"" << bufw_9_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Clk_B\" :  \"" << bufw_9_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_9_Rst_B\" :  \"" << bufw_9_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Addr_A\" :  \"" << bufw_10_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_EN_A\" :  \"" << bufw_10_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_WEN_A\" :  \"" << bufw_10_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Din_A\" :  \"" << bufw_10_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_10_Dout_A\" :  \"" << bufw_10_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Clk_A\" :  \"" << bufw_10_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Rst_A\" :  \"" << bufw_10_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Addr_B\" :  \"" << bufw_10_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_EN_B\" :  \"" << bufw_10_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_WEN_B\" :  \"" << bufw_10_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Din_B\" :  \"" << bufw_10_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_10_Dout_B\" :  \"" << bufw_10_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Clk_B\" :  \"" << bufw_10_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_10_Rst_B\" :  \"" << bufw_10_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Addr_A\" :  \"" << bufw_11_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_EN_A\" :  \"" << bufw_11_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_WEN_A\" :  \"" << bufw_11_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Din_A\" :  \"" << bufw_11_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_11_Dout_A\" :  \"" << bufw_11_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Clk_A\" :  \"" << bufw_11_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Rst_A\" :  \"" << bufw_11_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Addr_B\" :  \"" << bufw_11_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_EN_B\" :  \"" << bufw_11_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_WEN_B\" :  \"" << bufw_11_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Din_B\" :  \"" << bufw_11_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_11_Dout_B\" :  \"" << bufw_11_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Clk_B\" :  \"" << bufw_11_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_11_Rst_B\" :  \"" << bufw_11_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Addr_A\" :  \"" << bufw_12_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_EN_A\" :  \"" << bufw_12_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_WEN_A\" :  \"" << bufw_12_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Din_A\" :  \"" << bufw_12_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_12_Dout_A\" :  \"" << bufw_12_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Clk_A\" :  \"" << bufw_12_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Rst_A\" :  \"" << bufw_12_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Addr_B\" :  \"" << bufw_12_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_EN_B\" :  \"" << bufw_12_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_WEN_B\" :  \"" << bufw_12_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Din_B\" :  \"" << bufw_12_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_12_Dout_B\" :  \"" << bufw_12_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Clk_B\" :  \"" << bufw_12_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_12_Rst_B\" :  \"" << bufw_12_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Addr_A\" :  \"" << bufi_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_EN_A\" :  \"" << bufi_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_WEN_A\" :  \"" << bufi_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Din_A\" :  \"" << bufi_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_0_Dout_A\" :  \"" << bufi_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Clk_A\" :  \"" << bufi_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Rst_A\" :  \"" << bufi_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Addr_B\" :  \"" << bufi_0_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_EN_B\" :  \"" << bufi_0_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_WEN_B\" :  \"" << bufi_0_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Din_B\" :  \"" << bufi_0_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_0_Dout_B\" :  \"" << bufi_0_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Clk_B\" :  \"" << bufi_0_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_0_Rst_B\" :  \"" << bufi_0_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Addr_A\" :  \"" << bufi_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_EN_A\" :  \"" << bufi_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_WEN_A\" :  \"" << bufi_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Din_A\" :  \"" << bufi_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_1_Dout_A\" :  \"" << bufi_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Clk_A\" :  \"" << bufi_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Rst_A\" :  \"" << bufi_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Addr_B\" :  \"" << bufi_1_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_EN_B\" :  \"" << bufi_1_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_WEN_B\" :  \"" << bufi_1_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Din_B\" :  \"" << bufi_1_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_1_Dout_B\" :  \"" << bufi_1_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Clk_B\" :  \"" << bufi_1_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_1_Rst_B\" :  \"" << bufi_1_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Addr_A\" :  \"" << bufi_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_EN_A\" :  \"" << bufi_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_WEN_A\" :  \"" << bufi_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Din_A\" :  \"" << bufi_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_2_Dout_A\" :  \"" << bufi_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Clk_A\" :  \"" << bufi_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Rst_A\" :  \"" << bufi_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Addr_B\" :  \"" << bufi_2_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_EN_B\" :  \"" << bufi_2_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_WEN_B\" :  \"" << bufi_2_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Din_B\" :  \"" << bufi_2_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_2_Dout_B\" :  \"" << bufi_2_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Clk_B\" :  \"" << bufi_2_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_2_Rst_B\" :  \"" << bufi_2_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Addr_A\" :  \"" << bufo_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_EN_A\" :  \"" << bufo_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_WEN_A\" :  \"" << bufo_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Din_A\" :  \"" << bufo_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_Dout_A\" :  \"" << bufo_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Clk_A\" :  \"" << bufo_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Rst_A\" :  \"" << bufo_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Addr_B\" :  \"" << bufo_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_EN_B\" :  \"" << bufo_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_WEN_B\" :  \"" << bufo_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Din_B\" :  \"" << bufo_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_Dout_B\" :  \"" << bufo_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Clk_B\" :  \"" << bufo_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_Rst_B\" :  \"" << bufo_Rst_B.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
