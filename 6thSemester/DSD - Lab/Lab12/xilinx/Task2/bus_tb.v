`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:39 06/03/2024 
// Design Name: 
// Module Name:    bus_tb 
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
module bus_tb(enable1, enable2, in1, in2,bus);

	input enable1, enable2;
	input[0:7] in1, in2;
	
	output [0:7]bus;
	
	bus_driver bd1(in1, bus, enable1);
	bus_driver bd2(in2, bus, enable2);
/*	
	initial begin
	in1 = 8'h01; in2 = 8'h10;
	enable1 = 1; enable2 = 0;
	
	#10
	//in1 = 8'h01; in2 = 8'h10;
	enable1 = 0; enable2 = 1;
	end*/
endmodule
