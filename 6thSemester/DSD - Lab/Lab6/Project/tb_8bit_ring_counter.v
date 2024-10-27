module tb_rc8 ();
    reg clk = 0;
	reg rst;         
    wire [7:0]out;

	rc8 dut(clk, rst, out);
	
    always #5 clk = ~clk;
	
	initial begin
		rst = 1;
		
		#10
		rst = 0;
	
	end
	
endmodule



