module topm(input CLK_IN, input CLR, input RST,
				output [7:0]out, output [2:0]EnOut);
	
	wire CLK;
	wire [9:0]bcd;
	wire [7:0]seg_u , seg_t, seg_h;
	wire [17:0]count;
	
	clock_divider my_divider(CLK_IN, CLK);
	//PC Params
	wire Cp, Ep;	
	wire [3:0]pc_out;

	//MAR Params
	wire Lm;
	wire [3:0]mar_in;
	wire [3:0]mar_out;
	
	//RAM Params
	wire CE;
	wire [7:0]data_out;
	
	//IR Params
	wire Li, Ei;
	wire [7:0]ir_out;
	wire [3:0]opcode;
	
	//ALU Params
	wire Su, Eu;
	wire [7:0] ALU_out;
	
	//AC Params
	wire La, Ea;
	wire [7:0]acc_out;
	
	
	//Reg B Params
	wire Lb;
	wire [7:0] b_out;
	
	//Out Reg Params
	wire Lo;
	wire [7:0] o_out;
	
	//CON Params
	wire [11:0] con_word;
	reg [7:0]bus = 8'h00;
	
	Counter18bit( CLK_IN, RST, count);
	
	control_sequencer my_cu(.clk(CLK), .rst(RST), .opcode(opcode),.con_word(con_word));
	pc my_pc(.CLK(CLK), .CLR(CLR), .Cp(Cp), .out(pc_out));		
	mar my_mar(.Lm(Lm), .CLK(CLK), .mar_in(bus[3:0]), .mar_out(mar_out));
	ram my_ram(.address(mar_out), .data_out(data_out));
	ir my_ir(.Li(Li), .RST(CLR), .CLK(CLK), .ir_in(bus), .ir_out(ir_out));
	ac my_ac(.CLK(CLK), .La(La), .acc_in(bus), .acc_out(acc_out));
	reg_b my_reg_b(.Lb(Lb), .CLK(CLK), .reg_in(bus), .reg_out(b_out));
	alu my_alu(.Su(Su), .A(acc_out), .B(b_out), .Out(ALU_out));
	output_register my_output_register(.CLK(CLK), .Lo(Lo), .o_in(bus), .o_out(o_out));
	
	bin2bcd my_bin2bcd(o_out, bcd);
	
	bin_to_sevseg_decoder decoder1(bcd[3:0], seg_u);
	bin_to_sevseg_decoder decoder2(bcd[7:4], seg_t);
	bin_to_sevseg_decoder decoder3({2'b0, bcd[9:8]}, seg_h);
	
	Mux4x1 mux(count[17:16], seg_u, seg_t, seg_h, Out);
	Decoder2x4 decoder(count[17:16], EnOut);
	assign {Cp, Ep, Lm, CE, Li, Ei, La, Ea, Su, Eu, Lb, Lo} = con_word;
	
	assign opcode = ir_out[7:4];
	
	//always #5 CLK = ~CLK;  //clock generation
	
	always @(*) begin
		if (~Ei) begin
			bus = ir_out[3:0];
		end 
		
		else if (Eu) begin
			bus = ALU_out;
		end 
		
		else if (Ea) begin
			bus = acc_out;
		end 
		
		else if (~CE) begin
			bus = data_out;
		end 
		
		else if (Ep) begin
			bus = pc_out;
		end 
		
		else begin
			bus = 8'b0;
		end
		
	end

endmodule

