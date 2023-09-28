`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2023 06:02:05 PM
// Design Name: 
// Module Name: All_gates
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


module All_gates(
    input A,
    input B,
    output And,
    output Or,
    output Nand,
    output Nor,
    output Ex_or,
    output Ex_nor,
    output Not
    );
    assign And = A&B;
    assign Or = A|B;
    assign Nor = ~(A|B);
    assign Nand = ~(A&B);
    assign Ex_or = A^B;
    assign Ex_nor = ~(A^B);
    assign Not = ~A;
endmodule
