`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2023 11:46:59 PM
// Design Name: 
// Module Name: SR_Latch_NOR
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


module SR_Latch_NOR(
    input S,
    input R,
    output Q,
    output Q_bar
    );
    nor n1(Q,R,Q_bar);
    nor n2(Q_bar,S,Q);
endmodule
