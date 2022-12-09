// Filename         :myBCDAdder
// Assignment       :BCD
// Author           :Luis Solis
// Description      : greater than 9 we add 6 
// Date Created     : 10/28/2021
// Modification Date: 10/28/2021

module myBCDAdder (
input [3:0] a,
input [3:0] b, 
output[7:0] X //sum 
);

assign X =((a+b) > 9) ? ((a+b) +6) : (a+b);
    

endmodule
 
				
	
