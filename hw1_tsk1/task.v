module is_even (
    input  wire [7:0] data_in,
    output wire       is_even
);

    assign is_even = ~data_in[0];

endmodule