//1.- Definir modulo I/O
module MemoryDatos (
	input [31:0] Address,
	input [31:0] WriteData,
	input We, //Escribir
	input Re, //Leer
	output reg [31:0] ReadData
);

reg [31:0]sram[0:127];

initial //Inicializar la mem/reg bidimencional
begin
//$readmeab("data.txt",sram);
	sram[0]=32'd100;
	sram[1]=32'd200;
	sram[2]=32'd300;
	sram[3]=32'd400;
	sram[4]=32'd500;
	sram[5]=32'd600;
	sram[6]=32'd700;
end

always @*
begin 
	if(We)
	begin
	sram[Address]=WriteData;	
	end
	else if(Re)
	begin
 	ReadData=sram[Address];
	end
	//Con cases: 
	/*
	case({We,Re})
	begin
	 2'b01: sram[Address]=WriteData;
	 2'b10: ReadData=sram[Address];
	endcase
	*/
end

endmodule
