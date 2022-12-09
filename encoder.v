module encoder ( 
input [3:0] a,
input ena,
output [1:0] r,
output valid
);



assign valid = ena || (~a[0] && ~a[1] && ~a[2] && ~a[3]);

assign r= (ena) ? 2'b00: ((a[3]) ? 2'b11 : (a[2]) ? 2'b10 : (a[1]) ? 2'b01 : 2'b00);


endmodule 