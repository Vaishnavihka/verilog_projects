`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 22:38:06
// Design Name: 
// Module Name: johnson_counter
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
module johnson_counter (
    input clk,
    input reset,
    output reg [3:0] q
);
    always @(posedge clk) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= {~q[0], q[3:1]}; // Left shift with inverted MSB fed to LSB
    end
endmodule

