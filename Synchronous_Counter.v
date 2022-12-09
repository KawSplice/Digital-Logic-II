module Synchronous_Counter (
input cen, 
input ud, 
input reset, 
input clk, 
output [6:0] HEX0 

);

wire [4:0] X;

johnson u1(cen,ud,reset,clk,X);
myBCDDecoder u2(X[4:0],HEX0);

endmodule
