`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:14 02/24/2024 
// Design Name: 
// Module Name:    tb_task4 
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
module tb_task4();
	reg x1, x2, x3, x4, x5;
	wire z;
	
	task4 t1(x1, x2, x3, x4, x5, z);

	initial begin
	x1 = 0; x2 = 0; #10
	x1 = 0; x2 = 1; #10
	x1 = 1; x2 = 0; #10
	x1 = 1; x2 = 1;
	
	end
endmodule
