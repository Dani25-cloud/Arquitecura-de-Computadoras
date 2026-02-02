//1.- Creacion de modulo y definir I/0
module actividad (
    input A,
    input B,
    output C
);
//2.- definicion de componentes internos (reg, cables-wires)

//3.-cuerpo del modulo asignaciones, instancias, bloques secuenciales

assign C = A & B;

endmodule 