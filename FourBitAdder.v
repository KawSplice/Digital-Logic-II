+module FourBitAdder(
	input [3:0] a,
	input [3:0] b,
	output[3:0] sum,
	output cout
	);	
	
	
   FullAdder u1(a[3],b[3],c2,sum[3],cout);
	FullAdder u2(a[2],b[2],c1,sum[2],c2);
	FullAdder u3(a[1],b[1],c0,sum[1],c1);
	HalfAdder u4(a[0],b[0],sum[0],c0);


	endmodule
	