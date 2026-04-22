module BR (
	input [4:0]AR1, 
	input [4:0]AR2,
	input [4:0]AW,
	input RegWrite, //ENABLE TO WRITE
	output [31:0]DR1,
	output [31:0]DR2
);

reg [31:0] carnitas [0:31];
//segundo pan
initial // inicializar la mem/reg bidimensional
begin
//$readmeamb("condimentos".txt);
 carnita[0]=32'd100;
 carnita[1]=32'd200;
 carnita[2]=32'd300;
 carnita[3]=32'd400;
 carnita[4]=32'd500;
 carnita[5]=32'd600;
 carnita[6]=32'd700;
end
always @*
 begin
 DR1=carnita(AR1);
 DR2=carnita(AR2);
 if(RegWrite)
	begin
	//escribir
	carnita(AW)=DW;
	end
 end
endmodule
