`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2023 11:49:48 PM
// Design Name: 
// Module Name: SR_Latch_Nor_TB
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


module SR_Latch_Nor_TB();
reg S,R;
wire Q,Q_bar;
SR_Latch_NOR dut (.S(S),.R(R),.Q(Q),.Q_bar(Q_bar));
initial begin
S=1;R=0;
#100;
S=0;R=0;
#100;
S=0;R=1;
#100;
S=1;R=0;
#100;
S=1;R=1;
#100;
end
endmodule
