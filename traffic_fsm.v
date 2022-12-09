module traffic_fsm (
input clk,
input reset,
input sen,
output reg [2:0] farmroad,
output reg [2:0] highway
);

reg [1:0] state; 
reg [2:0] count;

parameter HGFR = 2'b00, 
			 HYFR = 2'b01,
			 HRFG = 2'b10,
			 HRFY = 2'b11;

always @(negedge clk or negedge reset)
begin 
	if (~reset)
		begin 
			state <= 2'b00;
			count <=0;
		end
		else 
			case(state) 
				HGFR :
					if(count < 6)
							begin 
								state <= HGFR;
								count <= count + 1;
							end
					else 
						if(sen) 
							begin
							state <= HGFR;
							count <= count;
							end
						else 
							begin
							state <= HYFR;
							count <= 0;
							end
				HYFR :
					if(count < 4)
							begin
								state <= HYFR;
								count <= count + 1;
							end
					else 
							begin
							state <= HRFG;
							count <= 0;
							end
				HRFG :
					if(count < 6) 
							begin
							state <= state;
							count <= count + 1;
							end
					else 
						if (~sen)
							begin
							state <= state;
							count <= count;
							end
						else 
							begin
							state <= HRFY;
							count <= 0;
							end
				HRFY :
					if(count  < 4) 
							begin
							state <= HRFY;
							count <= count + 1;
							end
					else 
							begin
							state <= HGFR;
							count <=0;
							end
				default : state <= HGFR;
		endcase 
end 


always @(state)
begin 
		case(state)
			HGFR : 
				begin 
					highway <= 3'b010;
					farmroad <= 3'b001;
				end
			HYFR : 
				begin 
					highway <= 3'b011;
					farmroad <= 3'b001;
				end 	
			HRFG : 
				begin
					highway <= 3'b001;
					farmroad <= 3'b010;
					end
			HRFY :
				begin 
					highway <= 3'b001; 
					farmroad <= 3'b011;
				end
			default : begin 
							highway <= 3'b010;
							farmroad <= 3'b001;
						 end 
		endcase 
end
endmodule

		

	

		
		