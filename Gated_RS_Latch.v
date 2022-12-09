module Gated_RS_Latch (
input S,
input R,
input CLK,
output Q2,
output Q2not
);

assign Q2 = CLK? (S + ((~R) & Q2)) : Q2;
assign Q2not = ~Q2;

endmodule

