module factorial_datapath(A, Asel, Bsel, Ald, Bld, DLED, OUT);
	input [3:0]A;
	input Asel, Bsel, Ald, Bld;
	
	reg [3:0]A_reg; 
	reg [3:0]B_reg;
	reg [3:0]count;
	reg [7:0]result_out = 8'b0;
	
	output reg DLED;
	output reg [7:0]OUT;
	
	PISO_A A(CLK, DIN, Q, LD, CLR);
	always@(*) begin
		if(Asel) begin
			A_reg = A;
			DLED = 0;
		end
		
		else if(Bsel) begin
			B_reg = A - 1;
			count = A - 1;
			DLED = 0;
		end
		
		else if(Ald) begin
		while(count) begin
			B_reg = count;
			while(B_reg) begin
				result_out = result_out + A_reg;
				B_reg = B_reg -1;
				end
			
			count = count - 1;
			end
		end
		
		OUT = result_out;
	end	
	always@(*)
		if(B_reg == 0)
			DLED = 1;

	
	
endmodule


