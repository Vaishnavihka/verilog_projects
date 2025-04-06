`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 16:18:15
// Design Name: 
// Module Name: HS_behav
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


module HS_behav(
    input a,b,
    output reg borrow, diff  );
    always@(*)
    begin
    diff = a ^ b;
    borrow = ~a & b;
    end 
   
endmodule
