`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:31 02/26/2024 
// Design Name: 
// Module Name:    task2 
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
module task2(A, B, O);
	
	input A, B;
	output O;
	wire nA, nB;

	nand n3(O, nA, nB);	
	nand n1(nA, A);
	nand n2(nB, B);

endmodule
