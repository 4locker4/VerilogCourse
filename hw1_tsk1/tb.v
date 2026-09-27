`timescale 1ns / 1ps

module tb;

    reg  [7:0] data_in;
    wire       is_even;

    is_even dut (
        .data_in(data_in),
        .is_even(is_even)
    );

    initial begin
        data_in = 8'd0;   #10;
        data_in = 8'd1;   #10;
        data_in = 8'd2;   #10;
        data_in = 8'd3;   #10;
        data_in = 8'd4;   #10;
        data_in = 8'd255; #10;
        data_in = 8'd254; #10;
        $stop;
    end

endmodule