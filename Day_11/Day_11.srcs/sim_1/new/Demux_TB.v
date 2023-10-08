`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2023 11:40:04 PM
// Design Name: 
// Module Name: Demux_TB
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


module Demux_TB();
reg Input;
reg [2:0] Select_line;
wire [7:0]Output;
Demux_8x1 dut(.A(Input),.S(Select_line),.Y(Output));
initial begin
Input=1;
Select_line=3'd0;
#100;
Select_line=3'd1;
#100;
Select_line=3'd2;
#100;
Select_line=3'd3;
#100;
Select_line=3'd4;
#100;
Select_line=3'd5;
#100;
Select_line=3'd6;
#100;
Select_line=3'd7;
#100;
end
endmodule
