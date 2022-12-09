module myBCDDecoder(
input [4:0] c,
output reg[6:0] HEX0 
);

always @(c)
	begin 
		case(c) 
				
				5'b00000 : HEX0 = 7'b1000000;
				5'b00001 : HEX0 = 7'b1111001;
				5'b00011 : HEX0 = 7'b0100100;
				5'b00111 : HEX0 = 7'b0110000;
			   5'b01111 : HEX0 = 7'b0011001;
				5'b11111 : HEX0 = 7'b0010010;
				5'b11110 : HEX0 = 7'b0000010;
				5'b11100 : HEX0 = 7'b1111000;
				5'b11000 : HEX0 = 7'b0000000;
				5'b10000 : HEX0 = 7'b0010000;
				default  : HEX0 = 7'b1111111;
		endcase
	end 
				
endmodule 