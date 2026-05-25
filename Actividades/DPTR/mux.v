module mux (
    input  [31:0] entrada0,
    input  [31:0] entrada1,
    input  sel,
    output [31:0] salida
);
    assign salida = sel ? entrada1 : entrada0;
endmodule