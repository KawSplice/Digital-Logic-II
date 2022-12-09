module Mod10Counter (
input up_dn,
input cen, 
input clk, 
input reset,
output [6:0]HEX0 
);

wire [3:0] X;

myMOD10Counter u1(up_dn, cen,clk,reset,X);
myBCDDecoder u2(X[3:0],HEX0);

endmodule 