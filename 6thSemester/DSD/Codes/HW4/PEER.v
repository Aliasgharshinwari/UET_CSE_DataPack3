module PEER(
	input MOVE,
	input RESET,
	input CLK,
	output reg [2:0]STATE
		
);
	always@(posedge CLK or RESET)
			if (RESET) 
				STATE <= 3'b000;
			else 
				case (STATE)
				 3'b000: STATE <= MOVE ? 3'b001 : 3'b000;
				 3'b001: STATE <= MOVE ? 3'b100 : 3'b010;
				 3'b010: STATE <= MOVE ? 3'b100 : 3'b011;
				 3'b011: STATE <= MOVE ? 3'b000 : 3'b011;
				 3'b100: STATE <= MOVE ? 3'b101 : 3'b111;
				 3'b101: STATE <= MOVE ? 3'b110 : 3'b011;
				 3'b110: STATE <= MOVE ? 3'b110 : 3'b111;
				 3'b111: STATE <= MOVE ? 3'b101 : 3'b001;
				
				 default: STATE <= 3'b000;
				endcase
endmodule