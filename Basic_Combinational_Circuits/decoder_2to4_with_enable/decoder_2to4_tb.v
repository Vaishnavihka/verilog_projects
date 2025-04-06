`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:59:59
// Design Name: 
// Module Name: decoder_2to4_tb
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


module decoder_2to4_tb( );
    reg [1:0] in;
    reg en;
    wire [3:0] out;

    decoder_2to4 dut (.in(in), .en(en), .out(out));

    initial begin
        $display("EN IN | OUT");
        $monitor(" %b %b  | %b", en, in, out);

        // Enable = 0 (all outputs should be 0)
        en = 0; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        // Enable = 1 (normal decoder operation)
        en = 1; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        $finish;
    end
endmodule
