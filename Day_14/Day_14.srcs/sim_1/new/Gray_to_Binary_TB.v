`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2023 08:16:20 PM
// Design Name: 
// Module Name: Gray_to_Binary_TB
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


module Gray_to_Binary_TB();
reg [3:0] Gray;
wire [3:0] Binary;

Gray_to_Binary dut(.G(Gray),.B(Binary));
initial begin
Gray =4'h0;
#100;
Gray =4'h1;
#100;
Gray =4'h3;
#100;
Gray =4'h2;
#100;
Gray =4'h6;
#100;
Gray =4'h7;
#100;
Gray =4'h5;
#100;
Gray =4'h4;
#100;
Gray =4'hc;
#100;
Gray =4'hd;
#100;
Gray =4'hf;
#100;
Gray =4'he;
#100;
Gray =4'ha;
#100;
Gray =4'hb;
#100;
Gray =4'h9;
#100;
Gray =4'h8;
#100;
end
endmodule
