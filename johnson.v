module johnson ( 
input cen, 
input ud, 
input reset, 
input clk, 
output reg [4:0] q
);

reg [3:0] count;

always @(posedge clk or negedge reset) 
begin 
	if(~reset)
			count <= 4'b0000;
			
	else if(~cen)
			count <= count;
			
	else 
			if(ud) 
				if (count < 4'b1001)
					count <= count + 1;
				else 
					count <= 4'b0000;
			else 
				if ( count > 4'b0000)
					count <= count - 1;
				else 
					count <= 4'b1001;
			
	
end


always@(count)
begin 
	case(count) 
		4'b0000 : q <= 5'b00000;
		4'b0001 : q <= 5'b00001;
		4'b0010 : q <= 5'b00011;
		4'b0011 : q <= 5'b00111;
		4'b0100 : q <= 5'b01111;
		4'b0101 : q <= 5'b11111;
		4'b0110 : q <= 5'b11110;
		4'b0111 : q <= 5'b11100;
		4'b1000 : q <= 5'b11000;
		4'b1001 : q <= 5'b10000;
		default : q <= 5'b00000;
    endcase
end
	



endmodule
