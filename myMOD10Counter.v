module myMOD10Counter (
input up_dn,
input cen, 
input clk, 
input reset,
output reg  [3:0] q
);

always @(negedge clk or negedge reset)
begin 
	if(~reset)
		q <= 4'b0000;
	else if (~cen)
		begin
			if(up_dn)
				if (q < 4'b1001)
					q <= q + 1;
				else
					q <= 4'b0000;
			else 
				if ( q > 4'b0000)
					q <= q - 1;
					
				else 
					q <= 4'b1001;
		end
	else 
		q <= q;
end
endmodule 