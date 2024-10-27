module tb_8bit_ring_counter ();
    reg clk, reset;         
    wire [7:0]out ;
	
	eight_bit_ring_counter  dut(clk, reset, out);
	
    always #5 clk = ~clk; //100 GHz signal
	initial begin
		clk = 0;
		reset = 1;
		
		#10
		reset = 0;
	end
endmodule




