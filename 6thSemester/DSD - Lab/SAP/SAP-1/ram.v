module ram(address, data_out);

   input [3:0]address;
	
   output reg [7:0]data_out;
	
	//reg [7:0]ram_block[0:15];
	
	always@(address)
		case(address)
		4'h0: data_out = 8'h09; //LDA 9H
		4'h1: data_out = 8'h1A; //ADD AH
		4'h2: data_out = 8'h1B; //ADD BH
		4'h3: data_out = 8'h2C; //SUB CH 
		4'h4: data_out = 8'hEx; //OUT
		4'h5: data_out = 8'hFx; //HALT
		4'h6: data_out = 8'hxx;
		4'h7: data_out = 8'hxx;
		4'h8: data_out = 8'hxx;
		4'h9: data_out = 8'h01;
		4'hA: data_out = 8'h05;
		4'hB: data_out = 8'h03;		
		4'hC: data_out = 8'h07;
		4'hD: data_out = 8'hxx;
		4'hE: data_out = 8'hxx;
		4'hF: data_out = 8'hxx;
		endcase

endmodule
