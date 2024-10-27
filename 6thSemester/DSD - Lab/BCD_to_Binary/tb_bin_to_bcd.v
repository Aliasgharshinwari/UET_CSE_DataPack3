module bin2bcd_tb;

  // Parameters
  parameter W = 8;  // input width

  // Inputs
	reg [W-1:0] bin;
	wire [3:0]unit; 
	wire [3:0]ten;
	wire [3:0]hundred;
  
  // Outputs
  wire [W+(W-4)/3:0] bcd;

  // Instantiate the module
  bin2bcd #(W) dut(
    .bin(bin),
    .bcd(bcd)
  );

	assign unit = bcd[3:0];
	assign ten = bcd[7:4];
	assign hundred = bcd[9:8];
	
	
  // Clock generation
  reg clk = 0;
  always #5 clk = ~clk;
	
  // Stimulus
  initial begin
    // Initialize inputs
    bin = 0;

    // Apply stimulus and check results
    #10 bin = 8'd0; // Input: 0
    #10 bin = 8'd5; // Input: 5
    #10 bin = 8'd10; // Input: 10
    #10 bin = 8'd15; // Input: 15
    #10 bin = 8'd99; // Input: 99
    #10 bin = 8'd123; // Input: 123
    #10 bin = 8'd255; // Input: 255
    #10 bin = 8'd512; // Input: 512
    // Add more test cases as needed

    #100 $finish; // End simulation
  end

endmodule
