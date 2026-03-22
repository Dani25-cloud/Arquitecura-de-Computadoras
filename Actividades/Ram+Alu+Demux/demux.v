//1.-Definicion del modulo i/o
module demux(
	input [31:0] data_in,
    	input sel,    
//2.- Declaracion de registros o wires
    	output reg [31:0] salida0,
    	output reg [31:0] salida1
);
//3.-Cuerpo del modulo

always @* 
	begin
        	if (sel)
			begin
			salida0 = data_in;
			end
		else 
			begin
			salida1 = data_in;
			end
	end

endmodule


