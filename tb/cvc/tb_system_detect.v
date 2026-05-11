`timescale 1ps/1ps

module tb;

  reg [3:0] a;
  reg [3:0] b;
  reg cin;

  wire [3:0] sum;
  wire cout;

  wire p01_dbg;
  wire p23_dbg;
  wire p12_dbg;
  wire pulse;

  system_detect dut (
      .a(a),
      .b(b),
      .cin(cin),

      .sum(sum),
      .cout(cout),

      .p01(p01_dbg),
      .p12(p12_dbg),
      .p23(p23_dbg),
      .pulse(pulse)
  );

  initial begin
    $display("Start");

    a = 4'b0000;
    b = 4'b0000;
    cin = 0;
    #100000;

    a = 4'b1111;
    b = 4'b0000;
    cin = 0;
    #100000;

    a = 4'b0000;
    b = 4'b0000;
    cin = 0;
    #100000;

    a = 4'b0000;
    b = 4'b1111;
    cin = 0;
    #100000;
    
    $display("End");
    $finish;
  end

endmodule
