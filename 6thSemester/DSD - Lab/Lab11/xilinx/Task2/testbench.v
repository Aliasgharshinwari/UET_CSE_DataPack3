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
	reg [7:0]data_in;
	reg start;
	wire done;
	wire [7:0]out;
	wire[2:0] state;
	
	wire eqz, regN_sel, regN_en, tempFact_en, tempFact_sel, calc_Product, Ld_DC, dec_DC, product_done;

	wire [7:0]regN_out; 
	wire [7:0]Decrementer_Out;
	controller cp(CLK, eqz, start, product_done, regN_sel, regN_en, tempFact_en, tempFact_sel, Ld_DC, dec_DC, calc_Product, done, state);
	factorial_datapath dp(eqz,product_done, regN_sel, regN_en, tempFact_en, tempFact_sel, Ld_DC, dec_DC, data_in, CLK, calc_Product, out);
	
	always # 5 CLK = ~CLK;
	
	assign regN_out = dp.regN_out;
	assign Decrementer_Out = dp.Decrementer_Out;
	initial begin
		$monitor("%d, RegN=%d,RegTemp=%d, TempProduct=%d", $time, dp.regN_out, dp.tempFact_out, dp.temp_product);
		data_in = 8'd4;
		start = 1;
	end
endmodule

