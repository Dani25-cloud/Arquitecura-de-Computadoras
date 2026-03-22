//1.- Creacion del modulo i/o
`timescale 1ns/1ns

module Alu(
	input [15:0] A,
	input [15:0] B,
	input [3:0] Op,
    	output reg [15:0] Res,
    	output reg ZF
);

//2.- Wires y Registros 

//3.-Cuerpo del modulo
always @(*) begin
    case (Op)
        4'b0000: Res = A + B;       
        4'b0001: Res  = A - B;       
        4'b0010: Res  = A * B;       
        4'b0011: Res  = A / B;       
        4'b0100: Res  = A & B;       
	4'b0101: Res  = A | B;       
        4'b0110: Res  = A ^ B;       
        4'b0111: Res  = A << 1;          
        default: Res  = 16'b0;              
    endcase

    if (Res == 16'b0)
        ZF = 1;
    else
        ZF = 0;
end

endmodule


