


`include "two_bit_comparator.v"
module two_bit_comparator_tb();

reg [1:0] a, b;
wire gt, lt, eq;

two_bit_comparator uut(a, b, gt, lt, eq);

initial begin
    $dumpfile("two_bit_comparator_tb.vcd");
    $dumpvars(0, two_bit_comparator_tb);

    

    a = 2'b01; b = 2'b10; #10;
    

    a = 2'b11; b = 2'b10; #10;

    a = 2'b01; b = 2'b01; #10;
    
    $finish;
end

endmodule
