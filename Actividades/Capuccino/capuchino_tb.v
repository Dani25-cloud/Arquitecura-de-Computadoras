
`timescale 1ns/1ns
//1.-declarar modulo 
module capuchino_tb;
//2,- wires
wire [7:0]bebida_tb;
reg [7:0]lala_tb;
reg[7:0] planchuela_tb;
//3.- cuerpo del modulo
capuchino DUV(
	.lala(lala_tb),
	.planchuela(planchuela_tb),
	.bebida(bebida_tb)
);

initial
begin 
	lala_tb=8'd17;	
	planchuela_tb= 8'd165;	
	#100;
	lala_tb=8'd17;	
	planchuela_tb= 8'd99;	
	#100;	

end
endmodule
