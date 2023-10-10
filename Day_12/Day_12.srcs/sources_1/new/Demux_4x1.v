`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 07:51:44 PM
// Design Name: 
// Module Name: Demux_4x1
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


module Demux_4x1(
    input A,
    input [1:0] Sel,
    output [3:0] Y
    );
    assign Y[0] = (~Sel[0])&(~Sel[1])&A;
    assign Y[1] = (Sel[0])&(~Sel[1])&A;
    assign Y[2] = (~Sel[0])&(Sel[1])&A;
    assign Y[3] = (Sel[0])&(Sel[1])&A;
endmodule
