`timescale 1ns/1ps

module tb;

    // 1. Внутренние сигналы тестбенча
    reg clk;
    reg reset;

    wire clk_div2;
    wire clk_div4;
    wire clk_div8;

    wire [2:0] counter_3bit = {clk_div8, clk_div4, clk_div2};

    clk_div dut (
        .clk      (clk),
        .reset    (reset),
        .clk_div2 (clk_div2),
        .clk_div4 (clk_div4),
        .clk_div8 (clk_div8)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1'b1;
        #20;
        reset = 1'b0;
        #200;
        $stop;
    end

endmodule