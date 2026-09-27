`timescale 1ns / 1ps

module tb;

    reg  [7:0] data_in;
    wire [2:0] code_out;

    priority_encoder_8to3 dut (
        .data_in(data_in),
        .code_out(code_out)
    );

    initial begin
        data_in = 8'b00000001; #10;
        data_in = 8'b00000011; #10;
        data_in = 8'b00000111; #10;
        data_in = 8'b00001001; #10;
        data_in = 8'b00010001; #10;
        data_in = 8'b10000001; #10;
        data_in = 8'b00000000; #10;
        data_in = 8'b10000000; #10;
        $stop;
    end

endmodule