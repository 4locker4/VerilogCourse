module log2_8bit (
    input  wire [7:0] data_in,
    output wire [2:0] log_out
);

    assign log_out[0] = data_in[2] | data_in[3] | data_in[6] | data_in[7];
    assign log_out[1] = data_in[4] | data_in[5] | data_in[6] | data_in[7];
    assign log_out[2] = data_in[7];

endmodule