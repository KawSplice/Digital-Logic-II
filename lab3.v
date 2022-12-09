module lab3( 
	input [1:0] a,
	input ena, 
	input p, 
	output[3:0] y
 );
 

decoder2x4 u1(a,ena,p,y);  
 
 
endmodule
 
 