`timescale 10ns / 1ns

module mux_2x1_struct_tb; 
 reg A, B, S; 
 wire Y; 
 mux2x1_strct dut(.A(A),.B(B),.S(S),.Y(Y));

 initial begin
 $monitor("S=%b A=%b B=%b Y=%b", S, A, B, Y);
 
 A = 0; B = 1; S = 0; #20;
 A = 0; B = 1; S = 1; #20;
 A = 1; B = 0; S = 0; #20;
 A = 1; B = 0; S = 1; #20
 $finish;
 end
endmodule
