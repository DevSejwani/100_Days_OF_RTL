`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 11:28:04 PM
// Design Name: 
// Module Name: Full_Subractor
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


module Full_Subractor(
    input A,
    input B,
    input B_in,
    output Diff,
    output Borrow
    );
    assign Diff = A^B^B_in;
    assign Borrow = (~A)&B | (~A)&B_in | B&B_in;
    
endmodule
