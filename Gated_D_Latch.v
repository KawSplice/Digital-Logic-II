module Gated_D_Latch (
input D,
input CLK1,
output Q3,
output Q3not
);

assign Q3 = ~(~(D & CLK1) & Q3not);
assign Q3not = ~(~((~D)& CLK1) & Q3); 

endmodule
