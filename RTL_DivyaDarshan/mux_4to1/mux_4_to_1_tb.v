`include "mux_4_to_1.v"

module mux_4_to_1_tb();

    reg [3:0] a, b, c, d;
    reg [1:0] sel;
    wire [3:0] out;

    mux_4_to_1 DUT (
        .a(a), .b(b), .c(c), .d(d),
        .sel(sel),
        .out(out)
    );

    initial begin
        a = 4'b0000; b = 4'b0001; c = 4'b0010; d = 4'b0011;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end

    initial begin
        $monitor("Time = %0t | sel = %b | out = %b", $time, sel, out);
    end

endmodule
