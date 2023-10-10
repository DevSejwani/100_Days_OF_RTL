`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 08:22:23 PM
// Design Name: 
// Module Name: Binary_to_Gray
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


module Binary_to_Gray(
    input [3:0] B,
    output [3:0] G
    );
    assign G[3] = B[3];
    assign G[2] = B[2] ^ B[3];
    assign G[1] = B[2] ^ B[1];
    assign G[0] = B[1] ^ B[0];
endmodule
