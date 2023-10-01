`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2023 10:57:25 PM
// Design Name: 
// Module Name: Mux_8x1_tb
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


module Mux_8x1_tb();
reg [7:0] inp;
reg [2:0] sel;
wire out;

Mux_8x1 dut(.I(inp),.S(sel),.Y(out));

initial begin
inp = 8'b10101010;
sel = 2'b00;
end

always begin
#50;
sel = sel + 1'b1;
end
endmodule
