module tb_top;
    reg CLK;
    reg RST;
    wire [7:0] SEG;
    wire [2:0] EnablePins;

    // Instantiate the Top module
    Top dut (
        .CLK(CLK),
        .RST(RST),
        .SEG(SEG),
        .EnablePins(EnablePins)
    );

    // Clock generation (you can customize this)
    always #5 CLK = ~CLK;

    // Initialize/reset signals
    initial begin
        CLK = 0;
        RST = 1; // Apply reset initially
        #10 RST = 0; // Release reset
        // Add test stimulus here
        // Monitor SEG and EnablePins
        // Add assertions or checks
        $finish; // End simulation
    end
endmodule

