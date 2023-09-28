`timescale 1ns / 1ps
module All_gates_tb();
reg A;
reg B;
wire And;
wire Nand;
wire Nor;
wire Or;
wire Ex_or;
wire Ex_nor;
wire Not;

All_gates dut(.A(A),
.B(B),
.And(And),
.Or(Or),
.Nor(Nor),
.Nand(Nand),
.Ex_or(Ex_or),
.Ex_nor(Ex_nor),
.Not(Not));

initial
begin
A=0;
B=0;
#10;
end

always #25 A =~A;
always
begin 
#20 B =~B;
#500;
$finish;
end

endmodule
