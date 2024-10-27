module SISO_8bit_Reg(
	input CLK, 
	input SI, 
	input SHIFT, 
	input CLR,
	output reg SO
);
	reg [7:0]shift_reg;
	
	always@(posedge CLK)
		if(SHIFT) begin
				SO = shift_reg[7];
				shift_reg ={shift_reg[6:0],1'b0};
			end
			
		else
			shift_reg[0] <= SI;
	
	always@(CLR)
		shift_reg = 8'b00;
		
endmodule

