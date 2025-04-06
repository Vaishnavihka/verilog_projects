`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 12:17:24
// Design Name: 
// Module Name: FA_behav
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


module FA_behav(
    input a,b,c,
    output reg sum,carry
    );
    always@(*)
    begin
    sum = a ^ b ^ c;
    carry = (a & b)|(b & c)|(c & a);
    end
endmodule
