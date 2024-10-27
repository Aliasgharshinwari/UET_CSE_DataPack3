module tb_Up_Down_Counter4();
	reg CLK;
	reg RST;
	reg LD;
	reg UP_DN;
	reg [2:0]DIN;
	
	wire [2:0]Q;
	
	Up_Down_Counter4 ctr( CLK, RST, LD, UP_DN, DIN, Q);
	
	always #5 CLK = ~CLK;
	
	initial begin
		$monitor("%d,RST:%b, UP_DN:%b, Q:%d,",$time, RST, UP_DN, Q);
		CLK = 0;
		RST = 1;
		#10 RST = 0; UP_DN = 1;
		#30 UP_DN = 0;
		#40 LD = 1; DIN = 3'd4;
		#60 DIN = 3'd2;
		#80 LD = 0;
	end
endmodule

