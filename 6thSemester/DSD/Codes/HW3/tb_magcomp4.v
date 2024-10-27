module tb_mag_comp4(
	output reg [3:0]A,
	output reg [3:0]B,
	input ALB, 
	input AGB, 
	input AEB
);
	
	initial begin
	
	#10 A = 4'b0000; B = 4'b0001;
	#10 A = 4'b1000; B = 4'b0001;
	#10 A = 4'b1000; B = 4'b1000;
	
	end
	
	
endmodule

