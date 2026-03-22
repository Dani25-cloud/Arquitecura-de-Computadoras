//1.-Definicion del modulo i/o
module ram(
	input [4:0] dir,          
    	input [31:0] data_in,
    	input EN,                 
    	input clk,
    	output [31:0] data_out
);
//2.- Declaracion de registros o wires
reg [31:0] mem [0:31]; 
//3.-Cuerpo del modulo
always @(posedge clk) 
begin
        if (EN)
            mem[dir] <= data_in;
end

assign data_out = mem[dir];

endmodule
