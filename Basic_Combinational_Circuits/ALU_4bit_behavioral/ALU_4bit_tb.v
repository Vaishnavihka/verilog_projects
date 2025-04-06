`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:50:41
// Design Name: 
// Module Name: ALU_4bit_tb
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


module ALU_4bit_tb;
  reg [3:0] A, B;
    reg [1:0] ALU_Sel;
    wire [3:0] Result;
    wire CarryOut;

    ALU_4bit dut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Result(Result),
        .CarryOut(CarryOut));
        
        initial begin
        $display(" A   B |Sel| Result CarryOut | Operation");
        $monitor("%b %b | %b  |   %b      %b    | %s", A, B, ALU_Sel, Result, CarryOut,
                 (ALU_Sel == 2'b00) ? "ADD" :
                 (ALU_Sel == 2'b01) ? "SUB" :
                 (ALU_Sel == 2'b10) ? "AND" :
                 "OR");

        // Test Addition
        A = 4'b0011; B = 4'b0101; ALU_Sel = 2'b00; #10;

        // Test Subtraction
        A = 4'b1000; B = 4'b0010; ALU_Sel = 2'b01; #10;

        // Test AND
        A = 4'b1100; B = 4'b1010; ALU_Sel = 2'b10; #10;

        // Test OR
        A = 4'b1001; B = 4'b0110; ALU_Sel = 2'b11; #10;

        // Test Carry in Addition
        A = 4'b1111; B = 4'b0001; ALU_Sel = 2'b00; #10;
        $finish;
       
    end
   
endmodule
