//1.-Definicion del modulo i/o
module taco (
    input clk,
    input EN,
    input [4:0] dir,
    input [31:0] data_in,
    input [2:0] alu_op,
    input sel,
    output [31:0] data_out,
    output [31:0] alu_result
);
//2.- Declaracion de registros o wires
    wire [31:0] ram_out;
    wire [31:0] d0, d1;

//3.-Cuerpo del modulo
    ram RAM0 (
	.dir(dir), 
	.data_in(data_in), 
	.EN(EN), 
	.clk(clk), 
	.data_out(ram_out)
);

    demux DEMUX0 (
	.data_in(ram_out), 
	.sel(sel), 
	.salida0(d0), 
	.salida1(d1)
);
    alu ALU0 (
	.A(d0), 
	.B(d1), 
	.aluOp(alu_op), 
	.Res(alu_result)
);

    assign data_out = ram_out;

endmodule




