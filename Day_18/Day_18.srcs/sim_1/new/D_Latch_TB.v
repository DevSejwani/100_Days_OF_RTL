`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 10:34:32 PM
// Design Name: 
// Module Name: D_Latch_TB
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


module D_Latch_TB();
reg D,En;
wire Q,Q_bar;

D_Latch dut (.D(D),.En(En),.Q(Q),.Q_bar(Q_bar));
initial begin
En=1;
D=0;
#100;
D=1;
#100;
En=0;
D=0;
#100;
D=1;
#100;
En=1;
D=0;
#100;
D=1;
#100;
En=0;
end
endmodule
