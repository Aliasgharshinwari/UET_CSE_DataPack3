module top(
	input CLK,
	input PIN_24,
	output PIN_4,
	output PIN_5,
	output PIN_6,
	output PIN_7,
	output PIN_8,
	output PIN_9,
	output PIN_10,
	output PIN_11,
);


assign rst = PIN_24;
assign {PIN_4, PIN_5, PIN_6, PIN_7, PIN_8, PIN_9, PIN_10, PIN_11} = out;

reg[7:0] out;
always @(posedge clk, posedge rst) begin
	if (rst) begin
		out = 8'b0;
	end else if (display) begin
		out = alu_out;
	end
end

reg[15:0] bus;

always @(*) begin
	bus = 16'b0;

	if (reg_oe)
		bus = reg_out;
	else if (mem_oe)
		bus = {8'b0, mem_out};
	else if (alu_oe)
		bus = {8'b0, alu_out};
	else if (alu_flags_oe)
		bus = {8'b0, alu_flags};
end

reg[23:0] clk_slow;
always @(posedge CLK) begin
	clk_slow <= clk_slow + 1;
end

wire rst;
wire hlt;
wire clk;
clock clock(
	.hlt(hlt),
	.clk_in(clk_slow[14]),
	.clk_out(clk)
);

wire[4:0] reg_rd_sel;
wire[4:0] reg_wr_sel;
wire[1:0] reg_ext;
wire reg_oe;
wire reg_we;
wire[15:0] reg_out;
reg_file reg_file(
	.clk(clk),
	.rst(rst),
	.rd_sel(reg_rd_sel),
	.wr_sel(reg_wr_sel),
	.ext(reg_ext),
	.we(reg_we),
	.data_in(bus),
	.data_out(reg_out)
);

wire mem_mar_we;
wire mem_ram_we;
wire mem_oe;
wire[7:0] mem_out;
memory memory(
	.clk(clk),
	.rst(rst),
	.mar_we(mem_mar_we),
	.ram_we(mem_ram_we),
	.bus(bus),
	.out(mem_out)
);

wire ir_we;
wire[7:0] ir_out;
ir ir(
	.clk(clk),
	.rst(rst),
	.we(ir_we),
	.bus(bus[7:0]),
	.out(ir_out)
);

wire alu_cs;
wire alu_flags_we;
wire alu_a_we;
wire alu_a_store;
wire alu_a_restore;
wire alu_tmp_we;
wire alu_oe;
wire alu_flags_oe;
wire[4:0] alu_op;
wire[7:0] alu_flags;
wire[7:0] alu_out;
alu alu(
	.clk(clk),
	.rst(rst),
	.cs(alu_cs),
	.flags_we(alu_flags_we),
	.a_we(alu_a_we),
	.a_store(alu_a_store),
	.a_restore(alu_a_restore),
	.tmp_we(alu_tmp_we),
	.op(alu_op),
	.bus(bus[7:0]),
	.flags(alu_flags),
	.out(alu_out)
);

wire display;
controller controller(
	.clk(clk),
	.rst(rst),
	.opcode(ir_out),
	.flags(alu_flags),
	.out({
		display,
		hlt,
		alu_cs,
		alu_flags_we,
		alu_a_we,
		alu_a_store,
		alu_a_restore,
		alu_tmp_we,
		alu_op,
		alu_oe,
		alu_flags_oe,
		reg_rd_sel,
		reg_wr_sel,
		reg_ext,
		reg_oe,
		reg_we,
		mem_ram_we,
		mem_mar_we,
		mem_oe,
		ir_we
		})
);

endmodule

