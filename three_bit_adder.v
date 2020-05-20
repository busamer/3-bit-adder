`timescale 1ns / 1ps
`include "full_adder.v"

module three_bit_adder(
    input   [2:0] A,
    input   [2:0] B,
    output  [3:0] S
    
    );
    
    wire [3:0] C0;
    wire [3:0] C;
    
    
    full_adder f1(
        .A(A[0]),
        .B(B[0]),
        .C0(0),
        .C(C[0]),
        .S(S[0])
    );
    
    full_adder f2(
        .A(A[1]),
        .B(B[1]),
        .C0(C[0]),
        .C(C[1]),
        .S(S[1])
    );
    
    
    full_adder f3(
        .A(A[2]),
        .B(B[2]),
        .C0(C[1]),
        .C(C[2]),
        .S(S[2])
    );
    
    assign S[3] = C[2];
    
    
    
    
endmodule
