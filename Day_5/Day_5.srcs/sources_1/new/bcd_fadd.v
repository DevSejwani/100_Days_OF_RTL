`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 09:46:59 PM
// Design Name: 
// Module Name: bcd_fadd
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


module bcd_fadd(
input [3:0] a,
input [3:0] b,
input cin,
output reg cout,
output reg [3:0] sum 
    );
    reg [4:0] temp;
    always @(*)
    begin
    temp = a + b + cin;
    if(temp > 9)begin
    temp = temp + 6;
    sum = temp[3:0];
    cout = 1'b1;
    end
    else begin
    sum = temp[3:0];
    cout = 0;
    end
    end
endmodule
