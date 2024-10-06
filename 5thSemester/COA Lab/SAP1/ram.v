module ram_and_mar( CLK, CE, address, data_out);

	input CLK;
	input CE;
    input [3:0]address;
	
    output [7:0]data_out;
	
	reg [7:0]ram_block[0:15];
	
//	always @(CE) begin
//		 if(~CE) begin
//			 data_out <= ram_block[address];
//		end
//	end
				
	assign data_out = ram_block[address];

endmodule
