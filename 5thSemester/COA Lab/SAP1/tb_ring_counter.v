module tb_ring_counter;
    // Inputs
    reg clk;
    reg rst;

    // Outputs
    wire [5:0] count;

    // Instantiate the ring_counter
    ring_counter u1 (
        .clk(clk), 
        .rst(rst), 
        .count(count)
    );

    // Clock process definitions
    always begin
        #10 clk = ~clk;    // Toggle clock every 10 time units
    end

    // Stimulus process
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;

        // Wait for 20 time units
        #20;
        rst = 0;    // De-assert reset

        // Wait for 1000 time units
        #1000;
        rst = 1;    // Assert reset

        // Wait for 20 time units
        #20;
        rst = 0;    // De-assert reset

        // Wait for 1000 time units
        #1000;
        $finish;    // End simulation
    end
endmodule

