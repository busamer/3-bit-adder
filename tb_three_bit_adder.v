`timescale 1ns / 1ps

module tb_three_bit_adder(
    );
    
    reg [2:0] a;
    reg  [2:0] b;
    wire [3:0] s;
    
   
    three_bit_adder uut(
        .A(a),
        .B(b),
        .S(s)
    );
    
    initial begin
        a[2:0] = 3'b000; b[2:0] = 3'b000; #50;
        a[2:0] = 3'b000; b[2:0] = 3'b001; #50;
        a[2:0] = 3'b001; b[2:0] = 3'b001; #50;
        a[2:0] = 3'b001; b[2:0] = 3'b011; #50;
        a[2:0] = 3'b000; b[2:0] = 3'b111; #50;
        a[2:0] = 3'b001; b[2:0] = 3'b010; #50;
        a[2:0] = 3'b011; b[2:0] = 3'b110; #50;
        a[2:0] = 3'b111; b[2:0] = 3'b111; #50;
        a[2:0] = 3'b111; b[2:0] = 3'b110; #50;
    end
    
endmodule
