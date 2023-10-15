`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2023 10:26:24 PM
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
    input D,
    input En,
    output Q,
    output Q_bar
    );
    wire w1,w2;
    nand n1(w1,D,En);
    nand n2(w2,w1,En);
    nand n3(Q,w1,Q_bar);
    nand n4(Q_bar,w2,Q);
    
endmodule
