`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:27 03/20/2024 
// Design Name: 
// Module Name:    simpl_circuit 
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
module simpl_circuit(
	input A,
	input B,
	input C,
	output x,
	output y
    );

	wire e;
	
	and #(10) g1(e, A, B);
	not #(5) g2(y, C);
	or #(15) g3(x, e, y);

endmodule
