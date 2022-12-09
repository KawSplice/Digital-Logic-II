// Filename         :Lab4
// Assignment       :Display the BCDAdder and myBCDto7Seg
// Author           :Luis Solis
// Description      : 
// Date Created     : 10/28/2021
// Modification Date: 10/28/2021
module Lab4 ( 
	input [3:0] a,
	input [3:0] b, 
	output [6:0] HEX0,
	output [6:0] HEX1
);   
wire [7:0] X;

myBCDAdder  u1(a,b,X);
myBCDto7Seg u2(X[3:0],HEX0);
myBCDto7Seg u3(X[7:4],HEX1);
endmodule
