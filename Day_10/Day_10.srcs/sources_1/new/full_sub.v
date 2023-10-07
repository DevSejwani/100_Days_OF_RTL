`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 11:01:40 PM
// Design Name: 
// Module Name: full_sub
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


module full_sub(
    input A,
    input B,
    input B_in,
    output Diff,
    output Borr
    );
    assign Diff = A^B^B_in;
    assign Borr = (~A)&B | B&B_in | (~A)&B_in;
    
endmodule
