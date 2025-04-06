`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2025 11:13:50
// Design Name: 
// Module Name: logicgates_tb
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


module logicgates_tb;
reg a, b;
wire and_gate,or_gate,nand_gate,nor_gate,xor_gate,xnor_gate;
logicgates dut(a,b,and_gate,or_gate,nand_gate,nor_gate,xor_gate,xnor_gate);

initial
begin 
  #10 a= 1'b0; b= 1'b0;
  #10 a= 1'b0; b= 1'b1;
  #10 a= 1'b1; b= 1'b0;
  #10 a= 1'b1; b= 1'b1;
  #10 $finish;
end   
endmodule
