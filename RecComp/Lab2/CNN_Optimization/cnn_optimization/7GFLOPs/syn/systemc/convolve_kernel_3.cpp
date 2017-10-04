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
        mHdltvoutHandle << " , " <<  " \"bufw_0_0_Addr_A\" :  \"" << bufw_0_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_0_EN_A\" :  \"" << bufw_0_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_0_WEN_A\" :  \"" << bufw_0_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_0_Din_A\" :  \"" << bufw_0_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_0_0_Dout_A\" :  \"" << bufw_0_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_0_Clk_A\" :  \"" << bufw_0_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_0_Rst_A\" :  \"" << bufw_0_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_1_Addr_A\" :  \"" << bufw_0_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_1_EN_A\" :  \"" << bufw_0_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_1_WEN_A\" :  \"" << bufw_0_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_1_Din_A\" :  \"" << bufw_0_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_0_1_Dout_A\" :  \"" << bufw_0_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_1_Clk_A\" :  \"" << bufw_0_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_1_Rst_A\" :  \"" << bufw_0_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_2_Addr_A\" :  \"" << bufw_0_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_2_EN_A\" :  \"" << bufw_0_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_2_WEN_A\" :  \"" << bufw_0_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_2_Din_A\" :  \"" << bufw_0_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_0_2_Dout_A\" :  \"" << bufw_0_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_2_Clk_A\" :  \"" << bufw_0_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_2_Rst_A\" :  \"" << bufw_0_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_3_Addr_A\" :  \"" << bufw_0_3_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_3_EN_A\" :  \"" << bufw_0_3_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_3_WEN_A\" :  \"" << bufw_0_3_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_3_Din_A\" :  \"" << bufw_0_3_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_0_3_Dout_A\" :  \"" << bufw_0_3_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_3_Clk_A\" :  \"" << bufw_0_3_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_3_Rst_A\" :  \"" << bufw_0_3_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_4_Addr_A\" :  \"" << bufw_0_4_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_4_EN_A\" :  \"" << bufw_0_4_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_4_WEN_A\" :  \"" << bufw_0_4_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_4_Din_A\" :  \"" << bufw_0_4_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_0_4_Dout_A\" :  \"" << bufw_0_4_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_4_Clk_A\" :  \"" << bufw_0_4_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_0_4_Rst_A\" :  \"" << bufw_0_4_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_0_Addr_A\" :  \"" << bufw_1_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_0_EN_A\" :  \"" << bufw_1_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_0_WEN_A\" :  \"" << bufw_1_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_0_Din_A\" :  \"" << bufw_1_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_1_0_Dout_A\" :  \"" << bufw_1_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_0_Clk_A\" :  \"" << bufw_1_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_0_Rst_A\" :  \"" << bufw_1_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_1_Addr_A\" :  \"" << bufw_1_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_1_EN_A\" :  \"" << bufw_1_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_1_WEN_A\" :  \"" << bufw_1_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_1_Din_A\" :  \"" << bufw_1_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_1_1_Dout_A\" :  \"" << bufw_1_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_1_Clk_A\" :  \"" << bufw_1_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_1_Rst_A\" :  \"" << bufw_1_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_2_Addr_A\" :  \"" << bufw_1_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_2_EN_A\" :  \"" << bufw_1_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_2_WEN_A\" :  \"" << bufw_1_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_2_Din_A\" :  \"" << bufw_1_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_1_2_Dout_A\" :  \"" << bufw_1_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_2_Clk_A\" :  \"" << bufw_1_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_2_Rst_A\" :  \"" << bufw_1_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_3_Addr_A\" :  \"" << bufw_1_3_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_3_EN_A\" :  \"" << bufw_1_3_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_3_WEN_A\" :  \"" << bufw_1_3_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_3_Din_A\" :  \"" << bufw_1_3_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_1_3_Dout_A\" :  \"" << bufw_1_3_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_3_Clk_A\" :  \"" << bufw_1_3_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_3_Rst_A\" :  \"" << bufw_1_3_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_4_Addr_A\" :  \"" << bufw_1_4_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_4_EN_A\" :  \"" << bufw_1_4_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_4_WEN_A\" :  \"" << bufw_1_4_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_4_Din_A\" :  \"" << bufw_1_4_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_1_4_Dout_A\" :  \"" << bufw_1_4_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_4_Clk_A\" :  \"" << bufw_1_4_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_1_4_Rst_A\" :  \"" << bufw_1_4_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_0_Addr_A\" :  \"" << bufw_2_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_0_EN_A\" :  \"" << bufw_2_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_0_WEN_A\" :  \"" << bufw_2_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_0_Din_A\" :  \"" << bufw_2_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_2_0_Dout_A\" :  \"" << bufw_2_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_0_Clk_A\" :  \"" << bufw_2_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_0_Rst_A\" :  \"" << bufw_2_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_1_Addr_A\" :  \"" << bufw_2_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_1_EN_A\" :  \"" << bufw_2_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_1_WEN_A\" :  \"" << bufw_2_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_1_Din_A\" :  \"" << bufw_2_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_2_1_Dout_A\" :  \"" << bufw_2_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_1_Clk_A\" :  \"" << bufw_2_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_1_Rst_A\" :  \"" << bufw_2_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_2_Addr_A\" :  \"" << bufw_2_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_2_EN_A\" :  \"" << bufw_2_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_2_WEN_A\" :  \"" << bufw_2_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_2_Din_A\" :  \"" << bufw_2_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_2_2_Dout_A\" :  \"" << bufw_2_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_2_Clk_A\" :  \"" << bufw_2_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_2_Rst_A\" :  \"" << bufw_2_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_3_Addr_A\" :  \"" << bufw_2_3_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_3_EN_A\" :  \"" << bufw_2_3_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_3_WEN_A\" :  \"" << bufw_2_3_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_3_Din_A\" :  \"" << bufw_2_3_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_2_3_Dout_A\" :  \"" << bufw_2_3_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_3_Clk_A\" :  \"" << bufw_2_3_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_3_Rst_A\" :  \"" << bufw_2_3_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_4_Addr_A\" :  \"" << bufw_2_4_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_4_EN_A\" :  \"" << bufw_2_4_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_4_WEN_A\" :  \"" << bufw_2_4_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_4_Din_A\" :  \"" << bufw_2_4_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_2_4_Dout_A\" :  \"" << bufw_2_4_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_4_Clk_A\" :  \"" << bufw_2_4_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_2_4_Rst_A\" :  \"" << bufw_2_4_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_0_Addr_A\" :  \"" << bufw_3_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_0_EN_A\" :  \"" << bufw_3_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_0_WEN_A\" :  \"" << bufw_3_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_0_Din_A\" :  \"" << bufw_3_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_3_0_Dout_A\" :  \"" << bufw_3_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_0_Clk_A\" :  \"" << bufw_3_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_0_Rst_A\" :  \"" << bufw_3_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_1_Addr_A\" :  \"" << bufw_3_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_1_EN_A\" :  \"" << bufw_3_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_1_WEN_A\" :  \"" << bufw_3_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_1_Din_A\" :  \"" << bufw_3_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_3_1_Dout_A\" :  \"" << bufw_3_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_1_Clk_A\" :  \"" << bufw_3_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_1_Rst_A\" :  \"" << bufw_3_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_2_Addr_A\" :  \"" << bufw_3_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_2_EN_A\" :  \"" << bufw_3_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_2_WEN_A\" :  \"" << bufw_3_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_2_Din_A\" :  \"" << bufw_3_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_3_2_Dout_A\" :  \"" << bufw_3_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_2_Clk_A\" :  \"" << bufw_3_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_2_Rst_A\" :  \"" << bufw_3_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_3_Addr_A\" :  \"" << bufw_3_3_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_3_EN_A\" :  \"" << bufw_3_3_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_3_WEN_A\" :  \"" << bufw_3_3_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_3_Din_A\" :  \"" << bufw_3_3_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_3_3_Dout_A\" :  \"" << bufw_3_3_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_3_Clk_A\" :  \"" << bufw_3_3_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_3_Rst_A\" :  \"" << bufw_3_3_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_4_Addr_A\" :  \"" << bufw_3_4_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_4_EN_A\" :  \"" << bufw_3_4_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_4_WEN_A\" :  \"" << bufw_3_4_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_4_Din_A\" :  \"" << bufw_3_4_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_3_4_Dout_A\" :  \"" << bufw_3_4_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_4_Clk_A\" :  \"" << bufw_3_4_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_3_4_Rst_A\" :  \"" << bufw_3_4_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_0_Addr_A\" :  \"" << bufw_4_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_0_EN_A\" :  \"" << bufw_4_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_0_WEN_A\" :  \"" << bufw_4_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_0_Din_A\" :  \"" << bufw_4_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_4_0_Dout_A\" :  \"" << bufw_4_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_0_Clk_A\" :  \"" << bufw_4_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_0_Rst_A\" :  \"" << bufw_4_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_1_Addr_A\" :  \"" << bufw_4_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_1_EN_A\" :  \"" << bufw_4_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_1_WEN_A\" :  \"" << bufw_4_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_1_Din_A\" :  \"" << bufw_4_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_4_1_Dout_A\" :  \"" << bufw_4_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_1_Clk_A\" :  \"" << bufw_4_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_1_Rst_A\" :  \"" << bufw_4_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_2_Addr_A\" :  \"" << bufw_4_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_2_EN_A\" :  \"" << bufw_4_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_2_WEN_A\" :  \"" << bufw_4_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_2_Din_A\" :  \"" << bufw_4_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_4_2_Dout_A\" :  \"" << bufw_4_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_2_Clk_A\" :  \"" << bufw_4_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_2_Rst_A\" :  \"" << bufw_4_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_3_Addr_A\" :  \"" << bufw_4_3_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_3_EN_A\" :  \"" << bufw_4_3_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_3_WEN_A\" :  \"" << bufw_4_3_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_3_Din_A\" :  \"" << bufw_4_3_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_4_3_Dout_A\" :  \"" << bufw_4_3_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_3_Clk_A\" :  \"" << bufw_4_3_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_3_Rst_A\" :  \"" << bufw_4_3_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_4_Addr_A\" :  \"" << bufw_4_4_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_4_EN_A\" :  \"" << bufw_4_4_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_4_WEN_A\" :  \"" << bufw_4_4_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_4_Din_A\" :  \"" << bufw_4_4_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufw_4_4_Dout_A\" :  \"" << bufw_4_4_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_4_Clk_A\" :  \"" << bufw_4_4_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufw_4_4_Rst_A\" :  \"" << bufw_4_4_Rst_A.read() << "\" ";
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
        mHdltvoutHandle << " , " <<  " \"bufi_3_Addr_A\" :  \"" << bufi_3_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_EN_A\" :  \"" << bufi_3_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_WEN_A\" :  \"" << bufi_3_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_Din_A\" :  \"" << bufi_3_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_3_Dout_A\" :  \"" << bufi_3_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_Clk_A\" :  \"" << bufi_3_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_Rst_A\" :  \"" << bufi_3_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_Addr_B\" :  \"" << bufi_3_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_EN_B\" :  \"" << bufi_3_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_WEN_B\" :  \"" << bufi_3_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_Din_B\" :  \"" << bufi_3_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_3_Dout_B\" :  \"" << bufi_3_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_Clk_B\" :  \"" << bufi_3_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_3_Rst_B\" :  \"" << bufi_3_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Addr_A\" :  \"" << bufi_4_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_EN_A\" :  \"" << bufi_4_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_WEN_A\" :  \"" << bufi_4_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Din_A\" :  \"" << bufi_4_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_4_Dout_A\" :  \"" << bufi_4_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Clk_A\" :  \"" << bufi_4_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Rst_A\" :  \"" << bufi_4_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Addr_B\" :  \"" << bufi_4_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_EN_B\" :  \"" << bufi_4_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_WEN_B\" :  \"" << bufi_4_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Din_B\" :  \"" << bufi_4_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_4_Dout_B\" :  \"" << bufi_4_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Clk_B\" :  \"" << bufi_4_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_4_Rst_B\" :  \"" << bufi_4_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Addr_A\" :  \"" << bufi_5_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_EN_A\" :  \"" << bufi_5_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_WEN_A\" :  \"" << bufi_5_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Din_A\" :  \"" << bufi_5_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_5_Dout_A\" :  \"" << bufi_5_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Clk_A\" :  \"" << bufi_5_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Rst_A\" :  \"" << bufi_5_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Addr_B\" :  \"" << bufi_5_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_EN_B\" :  \"" << bufi_5_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_WEN_B\" :  \"" << bufi_5_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Din_B\" :  \"" << bufi_5_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_5_Dout_B\" :  \"" << bufi_5_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Clk_B\" :  \"" << bufi_5_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_5_Rst_B\" :  \"" << bufi_5_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Addr_A\" :  \"" << bufi_6_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_EN_A\" :  \"" << bufi_6_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_WEN_A\" :  \"" << bufi_6_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Din_A\" :  \"" << bufi_6_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_6_Dout_A\" :  \"" << bufi_6_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Clk_A\" :  \"" << bufi_6_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Rst_A\" :  \"" << bufi_6_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Addr_B\" :  \"" << bufi_6_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_EN_B\" :  \"" << bufi_6_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_WEN_B\" :  \"" << bufi_6_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Din_B\" :  \"" << bufi_6_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufi_6_Dout_B\" :  \"" << bufi_6_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Clk_B\" :  \"" << bufi_6_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufi_6_Rst_B\" :  \"" << bufi_6_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Addr_A\" :  \"" << bufo_0_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_EN_A\" :  \"" << bufo_0_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_WEN_A\" :  \"" << bufo_0_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Din_A\" :  \"" << bufo_0_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_0_Dout_A\" :  \"" << bufo_0_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Clk_A\" :  \"" << bufo_0_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Rst_A\" :  \"" << bufo_0_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Addr_B\" :  \"" << bufo_0_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_EN_B\" :  \"" << bufo_0_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_WEN_B\" :  \"" << bufo_0_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Din_B\" :  \"" << bufo_0_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_0_Dout_B\" :  \"" << bufo_0_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Clk_B\" :  \"" << bufo_0_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_0_Rst_B\" :  \"" << bufo_0_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Addr_A\" :  \"" << bufo_1_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_EN_A\" :  \"" << bufo_1_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_WEN_A\" :  \"" << bufo_1_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Din_A\" :  \"" << bufo_1_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_1_Dout_A\" :  \"" << bufo_1_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Clk_A\" :  \"" << bufo_1_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Rst_A\" :  \"" << bufo_1_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Addr_B\" :  \"" << bufo_1_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_EN_B\" :  \"" << bufo_1_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_WEN_B\" :  \"" << bufo_1_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Din_B\" :  \"" << bufo_1_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_1_Dout_B\" :  \"" << bufo_1_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Clk_B\" :  \"" << bufo_1_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_1_Rst_B\" :  \"" << bufo_1_Rst_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Addr_A\" :  \"" << bufo_2_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_EN_A\" :  \"" << bufo_2_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_WEN_A\" :  \"" << bufo_2_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Din_A\" :  \"" << bufo_2_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_2_Dout_A\" :  \"" << bufo_2_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Clk_A\" :  \"" << bufo_2_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Rst_A\" :  \"" << bufo_2_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Addr_B\" :  \"" << bufo_2_Addr_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_EN_B\" :  \"" << bufo_2_EN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_WEN_B\" :  \"" << bufo_2_WEN_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Din_B\" :  \"" << bufo_2_Din_B.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"bufo_2_Dout_B\" :  \"" << bufo_2_Dout_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Clk_B\" :  \"" << bufo_2_Clk_B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"bufo_2_Rst_B\" :  \"" << bufo_2_Rst_B.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

