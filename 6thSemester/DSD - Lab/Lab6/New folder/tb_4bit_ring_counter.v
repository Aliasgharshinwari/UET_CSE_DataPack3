module tb_4bit_ring_counter ();
    reg clk, reset;         
    wire [3:0]out;

	four_bit_ring_counter  dut(clk, reset, out);
	
    always #5 clk = ~clk; //100 GHz signal
	
	initial begin
		clk = 0;
		reset = 1;
		
		#10
		reset = 0;
	
	end
	
endmodule



