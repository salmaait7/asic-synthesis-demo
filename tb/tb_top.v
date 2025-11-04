`timescale 1ns/1ps
module tb_top;
  reg A=0, B=0, C=0;
  wire Q;

  top dut (.A(A), .B(B), .C(C), .Q(Q));

  initial begin
    $dumpfile("sim/dump.vcd");
    $dumpvars(0, tb_top);

    A=0; B=0; C=0; #10;
    A=1; B=1; C=1; #10;
    A=1; B=1; C=0; #10;
    A=1; B=1; C=1; #10;

    #10 $finish;
  end
endmodule

