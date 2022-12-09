module mux2_1b (
	input a,
	input b,
	input sel,
	output x
);

//add code here
		wire w1,w2,w3;
		
	not u1 (w1, sel);
	and u2(w2,a, w1);
	and u3(w3,b,sel);
	or u4(x,w2,w3);

	
endmodule

