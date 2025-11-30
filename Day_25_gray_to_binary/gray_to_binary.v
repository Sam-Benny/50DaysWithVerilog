module gray_to_binary
#(parameter n = 4)
(
    input  wire [n-1:0] gray_in,
    output reg  [n-1:0] binary_out
);

    integer i;

    always @(*) begin

        binary_out[n-1] = gray_in[n-1];

        for (i = n-2; i >= 0; i--)

            binary_out[i] = binary_out[i+1] ^ gray_in[i];
    end

endmodule

