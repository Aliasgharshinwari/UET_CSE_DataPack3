module tb_4bit_ring_counter ();
    reg clk = 0;
	reg rst;         
    wire [3:0]out;

	rc4 dut(clk, rst, out);
	
    always #5 clk = ~clk;
	
	initial begin
		rst = 1;
		
		#10
		rst = 0;
	
	end
	
endmodule



