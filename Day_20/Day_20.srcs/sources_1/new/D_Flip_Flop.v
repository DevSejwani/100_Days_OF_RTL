`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 08:02:03 PM
// Design Name: 
// Module Name: D_Flip_Flop
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


module D_Flip_Flop(
    input D,
    input Clk,
    input Reset,
    output Q,
    output Q_bar
    );
    reg Q,Q_bar;
    always @(posedge Clk or posedge Reset)
    begin
    if(Reset)
    begin
    Q<=0;
    Q_bar<=1;
    end
    else begin
    Q<=D;
    Q_bar<= ~D;
    end
end
endmodule
