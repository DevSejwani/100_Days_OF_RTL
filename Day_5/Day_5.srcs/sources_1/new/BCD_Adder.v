`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 09:37:11 PM
// Design Name: 
// Module Name: BCD_Adder
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


module BCD_Adder(
    input [15:0] A,
    input [15:0] B,
    input C_in,
    output [15:0] Sum_out,
    output C_out
    );
    wire c1,c2,c3,c4;
    bcd_fadd A1(A[3:0],B[3:0],C_in,c1,Sum_out[3:0]);
    bcd_fadd A2(A[7:4],B[7:4],c1,c2,Sum_out[7:4]);
    bcd_fadd A3(A[11:8],B[11:8],c2,c3,Sum_out[11:8]);
    bcd_fadd A4(A[15:12],B[15:12],c3,C_out,Sum_out[15:12]);
endmodule
