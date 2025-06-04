`include "decod_2to_4.v"
module tb_decoder_2to_4();

reg [1:0] data_in;
reg enable;
wire [3:0] out;

decoder_2to_4 uut (
    .data_in(data_in),
    .enable(enable),
    .out(out)
);

initial begin
    $display("Enable | Data In | Output");
    $display("--------------------------");

    enable = 0; data_in = 2'b00; #10;
    $display("   %b   |   %b    |  %b", enable, data_in, out);

    enable = 1; data_in = 2'b00; #10;
    $display("   %b   |   %b    |  %b", enable, data_in, out);

    data_in = 2'b01; #10;
    $display("   %b   |   %b    |  %b", enable, data_in, out);

    data_in = 2'b10; #10;
    $display("   %b   |   %b    |  %b", enable, data_in, out);

    data_in = 2'b11; #10;
    $display("   %b   |   %b    |  %b", enable, data_in, out);

    enable = 0; data_in = 2'b10; #10;
    $display("   %b   |   %b    |  %b", enable, data_in, out);

    $finish;
end

endmodule
