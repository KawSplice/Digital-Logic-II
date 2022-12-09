module lab2 (
	input [3:0] a,
	input [3:0] b,
	input sel,
	output [3:0] y
);

	mux2_1b u5(a[3],b[3],sel,y[3]);
	mux2_1b u6(a[2],b[2],sel,y[2]);
	mux2_1b u7(a[1],b[1],sel,y[1]);
	mux2_1b u8(a[0],b[0],sel,y[0]);
endmodule
	
 