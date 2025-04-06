`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 23:12:35
// Design Name: 
// Module Name: encoder_4to2_tb
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
module encoder_4to2_tb;
    reg [3:0] in;
    wire [1:0] out;

    encoder_4to2 uut (
        .in(in),
        .out(out)
    );

    initial begin
        $display("in\tout");
        $monitor("%b\t%b", in, out);

        #10 in = 4'b0001;
        #10 in = 4'b0010;
        #10 in = 4'b0100;
        #10 in = 4'b1000;
        #10 in = 4'b0000; // default
        #10 in = 4'b1100; // multiple active bits (undefined in this encoder)
        #10 $finish;
    end
endmodule

