`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2023 10:41:14 PM
// Design Name: 
// Module Name: Mux_4x1
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


module Mux_4x1(
    input [3:0] I,
    input [1:0] S,
    output reg Y
    );
    always @(I or S)
    case(S)
    2'b00:Y=I[0];
    2'b01:Y=I[1];
    2'b10:Y=I[2];
    2'b11:Y=I[3];
    default:Y=I[0];
    endcase
endmodule
