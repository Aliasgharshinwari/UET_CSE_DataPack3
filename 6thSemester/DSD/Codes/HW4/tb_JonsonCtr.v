// Testbench for JS_Counter module
module tb_JS_Counter;
    reg CLK, CLR; // Inputs: Clock and Clear
    wire [3:0] Q; // Output: 4-bit counter value

    // Instantiate the JS_Counter module
    JS_Counter dut (.CLK(CLK), .CLR(CLR), .Q(Q));

    // Clock generation
    always #5 CLK = ~CLK;

    // Initialize inputs
    initial begin
        CLK = 0;
        CLR = 0; // Set clear initially
        #20;
        CLR = 1; // Release clear
        #10; // Wait for some cycles
		CLR = 0; // Release clear
        
    end

    // Monitor the counter value
    always @(posedge CLK) begin
        $display("Counter value: %b", Q);
    end
endmodule

