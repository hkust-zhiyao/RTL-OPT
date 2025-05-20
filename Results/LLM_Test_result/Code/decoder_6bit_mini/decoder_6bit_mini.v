module decoder_6bit_mini
 #(
    parameter N = 6
) (
    input [N-1:0] in,
    output reg [(1<<N)-1:0] out
);

    always @(*) begin
        out = 1'b1 << in;
    end
endmodule