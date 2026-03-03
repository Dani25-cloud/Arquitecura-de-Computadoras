`timescale 1ns/1ns
//1.-creacion del modulo i/o
module capuchino (
	input [7:0]lala,
	input [7:0]planchuela,
	output [7:0]bebida
);
//2.-definicion de wires o registros
wire [3:0]espumar;
wire [3:0]extraer;
//3.-cuerpo del modulo

leche venti (
	.H(lala[3:0]),
	.I(lala[7:4]),
	.J(espumar)
);

expresso carga1(
	.A(planchuela[3:0]),
	.B(planchuela[7:4]),
	.C(extraer)
);

assign bebida = {espumar,extraer}; 

endmodule
