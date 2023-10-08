`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 11:27:03 PM
// Design Name: 
// Module Name: Demux_8x1
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


module Demux_8x1(
    input A,
    input [2:0] S,
    output reg [7:0] Y
    );
    always @(*)
    begin
    Y=0;
    case(S)
    3'b000:Y[0]=A;
    3'b001:Y[1]=A;
    3'b010:Y[2]=A;
    3'b011:Y[3]=A;
    3'b100:Y[4]=A;
    3'b101:Y[5]=A;
    3'b110:Y[6]=A;
    3'b111:Y[7]=A;
    default:Y=0;
    endcase
    end
endmodule
