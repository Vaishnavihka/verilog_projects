`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 23:22:15
// Design Name: 
// Module Name: priority_encoder_8to3_tb
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
module priority_encoder_8to3_tb;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;

    priority_encoder_8to3 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        $display("Input\t\tOutput\tValid");
        $monitor("%b\t%b\t%b", in, out, valid);

        #10 in = 8'b00000001; // 0
        #10 in = 8'b00000010; // 1
        #10 in = 8'b00000100; // 2
        #10 in = 8'b00001000; // 3
        #10 in = 8'b00010000; // 4
        #10 in = 8'b00100000; // 5
        #10 in = 8'b01000000; // 6
        #10 in = 8'b10000000; // 7
        #10 in = 8'b11000000; // 7 has higher priority
        #10 in = 8'b00000000; // invalid input
        #10 $finish;
    end
endmodule
