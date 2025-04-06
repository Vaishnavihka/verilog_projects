`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:49:24
// Design Name: 
// Module Name: ALU_4bit
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


module ALU_4bit(
   input [3:0] A,
    input [3:0] B,
    input [1:0] ALU_Sel,    // Select line: 00-Add, 01-Sub, 10-AND, 11-OR
    output reg [3:0] Result,
    output reg CarryOut

    );
    
    always @(*) begin
        case (ALU_Sel)
            2'b00: {CarryOut, Result} = A + B;        // Addition
            2'b01: {CarryOut, Result} = A - B;        // Subtraction (CarryOut = Borrow)
            2'b10: {CarryOut, Result} = {1'b0, A & B}; // AND
            2'b11: {CarryOut, Result} = {1'b0, A | B}; // OR
            default: {CarryOut, Result} = 5'b00000;
        endcase
    end
endmodule
