module tb_demux();

reg s0, s1, I;
wire d0, d1, d2, d3;

demux my_demux(s0, s1, I, d0, d1, d2, d3);

initial	begin
	
	s0 = 0;
	s1 = 0;
	I = 0;
	#10;

	s0 = 0;
	s1 = 0;
	I  = 1;
	#10;
	
	s0= 0;
	s1= 1;
	I = 0;
	#10;

	s0= 0;
	s1= 1;
	I = 1;
	#10;
	
	s0= 1;
	s1= 0;
	I = 0;
	#10;
	
	s0= 1;
	s1= 0;
	I = 1;
	#10;
	
	s0= 1;
	s1= 1;
	I = 0;
	#10;
	
	s0= 1;
	s1= 1;
	I = 1;
	#10;	
	end

endmodule

