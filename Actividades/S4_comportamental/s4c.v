`timescale 1ns/1ns
//declarar modulo
module s4c (
	input [31:0]A,
	input [31:0]B,
	output [31:0]C
);
// registros y cables 
// cuerpo del modulo

assign C= A+B;
endmodule 