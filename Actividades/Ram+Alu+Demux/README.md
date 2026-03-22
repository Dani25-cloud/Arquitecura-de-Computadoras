Crear una memoria RAM y conectarlo a un Demux que le pasara los datos que se operaran en la ALU, este modulo que tendra dentro estos tres modulos se llamara "TACO".

Arquitectura del módulo

El módulo debe contener internamente:
1. Memoria RAM

Características mínimas:
32 posiciones de memoria
ancho de palabra de 32 bits
lectura Asíncrona 
escritura controlada por señal EN


2. Demultiplexor

Debe permitir seleccionar el destino de salida de los datos provenientes de memoria a la ALU.

Ejemplo:
selector de 1 bit 
al menos dos salidas posibles


3. ALU

Debe ser la del libro de Org. De Computadoras, de Patterson y Henessy:
AND
OR
suma
resta
STL
NOR
Controlada por señal de operación.

Entradas mínimas del módulo TACO

addr
data_in
EN
alu_op
sel
Salidas mínimas
data_out
alu_result
