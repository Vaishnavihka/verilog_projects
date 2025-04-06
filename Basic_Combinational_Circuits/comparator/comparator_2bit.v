`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2025 21:15:24
// Design Name: 
// Module Name: comparator_2bit
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


module comparator_2bit(
    input A1, A0, B1, B0,
    output A_gt_B, A_eq_B, A_lt_B
);

    wire w1, w2, w3, w4, w5, w6;

    
    and(w1, A1, ~B1);                   
    and(w2, A0, ~B0, ~A1, ~B1);         

    or(A_gt_B, w1, w2);

    // Check for A < B
    and(w3, ~A1, B1);                  
    and(w4, ~A0, B0, ~A1, ~B1);        

    or(A_lt_B, w3, w4);//changes

    // Check for A == B
    xnor(w5, A1, B1);
    xnor(w6, A0, B0);
    and(A_eq_B, w5, w6);

endmodule
