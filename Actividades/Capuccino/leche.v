`timescale 1ns/1ns
//1.-creacion del modulo i/o
module leche (
	input [3:0]H,
	input [3:0]I,
	output [3:0]J
);
//2.-definicion de wires o registros

//3.-cuerpo del modulo
assign J[0]= H[0]&I[0];
assign J[1]= H[1]&I[1];
assign J[2]= H[2]&I[2];
assign J[3]= H[3]&I[3];

endmodule
