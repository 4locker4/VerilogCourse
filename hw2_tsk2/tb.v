`timescale 1ns / 1ps

module tb;

    reg  clk;
    reg  reset;
    wire pulse;

    pulse_gen5 dut (
        .clk(clk),
        .reset(reset),
        .pulse(pulse)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1;
        @(posedge clk);
        @(negedge clk);
        reset = 0;
        #300;
        $stop;
    end

endmodule