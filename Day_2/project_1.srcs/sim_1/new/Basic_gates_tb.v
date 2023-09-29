`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 08:51:32 PM
// Design Name: 
// Module Name: Basic_gates_tb
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


module Basic_gates_tb();
reg A;
reg B;
wire [6:0]Y;

Basic_gates_Gate_level_modelling dut(.A(A),.B(B),.Y(Y));
initial
begin
A=0;
B=0;
#10;
end

always #25 A =~A;
always
begin 
#20 B =~B;
#500;
$finish;
end
endmodule
