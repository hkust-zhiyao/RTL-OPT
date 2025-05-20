module comparator_dsr #(
    parameter N = 8
) (
    input [2:0] SEL,
    input [N-1:0] value1,
    input [N-1:0] value2,
    output reg OUT
);

wire cmp_equal = (value1 == value2);
wire cmp_less = (value1 < value2);

always @(*) begin
    case (SEL)
        3'b000: OUT = 1'b0;
        3'b001: OUT = 1'b1;
        3'b010: OUT = cmp_equal;
        3'b011: OUT = ~cmp_equal;
        3'b100: OUT = ~cmp_less;
        3'b101: OUT = cmp_less | cmp_equal;
        3'b110: OUT = cmp_less;
        3'b111: OUT = ~cmp_equal & ~cmp_less;
    endcase
end

endmodule