`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 08:08:46 PM
// Design Name: 
// Module Name: D_Flip_Flop_TB
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


module D_Flip_Flop_TB();
reg D,Clk,Reset;
wire Q,Q_bar;

D_Flip_Flop dut(.D(D),.Clk(Clk),.Reset(Reset),.Q(Q),.Q_bar(Q_bar));
initial begin
Clk = 0;
Reset = 0;
end
always #25 Clk = ~Clk; 
always #75 Reset = ~Reset;
initial begin
D=0;
#100;
D=1;
#100;
D=1;
#100;
D=0;
#100;
D=1;
#100;
D=1;
#100;
D=0;
#100;
D=1;
#100;
end 
endmodule
