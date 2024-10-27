`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:14 03/28/2024 
// Design Name: 
// Module Name:    P1_c 
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
module FF_blocking(
		input I,
		input E,
		output reg O1,
		output reg O2
     );
	always@(posedge E)
	begin
		O1 <= I;
		O2 <= O1;
	end
	
endmodule