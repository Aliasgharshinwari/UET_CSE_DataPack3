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
module factorial_datapath (eqz, product_done, regN_sel, regN_en, tempFact_en, tempFact_sel, Ld_DC, dec_DC, data_in, clk, calc_Product, out);
    input regN_sel, regN_en, tempFact_en, tempFact_sel,Ld_DC, dec_DC, calc_Product, clk;
    input [7:0] data_in;
    output eqz;
	 output [7:0]out;
	 output product_done;
    
	 wire [7:0] MUX1_OUT, MUX2_OUT, regN_out, tempFact_out, Decrementer_Out;
	 wire [7:0] temp_product;  
	
	 Mux2x1 mux1(.out(MUX1_OUT) , .I0(Decrementer_Out), .I1(data_in), .s(regN_sel));
	 PIPO1 A (regN_out, MUX1_OUT, regN_en, clk);
   
	 Mux2x1 mux2(.out(MUX2_OUT) , .I0(temp_product), .I1(1), .s(tempFact_sel));
	 PIPO2 P (tempFact_out, MUX2_OUT, tempFact_en, clrTemp, clk);
   	 
	 DECREMENTER DC (Decrementer_Out, regN_out, Ld_DC, dec_DC, clk);
    EQZ COMP(eqz, regN_out);
	 
	 multiplier mult(regN_out, tempFact_out, clk, calc_Product,product_done, temp_product);
  	 PIPO1 D(out, temp_product, output_en, clk);
   
endmodule

