`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2023 07:22:04 PM
// Design Name: 
// Module Name: Full_adder
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
module Full_adder(
    input A,
    input B,
    input C_in,
    output Sum,
    output C_out
    );
    wire C1,C2,S0;
    HA A1(A,B,S0,C1);
    HA A2(S0,C_in,Sum,C2);
    OR R1(C1,C2,C_out);
endmodule
