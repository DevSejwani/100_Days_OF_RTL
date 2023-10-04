`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 12:06:17 AM
// Design Name: 
// Module Name: Comparator
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


module Comparator(
    input [1:0] A,
    input [1:0] B,
    output A_Greater_B,
    output A_Equal_B,
    output A_Less_B
    );
    wire tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8;
    //A=B Condition
    xnor u1(tmp1,A[1],B[1]);
    xnor u2(tmp2,A[0],B[0]);
    and u3(A_Equal_B,tmp1,tmp2);
    //A<B Condition
    assign tmp3 = (~A[0]) &(~A[1])&B[0];
    assign tmp4 = (~A[1])& B[1];
    assign tmp5 = (~A[0])&B[1]&B[0];
    assign A_Less_B = tmp3|tmp4|tmp5;
    //A>B Condition
    assign tmp6 = (~B[0])&(~B[1])&A[0];
    assign tmp7 = (~B[1])&A[1];
    assign tmp8 = (~B[0])&A[1]&A[0];
    assign A_Greater_B = tmp6 | tmp7 | tmp8;
endmodule
