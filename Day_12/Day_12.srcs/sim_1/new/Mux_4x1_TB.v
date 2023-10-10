`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 07:59:36 PM
// Design Name: 
// Module Name: Mux_4x1_TB
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


module Mux_4x1_TB();
reg A;
reg [1:0] Sel;
wire [3:0]Out;

Demux_4x1 dut(.A(A),.Sel(Sel),.Y(Out));
initial begin
A=1;
Sel=2'b00;
#100;
Sel=2'b01;
#100;
Sel=2'b10;
#100;
Sel=2'b11;
#100;
end
endmodule
