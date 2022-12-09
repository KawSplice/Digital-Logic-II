module lab3b ( 
input [3:0] a,
input ena,
output [1:0] r,
output valid
);

encoder u1(a,ena,r,valid);

endmodule
