`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 05:50:47 PM
// Design Name: 
// Module Name: SR_Flip_Flop
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


module SR_Flip_Flop(
    input S,
    input R,
    input Clk,
    output Q,
    output Q_bar
    );
    wire w1,w2;
    nand(w1,S,Clk);
    nand(w2,R,Clk);
    nand(Q,w1,Q_bar);
    nand(Q_bar,w2,Q);
    
endmodule
