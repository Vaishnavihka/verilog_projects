`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 18:22:30
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input  a,b,cin,
    output sum,carry);
     
     wire s1,c1,c2; 
     half_adder HA1(a,b,s1,c1);
     half_adder HA2(s1,cin,sum,c2);  
     or(carry, c1,c2);
  
endmodule
