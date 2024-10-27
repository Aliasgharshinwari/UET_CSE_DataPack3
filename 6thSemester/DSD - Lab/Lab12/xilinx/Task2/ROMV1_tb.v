`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:19 06/11/2024 
// Design Name: 
// Module Name:    ROMV1_tb 
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
module ROMV1_tb();
	reg [2:0] addrb;
	wire [7:0] datab;
	reg read_en, cs;
	
	ROM_v1 rom1 (cs, addrb, datab, read_en);
	
	initial begin
		#0 addrb = 2;
		#10 addrb = 5;
		#10 addrb = 3;
		#5 addrb = 7;
		#5 addrb = 10;
	end
	initial begin
		#3 cs <= 1;
	end
	initial begin
		#3 read_en <= 1;
	end
	
	initial begin
	end

endmodule
