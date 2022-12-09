module Master_Slave_Flip_Flop_Circuit (
input D1,
input CLK,
output Q4,
output Qnot4
);

wire w1,w2;
Gated_D_Latch u1(D1,CLK2,w1,w2);
Gated_D_Latch u2(w1,~CLK2,Q4,Q4not);

endmodule
