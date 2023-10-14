`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 08:19:35 PM
// Design Name: 
// Module Name: Carry_look_Ahead_Adder
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


module Carry_look_Ahead_Adder(
    input [3:0] A,
    input [3:0] B,
    input C_in,
    output [3:0] Sum,
    output C_out
    );
    wire [3:0]P;
    wire [3:0]G;
    wire [4:0]C;
    assign P = A ^ B;
    assign G = A&B;
    assign C[0] = C_in;
    assign C[1] = G[0]|(P[0]& C_in);
    assign C[2] = G[1]|(P[1]&P[0]& C_in)|(P[1]&G[0]);
    assign C[3] = G[2]|(P[2]&G[1])|(P[2]&P[1]&P[0]& C_in)|(P[2]&P[1]&G[0]);
    assign C[4] = G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&P[0]& C_in)|(P[3]&P[2]&P[1]&G[0]);
    assign Sum[3] = P[3]^C[3];
    assign Sum[2] = P[2]^C[2];
    assign Sum[1] = P[1]^C[1];
    assign Sum[0] = P[0]^C[0];
    assign C_out = C[4];



endmodule
