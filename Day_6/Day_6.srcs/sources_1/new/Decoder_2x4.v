`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 11:25:58 PM
// Design Name: 
// Module Name: Decoder_2x4
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


module Decoder_2x4(
    input A0,
    input A1,
    input E,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
    wire A0_bar,A1_bar,w1,w2,w3,w4,w5;
    not(A0_bar,A0);
    not(A1_bar,A1);
    and(w1,A0_bar,A1_bar);
    and(Y0,w1,E);
    and(w2,A0,A1_bar);
    and(Y1,w2,E);
    and(w3,A1,A0_bar);
    and(Y2,w3,E);
    and(w3,A0,A1);
    and(Y3,w3,E);
    
endmodule
