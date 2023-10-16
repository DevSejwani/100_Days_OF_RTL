`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 05:58:43 PM
// Design Name: 
// Module Name: SR_Flip_Flop_TB
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


module SR_Flip_Flop_TB();
reg S,R,Clk;
wire Q,Q_bar;
SR_Flip_Flop dut(.S(S),.R(R),.Clk(Clk),.Q(Q),.Q_bar(Q_bar));
initial Clk = 0;
always #25 Clk = ~Clk;
initial begin
S=0;
R=1;
#40;
S=1;
R=0;
#40;
S=0;
R=0;
#40;
S=1;
R=1;
#40;
S=0;
R=0;
#40;
S=0;
R=1;
#40;
S=1;
R=0;
#40;
S=1;
R=1;
#40;
end
endmodule
