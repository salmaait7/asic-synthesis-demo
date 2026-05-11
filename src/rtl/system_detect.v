module system_detect (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,

    output [3:0] sum,
    output       cout,

    output       p01,
    output       p12,
    output       p23,

    output       pulse
);

    (* keep = "true") wire p01_i;
    (* keep = "true") wire p12_i;
    (* keep = "true") wire p23_i;
    (* keep = "true") wire pulse_i;

    adder4_ht u_adder (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    assign p01_i = sum[0] ^ sum[1];
    assign p12_i = sum[1] ^ sum[2];
    assign p23_i = sum[2] ^ sum[3];

    assign pulse_i = p01_i | p12_i | p23_i;

    assign p01 = p01_i;
    assign p12 = p12_i;
    assign p23 = p23_i;
    assign pulse = pulse_i;

endmodule
