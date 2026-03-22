//1.- Creacion del modulo i/o
`timescale 1ns/1ns

module Alu_tb;
//2.- Wires y Registros 

    reg [15:0] a, b;
    reg [3:0] sel;
    wire [15:0] res;
    wire ZeroFlag;

//3.-Cuerpo del modulo

    Alu DUV(
        .A(a),
        .B(b),
        .Op(sel),
        .Res(res),
        .ZF(ZeroFlag)
    );

    initial begin
        // Suma
        a = 16'd10; b = 16'd5; sel = 4'b0000; #100;
        a = 16'd20; b = 16'd30; sel = 4'b0000; #100;
        a = 16'd100; b = 16'd200; sel = 4'b0000; #100;

        // Resta
        a = 16'd50; b = 16'd20; sel = 4'b0001; #100;
        a = 16'd10; b = 16'd10; sel = 4'b0001; #100;
        a = 16'd5;  b = 16'd10; sel = 4'b0001; #100;

        // Multiplicación
        a = 16'd3; b = 16'd4; sel = 4'b0010; #100;
        a = 16'd10; b = 16'd10; sel = 4'b0010; #100;
        a = 16'd7; b = 16'd0; sel = 4'b0010; #100;

        // División
        a = 16'd20; b = 16'd5; sel = 4'b0011; #100;
        a = 16'd100; b = 16'd10; sel = 4'b0011; #100;
        a = 16'd7; b = 16'd2; sel = 4'b0011; #100;

        // AND
        a = 16'b1010; b = 16'b1100; sel = 4'b0100; #100;
        a = 16'd15; b = 16'd7; sel = 4'b0100; #100;
        a = 16'd0; b = 16'd255; sel = 4'b0100; #100;

        // OR
        a = 16'd1; b = 16'd2; sel = 4'b0101; #100;
        a = 16'd8; b = 16'd4; sel = 4'b0101; #100;
        a = 16'd0; b = 16'd0; sel = 4'b0101; #100;

        // XOR
        a = 16'd5; b = 16'd3; sel = 4'b0110; #100;
        a = 16'd7; b = 16'd7; sel = 4'b0110; #100;
        a = 16'd255; b = 16'd128; sel = 4'b0110; #100;

        // Corrimiento a la izquierda
        a = 16'd2; b = 16'd0; sel = 4'b0111; #100;
        a = 16'd4; b = 16'd0; sel = 4'b0111; #100;
        a = 16'd8; b = 16'd0; sel = 4'b0111; #100;

        $stop;
    end
endmodule
