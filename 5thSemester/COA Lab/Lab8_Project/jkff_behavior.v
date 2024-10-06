module jkff_behavior(J, K, rst, Clk, Q, QBar);
	
	input J;
	input K;
	input Clk;
	input rst;
	
	output reg Q, QBar;
	
	always @(posedge Clk or posedge rst)
	begin
		if (rst)
		begin
			Q <= 1'b0;
		end
		
		else
		begin
			case ({J, K})
				2'b00: Q <= Q;
				2'b01: Q <= 1'b0;
				2'b10: Q <= 1'b1;
				2'b11: Q <= ~Q;
			endcase
		end
	end
	
	always @(Q)
	begin
		QBar <= ~Q;
	end
	
endmodule