`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:26 05/24/2024 
// Design Name: 
// Module Name:    controller 
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
module controller (clk, eqz, start, product_done, regN_sel, regN_en, tempFact_en, tempFact_sel, Ld_DC, dec_DC, calc_Product, done, state);

  input clk, eqz, start, product_done;

  output reg regN_sel = 0 , regN_en  = 0 , tempFact_en  = 0 , tempFact_sel  = 0 , Ld_DC = 0, dec_DC = 0 , calc_Product =0, done  = 0;
  output reg [2:0] state;

  parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b111;

  always@(posedge clk) begin
    case (state)
      S0:  if(start) 
				state <= S1;
           else 
				state <= S0;
				
      S1:  state <= S2;
      S2:  state <= S3;
      S3:  #2 
			if (product_done) 
				state <= S4;
			else 
				state <= S3;     
				
		S4:  state <= S5 ;
		
		S5:  #2 if (eqz) 
				state <= S6;
			else 
				state <= S2;
      S6:  state <= S6;
	  default: state <= S0;
    endcase
  end

  // combinational logic to generate datapath control signals
  always @(*) begin
    case (state)
      S0:  begin regN_sel <= 0; regN_en <= 0; tempFact_en <= 0; tempFact_sel <= 0; Ld_DC = 0; dec_DC <= 0; calc_Product <= 0; done <= 0; end
      S1:  begin regN_sel <= 1; regN_en <= 1; tempFact_en <= 1; tempFact_sel <= 1; Ld_DC = 0; dec_DC <= 0; calc_Product <= 0; done <= 0; end
      S2:  begin regN_en <= 1; tempFact_en <= 1; Ld_DC = 0; dec_DC <= 0; calc_Product <= 0; done <= 0; end
      S3:  begin regN_sel <= 0; regN_en <= 0; tempFact_en <= 0; tempFact_sel <= 0; Ld_DC = 0; dec_DC <= 0; calc_Product <= 1; done <= 0; end
      S4:  begin regN_sel <= 0; regN_en <= 0; tempFact_en <= 0; tempFact_sel <= 0; Ld_DC = 1; dec_DC <= 0; calc_Product <= 0; done <= 0; end
      S5:  begin regN_sel <= 0; regN_en <= 0; tempFact_en <= 0; tempFact_sel <= 0; Ld_DC = 0; dec_DC <= 1; calc_Product <= 0; done <= 0; end
      S6:  begin regN_sel <= 0; regN_en <= 0; tempFact_en <= 0; tempFact_sel <= 0; Ld_DC = 0; dec_DC <= 0; calc_Product <= 0; done <= 1; end
    endcase
  end
endmodule