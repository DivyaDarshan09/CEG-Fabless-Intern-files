module two_bit_comparator(input [1:0] a, b, output gt, lt, eq);

assign gt = (a > b);
assign lt = (a < b);
assign eq = (a == b);

endmodule
