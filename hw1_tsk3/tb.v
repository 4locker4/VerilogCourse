`timescale 1ns / 1ps

module tb;

    reg  [7:0] data_in;
    wire [2:0] log_out;

    log2_8bit dut (
        .data_in(data_in),
        .log_out(log_out)
    );

    initial begin
        data_in = 8'b00000001; #10;
        data_in = 8'b00000010; #10;
        data_in = 8'b00000100; #10;
        data_in = 8'b00001000; #10;
        data_in = 8'b00010000; #10;
        data_in = 8'b00100000; #10;
        data_in = 8'b01000000; #10;
        data_in = 8'b10000000; #10;
        $stop;
    end

endmodule