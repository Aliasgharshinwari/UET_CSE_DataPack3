`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:26:07 04/04/2024 
// Design Name: 
// Module Name:    M 
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
module M(
  	input [3:0]S,
	input [3:0]A,
	input [3:0]B,
	input C,
	output reg [3:0]Q
     );
	always@(posedge C)
		Q = (S)? A : B;

endmodule
