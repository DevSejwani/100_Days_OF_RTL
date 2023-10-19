`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 11:44:06 PM
// Design Name: 
// Module Name: JK_Flip_Flop
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


module JK_Flip_Flop(
    input J,
    input K,
    input Clk,
    output reg Q,
    output  Q_bar
    );
    assign Q_bar = ~Q;
    always @(posedge Clk)
    begin
    case({J,K})
    2'b00:Q<= Q;
    2'b01:Q<= 0;
    2'b10:Q<= 1;
    2'b11:Q<= ~Q;
    endcase
    end
    
endmodule
