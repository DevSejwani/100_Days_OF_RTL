`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 08:46:54 PM
// Design Name: 
// Module Name: Basic_gates_Gate_level_modelling
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


module Basic_gates_Gate_level_modelling(
    input A,
    input B,
    output [6:0] Y
    );
    not(Y[0],A);
    and(Y[1],A,B);
    or(Y[2],A,B);
    nor(Y[3],A,B);
    nand(Y[4],A,B);
    xor(Y[5],A,B);
    xnor(Y[6],A,B);
    
endmodule
