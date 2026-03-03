`timescale 1ns/1ns
// 1.-declaracion del modulo
module HA (
	input a,
	input b,
	output s,
	output as
);

// 2.- Declaracion de cables y registros

//3.-cuerpo del modulo assign y bloques secuenciales 

assign s = a ^ b;
assign as= a & b;

endmodule