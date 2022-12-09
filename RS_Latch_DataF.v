module RS_Latch_DataF (
input R,
input S,
output Q1,
output Q1not
);

assign Q1 = ~ (R | Q1not); 
assign Q1not = ~ (S | Q1); 

endmodule