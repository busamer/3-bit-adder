`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2020 14:51:33
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


module full_adder( 
    input A,input B,input C0,output C,output S
);
    
    wire S1;
    xor(S1,A,B);
    xor(S,S1,C0);
    
    wire AandB,BandC0,C0andA;
    and(AandB,A,B);
    and(BandC0,B,C0);
    and(C0andA,C0,A);
    
    or(C,AandB,BandC0,C0andA);

endmodule
