`timescale 1ns / 1ps

module tb;

    reg  [2:0] n;
    wire [7:0] out_vec;

    decoder_3to8 dut (
        .n(n),
        .out_vec(out_vec)
    );

    initial begin
        n = 3'd0; #10;
        n = 3'd1; #10;
        n = 3'd2; #10;
        n = 3'd3; #10;
        n = 3'd4; #10;
        n = 3'd5; #10;
        n = 3'd6; #10;
        n = 3'd7; #10;
        $stop;
    end

endmodule