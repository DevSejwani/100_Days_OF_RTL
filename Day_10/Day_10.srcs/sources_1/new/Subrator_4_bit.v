`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 10:57:33 PM
// Design Name: 
// Module Name: Subrator_4_bit
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


module Subrator_4_bit(
    input [3:0] A,
    input [3:0] B,
    input B_in,
    output [3:0] Diff,
    output Borrow
    );
    wire B1,B2,B3;
    full_sub S1(A[0],B[0],B_in,Diff[0],B1);
    full_sub S2(A[1],B[1],B1,Diff[1],B2);
    full_sub S3(A[2],B[2],B2,Diff[2],B3);
    full_sub S4(A[3],B[3],B3,Diff[3],Borrow);
endmodule
