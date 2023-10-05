`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 09:52:14 PM
// Design Name: 
// Module Name: Encoder_TB
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
module Encoder_TB();
reg [3:0] Input;
wire [1:0] Out;

Encoder dut (.Y(Input),.A(Out));
integer i;
initial begin
i=0;
Input=0;
for (i=0;i<16;i=i+1)begin
Input = Input + 1'b1;
#100;
end
end
endmodule
