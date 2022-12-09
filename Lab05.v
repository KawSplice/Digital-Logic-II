module Lab05(
input R,
input S,
input d,
input clk,
output [2:0] Qnot,
output [2:0] Q,
output [2:0]dstorage,
output dlatch_q,
output ms_dlatch,
output dlatch_qnot
);

RS_Latch_Stru  u1(R,S,Q[0],Qnot[0]);
RS_Latch_DataF u2(R,S,Q[1],Qnot[1]);
Gated_RS_Latch u3(R,S,clk,Q[2],Qnot[2]);
Gated_D_Latch  u4(d,clk,dlatch_q,dlatch_qnot);
Master_Slave_Flip_Flop_Circuit u5(d,clk,ms_dlatch);
dstorage u6(d,clk,dstorage[2],dstorage[1],dstorage[0]);

endmodule
