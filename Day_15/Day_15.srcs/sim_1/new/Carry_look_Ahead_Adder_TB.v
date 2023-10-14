`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 09:42:20 PM
// Design Name: 
// Module Name: Carry_look_Ahead_Adder_TB
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


module Carry_look_Ahead_Adder_TB();
reg [3:0]A;
reg [3:0]B;
reg Carry_in;
wire [3:0] Sum;
wire Carry_out;

Carry_look_Ahead_Adder dut (.A(A),.B(B),.C_in(Carry_in),.Sum(Sum),.C_out(Carry_out));
initial begin
A=4'h9;
B=4'h6;
#100;
A=4'h1;
B=4'h5;
#100;
A=4'h2;
B=4'h7;
#100;
A=4'h9;
B=4'h7;
#100;
A=4'h9;
B=4'h8;
#100;
A=4'h5;
B=4'h5;
#100;
end
endmodule
