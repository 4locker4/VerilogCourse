module decoder_3to8 (
    input  wire [2:0] n,
    output wire [7:0] out_vec
);

    assign out_vec[0] = ~n[2] & ~n[1] & ~n[0];
    assign out_vec[1] = ~n[2] & ~n[1] &  n[0];
    assign out_vec[2] = ~n[2] &  n[1] & ~n[0];
    assign out_vec[3] = ~n[2] &  n[1] &  n[0];
    assign out_vec[4] =  n[2] & ~n[1] & ~n[0];
    assign out_vec[5] =  n[2] & ~n[1] &  n[0];
    assign out_vec[6] =  n[2] &  n[1] & ~n[0];
    assign out_vec[7] =  n[2] &  n[1] &  n[0];

endmodule