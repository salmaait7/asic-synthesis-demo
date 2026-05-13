module system_detect (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,

    output [3:0] sum,
    output       cout,

    output       p01,
    output       p23

    //output       pulse
);

    adder4_ht u_adder (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );


    assign p01 = sum[0] ^ sum[1];
    //assign p12 = sum[1] ^ sum[2];
    assign p23 = sum[2] ^ sum[3];

    //assign pulse = p01 | p23;

endmodule
