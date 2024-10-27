module t3( Sel, In, Out);

	input [1:0]Sel;
	input [3:0]In;
	output reg Out;
	
		always @(Sel or In) 
		
			case(Sel)
				2'b00: Out = In[0];
				2'b01: Out = In[1];
				2'b10: Out = In[2];
				2'b11: Out = In[3];
			endcase
		
endmodule

