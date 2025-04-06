`timescale 10ns / 1ns
 

module mux2x1_strct(
    input A,B,S,  
    output Y
    );
   
    wire andA, andB, notS;

    not (notS, S);         // notS = ~S
    and (andA, A, notS);   // andA = A & ~S
    and (andB, B, S);      // andB = B & S
    or (Y, andA, andB);    // Y = (A & ~S) | (B & S)
    
endmodule
