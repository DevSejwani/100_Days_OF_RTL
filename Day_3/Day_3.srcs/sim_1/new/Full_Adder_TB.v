`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2023 07:29:30 PM
// Design Name: 
// Module Name: Full_Adder_TB
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


module Full_Adder_TB();
reg A;
reg B;
reg Carry_in;
wire Sum;
wire Carry_Out;

Full_adder uut(.A(A),.B(B),.C_in(Carry_in),.Sum(Sum),.C_out(Carry_Out));
initial begin
A=0;
B=0;
Carry_in=0;
#50;
end

always #50 A = ~B;
always #50 B = ~Carry_in;
always #50 Carry_in = ~A;


endmodule
