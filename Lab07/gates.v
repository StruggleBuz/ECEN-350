`timescale 1ns / 1ps

module gates(input  [3:0] a, b,
output reg [3:0] y1, y2, y3, y4, y5);
always @(a,b)
begin
y1 = a & b;
y2 = a | b;
y3 = a ^ b;
y4 = ~(a & b);
y5 = ~(a | b);
end
endmodule
