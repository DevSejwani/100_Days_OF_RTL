`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 08:26:28 PM
// Design Name: 
// Module Name: Binary_to_Gray_TB
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


module Binary_to_Gray_TB();
reg [3:0] Binary;
wire [3:0] Gray;

Binary_to_Gray dut(.B(Binary),.G(Gray));

initial
begin
Binary =4'h0;
#100;
Binary =4'h1;
#100;
Binary =4'h2;
#100;
Binary =4'h3;
#100;
Binary =4'h4;
#100;
Binary =4'h5;
#100;
Binary =4'h6;
#100;
Binary =4'h7;
#100;
Binary =4'h8;
#100;
Binary =4'h9;
#100;
Binary =4'ha;
#100;
Binary =4'hb;
#100;
Binary =4'hc;
#100;
Binary =4'hd;
#100;
Binary =4'he;
#100;
Binary =4'hf;
#100;
Binary =4'd0;
#100;
end
endmodule
