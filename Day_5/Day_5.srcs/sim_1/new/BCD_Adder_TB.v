`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 10:07:30 PM
// Design Name: 
// Module Name: BCD_Adder_TB
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


module BCD_Adder_TB();
reg [15:0] A,B;
reg C_in;
wire [15:0] Sum;
wire Carry;

BCD_Adder dut (.A(A),.B(B),.C_in(C_in),.Sum_out(Sum),.C_out(Carry));
initial begin
A=0;
B=0;
C_in=0;
#100;
A=16'd9999;
B=16'd5555;
#100;
A=16'd7070;
B=16'd2222;
#100;
A=16'd1527;
B=16'd1529;
#100;
end





endmodule
