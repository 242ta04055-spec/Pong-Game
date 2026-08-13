module parity_generator (
    input  [3:0] data,
    output       parity
);

    // Even parity generation
    assign parity = data[3] ^ data[2] ^ data[1] ^ data[0];

endmodule