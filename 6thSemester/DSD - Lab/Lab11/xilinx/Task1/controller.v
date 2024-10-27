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
module controller (clk, eqz, start, LdA, LdB, LdP, clrp, done, state);

  input clk, eqz, start;

  output reg LdA = 0 , LdB  = 0 , LdP  = 0 , clrp  = 0 , done  = 0;
  output reg [2:0] state;
  //reg [2:0] state;
  parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100;

  always@(posedge clk) begin
    case (state)
      S0:  if(start) 
				state <= S1;
           else 
				state <= S0;
      S1:  state <= S2;
      S2:  state <= S3;
      S3:  #2 if (eqz) 
				state <= S4;
			else 
				state <= S3;
      S4:  state <= S4;
	  default: state <= S0;
    endcase
  end

  // combinational logic to generate datapath control signals
  always @(*) begin
    case (state)
      S0:  begin LdA = 0; LdB = 0; LdP = 0; clrp = 0; done = 0; end
      S1:  begin LdA = 1; LdB = 0; LdP = 0; clrp = 0; done = 0; end
      S2:  begin LdA = 0; LdB = 1; LdP = 0; clrp = 0; done = 0; end
      S3:  begin LdA = 0; LdB = 0; LdP = 1; clrp = 0; done = 0; end
      S4:  begin LdA = 0; LdB = 0; LdP = 0; clrp = 1; done = 1; end
    endcase
  end
  
endmodule

