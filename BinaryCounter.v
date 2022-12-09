module BinaryCounter (
	input [3:0] D,
	input up_dn,
	input clk,
	input reset,
	input load,
	output [6:0] HEX0 
	);
	
	wire [3:0] X;
	
	myCounter u1(D,up_dn,clk,reset,load,X);
	myDecoder u2(X[3:0], HEX0);
	
	endmodule 