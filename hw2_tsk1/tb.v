`timescale 1ns / 1ps

module tb;

    reg  clk;
    reg  reset;
    wire clk_out;

    clk_div6 dut (
        .clk(clk),
        .reset(reset),
        .clk_out(clk_out)
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