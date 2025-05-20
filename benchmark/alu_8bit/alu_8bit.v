
module alu_8bit(
input[7:0] a,b,
input[2:0]Oper,

output reg[7:0] sum
    );
reg c_out;
always@(a or b or Oper)
begin
	case(Oper)
	3'b000:  {c_out,sum} = a + b;
	3'b001:  {c_out,sum} = a - b;
	3'b010:  {c_out,sum} = b - a;
	3'b011:  {c_out,sum} = a | b;
	3'b100:  {c_out,sum} = a & b;
	3'b101:  {c_out,sum} = a ^ b;
	3'b110:  {c_out,sum} = a ~^ b;
	default: {c_out,sum} = 9'b0;
	endcase
end
endmodule

