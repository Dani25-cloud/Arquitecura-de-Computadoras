`timescale 1ns/1ns
//1.-creacion del modulo i/o
module expresso(
	input [3:0]A,
	input [3:0]B,
	output [3:0]C

);
//2.-definicion de wires o registros

//3.-cuerpo del modulo
assign C=A+B;


endmodule
