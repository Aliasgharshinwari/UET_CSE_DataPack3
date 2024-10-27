module tb_ram;

  // Parameters
  reg clk;
  reg write_enable;
  reg [9:0] address;
  reg [7:0] data_in;
  wire [7:0] data_out;

  // Instantiate the RAM module
  ram dut (
    .clk(clk),
    .write_enable(write_enable),
    .address(address),
    .data_in(data_in),
    .data_out(data_out)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Initialize signals
  initial begin
    clk = 0;
    write_enable = 1; // Enable writes
    address = 0;
    data_in = 8'hFF; // Example data
    #10;
	
	write_enable = 0; // Enable writes
  end

endmodule
