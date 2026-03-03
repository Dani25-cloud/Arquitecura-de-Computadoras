`timescale 1ns/1ns
//1.- Declarar el modulo
module s4c_tb();
//2.-wires y registros
reg[3:0]A_tb;
reg[3:0]B_tb;
wire[3:0]C_tb;
//3.- cuerpo del modulo

s4bits_instanciado DUtacos(
	.A(A_tb),
	.B(B_tb),
	.C(C_tb)
);
//initial bloque secuencial
initial
begin
	A_tb = 4'd5;
	B_tb = 4'd9;
	#100;
	A_tb = 4'd4;
	B_tb = -4'd4;
	#100;
	A_tb = 4'd6;
	B_tb = 4'd2;
	#100;
	A_tb = 4'd10;
	B_tb = 4'd13;
	#100;
	A_tb = 4'd15;
	B_tb = 4'd4;
	#100;
	$stop;
end

endmodule 
