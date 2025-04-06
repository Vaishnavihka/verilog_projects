`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 23:20:18
// Design Name: 
// Module Name: priority_encoder_8to3
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
module priority_encoder_8to3 (
    input [7:0] in,
    output reg [2:0] out,
    output reg valid
);
    always @(*) begin
        valid = 1'b1;
        casez (in)
            8'b1???????: out = 3'b111; // input[7]
            8'b01??????: out = 3'b110; // input[6]
            8'b001?????: out = 3'b101; // input[5]
            8'b0001????: out = 3'b100; // input[4]
            8'b00001???: out = 3'b011; // input[3]
            8'b000001??: out = 3'b010; // input[2]
            8'b0000001?: out = 3'b001; // input[1]
            8'b00000001: out = 3'b000; // input[0]
            default: begin
                out = 3'b000;
                valid = 1'b0;
            end
        endcase
    end
endmodule

