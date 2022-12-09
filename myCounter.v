module myCounter ( 
	input [3:0] D,
	input up_dn,
	input clk,
	input reset,
	input load,
	output reg [3:0] q
);


always@(posedge clk)
begin
	if(reset)
		q <= 4'b0000;
	else if (load)
		q <= D;
	else if (up_dn)
			q <= q - 1;
	else 
		q <= q + 1;
end
endmodule
