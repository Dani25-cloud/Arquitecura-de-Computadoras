`timescale 1ns/1ns
//1.-Creacion del modulo i/o
module FA (
	input A,
	input B,
	input AE,
	output SUMA,
	output AS
);
//2.- Declaracion de componentes wires y registros
wire c1, c2, c3;
//3.- Cuerpo del modulo
HA taco (.a(A), .b(B), .s(c1), .as(c2));
HA torta (.a(c1), .b(AE), .s(SUMA), .as(c3));

assign AS= c2 | c3;

endmodule 