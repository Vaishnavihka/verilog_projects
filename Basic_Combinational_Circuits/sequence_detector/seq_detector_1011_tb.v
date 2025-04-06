`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 22:32:06
// Design Name: 
// Module Name: seq_detector_1011_tb
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
module seq_detector_1011_tb;

    reg clk, reset, in;
    wire detected;

    seq_detector_1011 uut (.clk(clk), .reset(reset), .in(in), .detected(detected));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $display("Time | in | detected");
        $monitor("%4t  |  %b  |    %b", $time, in, detected);

        clk = 0; reset = 1; in = 0;
        #10 reset = 0;

        // Input sequence: 1 0 1 1 → Should detect
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 1; #10;

        // Next: Overlapping sequence 1 0 1 1 → Should detect again
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 1; #10;

        $finish;
    end

endmodule

