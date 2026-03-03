`timescale 1ns/1ns
//1.-declaracion del modulo 
module S32c_tb();

//2/- wires y registros
reg  [31:0] A_tb;
reg  [31:0] B_tb;
reg  AE_tb;

wire [31:0] C_tb;
wire AS_tb;

s32c DUV(
    .A(A_tb),
    .B(B_tb),
    .AE(AE_tb),
    .C(C_tb),
    .AS(AS_tb)
);

initial 
begin

    //10 PRUEBAS SIN SIGNO
    A_tb=32'd0;   	B_tb=32'd0;   	AE_tb=0; #100;
    A_tb=32'd5;   	B_tb=32'd10;  	AE_tb=0; #100;
    A_tb=32'd100; 	B_tb=32'd200; 	AE_tb=0; #100;
    A_tb=32'd1000;	B_tb=32'd3000;	AE_tb=0; #100;
    A_tb=32'd15;  	B_tb=32'd1;   	AE_tb=0; #100;
    A_tb=32'd255; 	B_tb=32'd1;   	AE_tb=0; #100;
    A_tb=32'd50000;	B_tb=32'd40000;	AE_tb=0; #100;
    A_tb=32'd123456;	B_tb=32'd654321;AE_tb=0; #100;
    A_tb=32'd4000000;	B_tb=32'd1;	AE_tb=0; #100;
    A_tb=32'd42949;	B_tb=32'd1;	AE_tb=0; #100;

    // 10 PRUEBAS COMPLEMENTO A 2
    A_tb=-32'sd1;   	B_tb=-32'sd1;   AE_tb=0; #100;
    A_tb=-32'sd5;   	B_tb=32'sd3;    AE_tb=0; #100;
    A_tb=-32'sd100; 	B_tb=32'sd50;   AE_tb=0; #100;
    A_tb=32'sd200;  	B_tb=-32'sd300; AE_tb=0; #100;
    A_tb=-32'sd1000;	B_tb=-32'sd2000;AE_tb=0; #100;
    A_tb=32'sd500;  	B_tb=-32'sd500; AE_tb=0; #100;
    A_tb=-32'sd2147483648; B_tb=32'sd1; AE_tb=0; #100;
    A_tb=32'sd214747;  	B_tb=32'sd1; 	AE_tb=0; #100;
    A_tb=-32'sd10;  	B_tb=-32'sd20;  AE_tb=1; #100;
    A_tb=32'sd100;  	B_tb=32'sd100;  AE_tb=1; #100;

    $stop;

end
endmodule
