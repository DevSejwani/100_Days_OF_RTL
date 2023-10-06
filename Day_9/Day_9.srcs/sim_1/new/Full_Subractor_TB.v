`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2023 11:33:15 PM
// Design Name: 
// Module Name: Full_Subractor_TB
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


module Full_Subractor_TB();
reg A;
reg B;
reg B_in;
wire Diffrence;
wire Borrow;
Full_Subractor dut(.A(A),.B(B),.B_in(B_in),.Diff(Diffrence),.Borrow(Borrow));
initial begin
A=0;B=0;B_in=0;
#100;
A=0;B=0;B_in=1;
#100;
A=0;B=1;B_in=0;
#100;
A=0;B=1;B_in=1;
#100;
A=1;B=0;B_in=0;
#100;
A=1;B=0;B_in=1;
#100;
A=1;B=1;B_in=0;
#100;
A=1;B=1;B_in=1;
#100;
end
endmodule
