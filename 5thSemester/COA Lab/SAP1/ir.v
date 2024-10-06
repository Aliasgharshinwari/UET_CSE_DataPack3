module ir(Li, Ei, RST, CLK, ir_in, ir_val, ir_out, opcode);
	
	input Li;
	input Ei;
	input CLK;
	input RST;
	input [7:0] ir_in;
	
	output reg [7:0] ir_val;
	output [3:0] ir_out;
	output [3:0]opcode;
	
	always@(posedge CLK) begin
		
		if (RST) begin
			ir_val <= 8'b0;	
		end
		
		if(~Li) begin
			ir_val <= ir_in;
			
		end
	end
	
	assign ir_out = ir_in[3:0];
	assign opcode = ir_in[7:4];
	
	//assign ir_out = (~Ei) ? ir_val[3:0]: ir_out;
	//assign opcode = (~Ei) ? ir_val[3:0]: opcode;
	
	
endmodule

