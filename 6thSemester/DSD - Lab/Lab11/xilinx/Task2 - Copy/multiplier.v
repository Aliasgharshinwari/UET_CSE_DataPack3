`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:26:49 05/26/2024 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
    input [3:0] M,
    input [3:0] Q,
    input CLK,
	 input RST,
	 output reg product_done,
    output reg [7:0] P = 8'd1
);
    reg [3:0] A = 4'b0000;
    reg [3:0] Q_reg;
    reg [3:0] count = 4'b0000; // To count the number of shifts
	 reg C = 1'b0;

    always @(posedge CLK) begin
		if(~RST) begin
			Q_reg = Q;
			if(count > 0)
				count = 0;
		end
		
		else begin
			  if(count == 0) begin
					product_done = 0;
					Q_reg = Q;
				end
			  if (count < 4) begin
					if (Q_reg[0]) begin
						 {C,A} = A + M;
					end
					
					Q_reg = {A[0], Q_reg[3:1]}; // Shift right and include A's LSB in Q
					A = {C,A[3:1]};
					count = count + 1;
			  end
		end
	 end

    always @(posedge CLK) begin
        if (count == 4) begin
            P <= {A, Q_reg};
				product_done = 1;
        end
    end
endmodule
