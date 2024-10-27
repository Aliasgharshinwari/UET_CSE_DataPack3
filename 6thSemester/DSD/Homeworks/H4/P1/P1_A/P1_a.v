`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:06 03/28/2024 
// Design Name: 
// Module Name:    P1_a 
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
module ADD(
	input a, 
	input b, 
	input cin,
	output reg sum,
	output reg cout
);

	always@(a or b or cin)
		begin
			sum <= a^b^cin;
			cout <= (a&b) | (a&cin) | (b&cin);
		end
endmodule

