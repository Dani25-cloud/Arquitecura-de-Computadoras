//1.-Definicion del modulo i/o
`timescale 1ns/1ns

module alu (
	input [31:0] A,
	input [31:0] B,
	input [2:0] aluOp,
	//2.- Wires y Registros     	
	output reg [31:0] Res
);

//3.-Cuerpo del modulo
always @(*) begin
    case (aluOp)
        3'b000: Res = A + B;       
        3'b001: Res  = A - B;       
        3'b010: Res  = A & B;       
	3'b011: Res  = A | B;  
	3'b100: Res = A < B ? 1 : 0;          
        3'b101: Res  = A << 1;          
        default: Res  = 32'b0;              
    endcase
end

endmodule
