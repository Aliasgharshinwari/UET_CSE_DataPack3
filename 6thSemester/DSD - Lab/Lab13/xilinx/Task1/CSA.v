`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:39 05/28/2024 
// Design Name: 
// Module Name:    CSA 
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
module CSA(
	 output [3:0] S,
    input [1:0]A,
    input [1:0]B,
    input [1:0]C
    );
	wire S0, S1, C0, C1, C2;
	
	full_adder f1(S[0], C0, A[0], B[0], C[0]);
	full_adder f2(S1,C1, A[1], B[1], C[1]);
	full_adder f3(S[1], C2, S1, C0, 1'b0);
	full_adder f4(S[2], S[3], C1, C2, 1'b0);


endmodule
