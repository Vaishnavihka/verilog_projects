`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 22:39:23
// Design Name: 
// Module Name: johnson_counter_tb
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
module johnson_counter_tb;
    reg clk, reset;
    wire [3:0] q;

    johnson_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $display("Time\tReset\tQ");
        $monitor("%g\t%b\t%b", $time, reset, q);

        clk = 0;
        reset = 1;

        #10 reset = 0; // release reset
        #80;           // run for several clock cycles
        $finish;
    end
endmodule

