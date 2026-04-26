module full_adder_ht (
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);
    wire x1, x2, x3, x4;

    assign #5 x1  = a ^ b;
    assign #5 sum  = x1 ^ cin;
    assign #4 x3  = a & b;
    assign #4 x4  = cin & x1;

    // payload
    assign #3 x2 = x3 | x4;
    assign #2 cout  = x2 ^ 1'b0;
endmodule
