`timescale 1ns/1ns
//1.- declarar el modulo i/o
module s32c (
	input [31:0]A,
	input [31:0]B,
	input AE,
	output [31:0]C,
	output AS
);

//2.- Wires y registros

//3.- cuerpo del modulo

assign {AS, C} = A + B + AE;

endmodule 
