`timescale 1ns/1ns
//1.-Definicion del modulo i/o
module taco_tb ();
//2.- Declaracion de registros o wires
    reg clk, EN, sel;
    reg [4:0] dir;
    reg [31:0] data_in;
    reg [2:0] alu_op;
    wire [31:0] data_out, alu_result;
//3.-Cuerpo del modulo
    taco DUV (
	.clk(clk), 
	.EN(EN), 
	.dir(dir), 
	.data_in(data_in),
        .alu_op(alu_op), 
	.sel(sel), 
	.data_out(data_out), 
	.alu_result(alu_result)
);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
	
    initial begin
    	EN = 0; sel = 0; alu_op = 3'b000;
    	dir = 5'd0; data_in = 32'd0;
    end

    initial begin
//Escritura en RAM
        EN = 1; dir = 5'd1; data_in = 32'd10; #10;
        EN = 1; dir = 5'd2; data_in = 32'd20; #10;
        EN = 0;
//Lectura de RAM
        dir = 5'd1; #10;
        dir = 5'd2; #10;
//Operaciones ALU distintas
        sel = 0; alu_op = 3'b010; #10;   // SUMA
        sel = 1; alu_op = 3'b110; #10;  // RESTA
        alu_op = 3'b000; #10;       	 // AND
        alu_op = 3'b001; #10;           // OR
        alu_op = 3'b111; #10;       // SLT
        alu_op = 3'b100; #10;		// NOR
//Cambio de selección del DEMUX
        sel = 0; #10;
        sel = 1; #10;

        $stop;
    end
endmodule



