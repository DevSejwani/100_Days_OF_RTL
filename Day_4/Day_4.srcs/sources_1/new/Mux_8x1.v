`timescale 1ns / 1ps

module Mux_8x1(
    input [7:0] I,
    input [2:0] S,
    output Y
    );
    wire Y1,Y2;
    Mux_4x1 M1 (I[3:0],S[1:0],Y1);
    Mux_4x1 M2 (I[7:4],S[1:0],Y2);
    Mux_2x1 M3 (Y1,Y2,S[2],Y);
endmodule
