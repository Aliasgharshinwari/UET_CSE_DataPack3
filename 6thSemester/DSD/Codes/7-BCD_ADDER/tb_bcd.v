module tb_bcd;
	
	wire [3:0] s;
	wire c;
	reg [3:0] a, b;
	
	bcd dut (c, s, a, b);
	
	initial begin
		#0 a=4'b0000; b=4'b0001;
		#2 a=4'b0101; b=4'b0001;
		#2 a=4'b0101; b=4'b0101;
		#2 a=4'b1000; b=4'b0100;
		#2 a=4'b1000; b=4'b0101;
		#2 a=4'b1000; b=4'b1000;
		#2 a=4'b0111; b=4'b0111;
		#2 a=4'b1001; b=4'b0101;
		#2 a=4'b1001; b=4'b0110;
		#2 a=4'b1001; b=4'b1001;
	end
	
	initial
		$monitor ("%d, a=%b, b=%b, sum=000%b%b", $time, a, b, c, s);

endmodule