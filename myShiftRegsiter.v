module myShiftRegsiter ( 
	input [3:0] D,
	input sin,
	input load,
	input l_r,
	input clk,
	input reset,
	output reg [3:0] q,
	output reg sout 
);


always@(posedge clk or negedge reset)
begin
	if(~reset)
		q <= 4'b0000;
	else if(~load) 
	begin 
		if ( l_r )
		begin
			q <= {q[2:0],sin};
			sout = q[3];
		end
		else
		begin 
			q <= {sin,q[3:1]};
			sout = q[0];
		end
	end	
	else 
		begin 
			q <= D;
		end
end
endmodule
