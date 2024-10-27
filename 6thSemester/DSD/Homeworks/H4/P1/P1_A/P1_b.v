`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:38 03/28/2024 
// Design Name: 
// Module Name:    P1_b 
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
module FF(
		input I,
		input E,
		output reg O
     );
	always@(posedge E)
		O = I;
endmodule
