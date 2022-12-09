module RS_Latch_Stru (
	input R,
	input S,
	output Q,
	output Qnot
);

	// NOR RS Latch
	nor U1(Q, R, Qnot);
	nor U2(Qnot, S, Q);

endmodule
