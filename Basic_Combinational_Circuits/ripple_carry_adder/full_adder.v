`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 18:58:54
// Design Name: 
// Module Name: full_adder
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
module full_adder_struct( 
    input A, B, Cin,
    output Sum, Cout);
    
    wire w1, w2, w3;

    xor (w1, A, B);
    xor (Sum, w1, Cin);

    and (w2, A, B);
    and (w3, w1, Cin);
    or (Cout, w2, w3);
endmodule  


