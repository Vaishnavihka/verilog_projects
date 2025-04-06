`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 18:29:51
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb( );
    reg a,b,cin;
    wire sum,carry;
    
    full_adder dut(a,b,cin,sum,carry);
      initial
      begin
      #10 a =0;b=0;cin=0;
      #10 a =0;b=0;cin=1;
      #10 a =0;b=1;cin=0;
      #10 a =0;b=1;cin=1;
      #10 a =1;b=0;cin=0;
      #10 a =1;b=0;cin=1;
      #10 a =1;b=1;cin=0; 
      #10 a =1;b=1;cin=1; 
      
       
      end 
endmodule
