`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2025 16:22:09
// Design Name: 
// Module Name: HS_behav_tb
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


module HS_behav_tb();
 reg a,b;
 wire borrow, diff;
 
 HS_behav dut(a,b,borrow,diff);
 
  initial
  begin
   #10 a = 0; b = 0;
   #10 a = 0; b = 1;
   #10 a = 1; b = 0;
   #10 a = 1; b = 1;
  end
endmodule
