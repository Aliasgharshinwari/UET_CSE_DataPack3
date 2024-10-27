`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:00 05/24/2024 
// Design Name: 
// Module Name:    product_datapath 
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
module product_datapath (eqz, LdA, LdB, Ldp, clrp, data_in_A, data_in_B, clk, out);
    input LdA, LdB, Ldp, clrp, clk;
    input [3:0] data_in_A;
    input [3:0] data_in_B;
    output eqz;
	 output [7:0]out;
  
    wire [7:0] X, Y , Z;                                     
    PIPO1 A (X, data_in_A, LdA, clk);
    PIPO2 B (Y, data_in_B, LdB, clrp, clk);
  
	multiplier mult(X, Y, clk, Ldp, eqz, Z);
	
	assign out = Z;

endmodule

