`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 19:04:01
// Design Name: 
// Module Name: ripple_carry_adder_4bit_struct_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module ripple_carry_adder_4bit_struct_tb;    
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    
    ripple_carry_adder_4bit_struct uut(A, B, Cin, Sum, Cout);

    initial begin
        //$display(" A    B   Cin | Sum Cout");
        //$monitor("%b %b   %b   | %b   %b", A, B, Cin, Sum, Cout);

        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b1001; B = 4'b0110; Cin = 1; #10;
        A = 4'b0011; B = 4'b1100; Cin = 0; #10;
        A = 4'b1010; B = 4'b0101; Cin = 1; #10; 
    end 
    
endmodule
