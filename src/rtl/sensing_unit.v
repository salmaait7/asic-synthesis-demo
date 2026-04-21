module sensing_unit (
    input  pulse,
    input  rst,
    output reg error
);
    always @(pulse or rst) begin
        if (rst)
            error = 1'b0;
        else if (pulse)
            error = 1'b1;
    end
endmodule
