`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:12:41 03/28/2024 
// Design Name: 
// Module Name:    P1_e 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FF_reset(
		input I,
		input C,
		input Rn,
		output reg O
     );
	  
	always@(negedge Rn or posedge C)
	begin
		if(!Rn)
			O <= 0;
		else
			O <= I;
	end
	
endmodule
