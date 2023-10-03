`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 11:43:11 PM
// Design Name: 
// Module Name: Decoder_2x4_TB
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


module Decoder_2x4_TB();
reg A0;
reg A1;
reg E;
wire Y0;
wire Y1;
wire Y2;
wire Y3;

Decoder_2x4 dut(.A0(A0),.A1(A1),.E(E),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3));
initial begin
E=1;
A0=0;
A1=0;
#100;
A0=0;
A1=1;
#100;
A0=1;
A1=0;
#100;
A0=1;
A1=1;
#100;
end
endmodule
