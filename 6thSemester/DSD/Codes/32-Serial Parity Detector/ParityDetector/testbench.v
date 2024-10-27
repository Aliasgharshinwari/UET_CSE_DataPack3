`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:41 05/28/2024 
// Design Name: 
// Module Name:    testbench 
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
module tst_parity_det;

	reg x, clk;
	wire z;
	

	parity_det pd (x, clk, z);
	
	initial	begin
		clk = 0;
		
		forever begin
			#10 clk = ~clk;
			#3 clk = ~clk;
		end
	end
	
	initial
		repeat (10) @(posedge clk)
		 	x = $random;
		
endmodule