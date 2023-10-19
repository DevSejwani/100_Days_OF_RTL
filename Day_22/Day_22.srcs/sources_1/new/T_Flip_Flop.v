`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 12:05:49 AM
// Design Name: 
// Module Name: T_Flip_Flop
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


module T_Flip_Flop(
    input T,
    input Clk,
    input Rst,
    output reg Q,
    output Q_bar
    );
    assign Q_bar = ~Q;
    always @(posedge Clk or posedge Rst)
    begin
    if(Rst)
    Q <= 0;
    else begin
    if(T)
    Q <= ~Q;
    else
    Q <= Q;
    end
    end
endmodule
