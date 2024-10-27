`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:15 05/24/2024 
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
module testbench();
	reg CLK = 0;
	reg [3:0]data_in_A;
	reg [3:0]data_in_B;
	reg start;
	reg [2:0] state = 3'b000;
	wire done;
	wire [7:0]out;
	wire eqz, LdA, LdB, LdP, clrp;
	
	controller cp(CLK, eqz, start, LdA, LdB, LdP, clrp, done, state);
	product_datapath dp(eqz, LdA, LdB, LdP, clrp, data_in_A, data_in_B, CLK);
	
	always # 5 CLK = ~CLK;
	assign out = dp.Z;
	
	initial begin
		data_in_A = 4'd13;
		data_in_B = 4'd12;
		#10
		start = 1;
	end
endmodule

