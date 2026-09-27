module priority_encoder_8to3 (
    input  wire [7:0] data_in,
    output wire [2:0] code_out
);

    assign code_out[2] = data_in[7] | data_in[6] | data_in[5] | data_in[4];

    assign code_out[1] = data_in[7] | data_in[6] |
                         (~data_in[5] & ~data_in[4] & (data_in[3] | data_in[2]));

    assign code_out[0] = data_in[7] |
                         (~data_in[6] & data_in[5]) |
                         (~data_in[6] & ~data_in[4] & data_in[3]) |
                         (~data_in[6] & ~data_in[4] & ~data_in[2] & data_in[1]);

endmodule