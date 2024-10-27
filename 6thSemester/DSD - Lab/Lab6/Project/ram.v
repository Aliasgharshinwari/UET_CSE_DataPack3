//1 kilo byte Random Access Memory
module ram(
    input clk,
    input write_enable,
    input [9:0]address,
    input [7:0]data_in,
    output reg [7:0]data_out
);

reg [7:0]ram_block[0:1023];

always @(posedge clk) begin

        if(write_enable) begin
            ram_block[address] <= data_in;
			ram_block[address][0] <= 1'b0;
			ram_block[address][1] <= 1'b1;
			ram_block[address][2] <= 1'b0;
			ram_block[address][3] <= 1'b1;
			ram_block[address][4] <= 1'b0;
			ram_block[address][5] <= 1'b0;
			ram_block[address][6] <= 1'b0;
			ram_block[address][7] <= 1'b0;
			//ram_block[address][8] <= 1'b0;
		end
		else
            data_out <= ram_block[address];
end

endmodule

