module decoder_2to_4(
    input [1:0] data_in,
    input enable,
    output reg [3:0] out
);

always @(*) begin
    if (enable) begin
        if (data_in == 2'b00)
            out = 4'b0001;
        else if (data_in == 2'b01)
            out = 4'b0010;
        else if (data_in == 2'b10)
            out = 4'b0100;
        else if (data_in == 2'b11)
            out = 4'b1000;
        else
            out = 4'b0000;  
    end else begin
        out = 4'b0000;
    end
end

endmodule
