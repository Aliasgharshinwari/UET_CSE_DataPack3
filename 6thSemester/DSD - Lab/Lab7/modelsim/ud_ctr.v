module updown_ctr( Clk, CLR, RST,  C);
    	
   	input Clk, CLR, RST;
   	output reg [2:0] C;
		
		wire clk_out;
		
		clock_divider c1(Clk, clk_out);
		
     	always @(posedge clk_out or posedge CLR)
     		if(CLR)   
        			C <= 0;
        		else    
            			if(RST) 
                				C <= C + 1; 
            			else  
                				C <= C - 1; 
                				 
endmodule