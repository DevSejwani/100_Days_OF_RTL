`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 12:10:40 AM
// Design Name: 
// Module Name: T_Flip_Flop_TB
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


module T_Flip_Flop_TB();
reg T,Clk,Rst;
wire Q,Q_bar;

T_Flip_Flop dut(.T(T),.Clk(Clk),.Rst(Rst),.Q(Q),.Q_bar(Q_bar));
initial
begin
Clk = 0;
Rst = 0;
end

always #50 Clk = ~Clk;
initial begin
#50;
Rst = 1;
#50;
Rst = 0;
T =0;
#100;
T=1;
#100;
T=1;
#100;
T=0;
#100;
T=1;
#100;
T=0;
end
endmodule
