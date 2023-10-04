`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 12:40:15 AM
// Design Name: 
// Module Name: Comparator_TB
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


module Comparator_TB();
reg [1:0] A,B;
wire A_Greater_B;
wire A_Equal_B;
wire A_Less_B;

Comparator uut(.A(A),.B(B),.A_Greater_B(A_Greater_B),.A_Equal_B(A_Equal_B),.A_Less_B(A_Less_B));

initial begin
A=2'b00;
B=2'b11;
#100;
A=2'b10;
B=2'b10;
#100;
A=2'b11;
B=2'b01;
#100;
A=2'b10;
B=2'b11;
#100;
A=2'b10;
B=2'b01;
#100;
A=2'b01;
B=2'b01;
#100;
A=2'b01;
B=2'b11;
#100;
A=2'b10;
B=2'b01;
#100;
A=2'b11;
B=2'b11;
#100;
A=2'b01;
B=2'b11;
#100;
A=2'b11;
B=2'b10;
#100;
end
endmodule
