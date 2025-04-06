`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:42:15
// Design Name: 
// Module Name: shift_register_4bit_tb
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


module shift_register_4bit_tb( );
    reg clk, reset, load;
    reg [3:0] parallel_in;
    wire [3:0] q;

    shift_register_4bit dut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .parallel_in(parallel_in),
        .q(q)
        );
        
        // Clock generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial 
    begin

        // Initial reset
        reset = 1; load = 0; parallel_in = 4'b0000;
        #10 reset = 0;

        // Load 4'b1011 into register
        #10 load = 1; parallel_in = 4'b1011;

        // Hold data
        #10 load = 0;

        // Shift right (3 times)
        #10;
        #10;
        #10;

        // Load new value
        #10 load = 1; parallel_in = 4'b1100;

        // Shift again
        #10 load = 0;
        #10;
        #10;

        #10 $finish;
    end

endmodule
