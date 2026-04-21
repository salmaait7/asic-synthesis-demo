`timescale 1ns/1ps

module tb;
    reg  [3:0] a, b;
    reg cin, rst;
    wire [3:0] sum_clean, sum_ht;
    wire pulse, error;

    system_detect uut (
        .a(a), .b(b), .cin(cin), .rst(rst),
        .sum_clean(sum_clean),
        .sum_ht(sum_ht),
        .pulse(pulse),
        .error(error)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb);

        rst = 1;
        a = 4'b0000; b = 4'b0000; cin = 0;
        #5;
        rst = 0;

        #10 a = 4'b1111; b = 4'b0000; cin = 0;
        #10 a = 4'b0000; b = 4'b1111; cin = 0;
        #10 a = 4'b1111; b = 4'b1111; cin = 0;
        #10 a = 4'b1010; b = 4'b0101; cin = 0;
        #10 a = 4'b0011; b = 4'b1100; cin = 0;
        #20;

        $finish;
    end
endmodule
