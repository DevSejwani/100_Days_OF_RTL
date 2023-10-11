`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 08:09:35 PM
// Design Name: 
// Module Name: Gray_to_Binary
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


module Gray_to_Binary(
    input [3:0] G,
    output [3:0] B
    );
    assign B[3] = G[3];
    assign B[2] = G[2]^G[3];
    assign B[1] = G[1]^G[2]^G[3];
    assign B[0] = G[0]^G[1]^G[2]^G[3];
    
endmodule
