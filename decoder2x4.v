module decoder2x4 (
	input [1:0] a,
	input ena, 
	input p,
	output [3:0] y
); 

wire [3:0] yout;

assign y = ~ena ? (p ? ~yout : yout) : 4'bzzzz;


assign yout[0]=((~a[1])&(~a[0]));
assign yout[1]=((~a[1])&a[0]);
assign yout[2]=(a[1]&(~a[0]));
assign yout[3]=(a[1]&a[0]);


endmodule



  
	