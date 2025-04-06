`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:17:14
// Design Name: 
// Module Name: comparator_2bit_tb
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


module comparator_2bit_tb();
   reg A1, A0, B1, B0;
    wire A_gt_B, A_eq_B, A_lt_B;

    comparator_2bit dut(A1, A0, B1, B0, A_gt_B, A_eq_B, A_lt_B);

    initial 
    begin
       
        #10 A1=0; A0=0; B1=0; B0=0;  
        #10 A1=0; A0=1; B1=0; B0=0;  
        #10 A1=1; A0=0; B1=0; B0=1;  
        #10 A1=1; A0=1; B1=1; B0=1;  
        #10 A1=0; A0=0; B1=1; B0=0;  
        #10 A1=1; A0=0; B1=1; B0=1;  
        #10 A1=0; A0=1; B1=1; B0=0;  
        #10 A1=1; A0=1; B1=0; B0=1;  
    end
endmodule
