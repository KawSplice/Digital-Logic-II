module HalfAdder (
	input a,
	input b,
	output sum,
	output cout
	);
	
	wire w1,w2;
	
	xor u1(sum,a,b);
	and u2(cout,a,b);
	
	endmodule
	