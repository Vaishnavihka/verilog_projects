`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 12:20:00
// Design Name: 
// Module Name: FA_behav_tb
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


module FA_behav_tb( );
  reg a,b,c;
  wire sum, carry;
  
  FA_behav dut(a,b,c,sum,carry);
   initial
   begin
   #10 a = 0; b = 0; c = 0;
   #10 a = 0; b = 0; c = 1;
   #10 a = 0; b = 1; c = 0;
   #10 a = 0; b = 1; c = 1;
   #10 a = 1; b = 0; c = 0;
   #10 a = 1; b = 0; c = 1;
   #10 a = 1; b = 1; c = 0;
   #10 a = 1; b = 1; c = 1;
   end  
endmodule
