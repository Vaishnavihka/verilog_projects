`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:31:39
// Design Name: 
// Module Name: D_flipflop_tb
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


module D_flipflop_tb(  );
   reg clk, reset, d;
    wire q;

    D_flipflop dut (.clk(clk), .reset(reset), .d(d), .q(q));

    // Clock generation: 10ns period
    initial 
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial 
    begin

        // Initial values
        reset = 1; d = 0;

        #10 reset = 0; d = 1;   // Set d=1, reset de-asserted
        #10 d = 0;             // d=0 at next clock
        #10 d = 1;
        #10 reset = 1;         // Asynchronous reset
        #10 reset = 0; d = 1;
        #10 d = 0;

        #20 $finish;
    end

endmodule
