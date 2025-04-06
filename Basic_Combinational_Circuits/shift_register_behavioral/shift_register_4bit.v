`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:40:50
// Design Name: 
// Module Name: shift_register_4bit
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


module shift_register_4bit(
   input clk,
    input reset,               // asynchronous reset
    input load,               // 1 = parallel load, 0 = shift right
    input [3:0] parallel_in,  // parallel input
    output reg [3:0] q        // register output
    );
    
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000;
        else if (load)
            q <= parallel_in;     // load parallel data
        else
            q <= {1'b0, q[3:1]};  // shift right, MSB gets 0
    end
endmodule
