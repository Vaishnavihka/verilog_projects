`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 16:08:12
// Design Name: 
// Module Name: HA_struct_tb
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


module HA_struct_tb();
 reg a,b;
 wire sum, carry;

 HA_struct dut(a,b,sum,carry);

 initial
 begin
  #10 a = 0; b = 0;
  #10 a = 0; b = 1;
  #10 a = 1; b = 0;
  #10 a = 1; b = 1;
 end
endmodule
