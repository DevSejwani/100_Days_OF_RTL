`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 11:06:27 PM
// Design Name: 
// Module Name: Subractor_4_bit_TB
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
module Subractor_4_bit_TB();
reg [3:0]A;
reg [3:0]B;
reg B_in;
wire [3:0] Diffrence;
wire Borrow;
Subrator_4_bit dut(.A(A),.B(B),.B_in(B_in),.Diff(Diffrence),.Borrow(Borrow));

initial begin
A=4'd6;
B=4'd9;
B_in=0;
#100;
A=4'd9;
B=4'd6;
B_in=0;
#100;
A=4'd5;
B=4'd4;
B_in=1;
#100;
A=4'd7;
B=4'd3;
B_in=0;
#100;
A=4'd3;
B=4'd7;
B_in=0;
#100;
A=4'd6;
B=4'd8;
B_in=0;
#100;
A=4'd8;
B=4'd6;
B_in=0;
#100;
A=4'd6;
B=4'd9;
B_in=0;
#100;
end

endmodule
