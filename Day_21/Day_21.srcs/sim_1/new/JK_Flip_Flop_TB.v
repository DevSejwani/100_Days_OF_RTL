`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:54:44 PM
// Design Name: 
// Module Name: JK_Flip_Flop_TB
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


module JK_Flip_Flop_TB();
reg J,K,Clk;
wire Q,Q_bar;

JK_Flip_Flop dut(.J(J),.K(K),.Clk(Clk),.Q(Q),.Q_bar(Q_bar));
initial begin
J=1;
K=0;
Clk=0;
end
always #50 Clk = ~Clk;
initial begin
#40;
J=0;K=0;
#100;
J=0;K=1;
#100;
J=1;K=0;
#100;
J=1;K=1;
#100;
J=1;K=1;
#100;
J=1;K=0;
#100;
end
endmodule
