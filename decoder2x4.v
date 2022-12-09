module decoder2x4( 
	input [1:0] a,
	input ena, 
	input p, 
	output[3:0] y
 );  
wire [3:0] decoder;

assign y = ena ? a : 4'bz;

assign decoder[0] =  a == 4'b1000;
assign decoder[1] =  a == 4'b0100;
assign decoder[2] =  a == 4'b0010;
assign decoder[3] =  a == 4'b0001;



endmodule
