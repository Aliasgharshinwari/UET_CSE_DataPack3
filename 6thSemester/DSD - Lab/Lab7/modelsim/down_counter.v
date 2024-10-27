module down_ctr( Clk, CLR,  C);
    	
   	input Clk, CLR;
   	output reg [2:0] C;
		
		wire clk_out;
		
		clock_divider c1(Clk, clk_out);
		
     	always @(posedge clk_out or posedge CLR)
     		if(CLR)   
        		C <= 0;
        	else    
				C <= C - 1; 
                				 
endmodule


