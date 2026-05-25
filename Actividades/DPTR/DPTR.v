module DPTR (
    input        clk,  
    input [31:0] instruction
);
  
    wire [5:0] op    = instruction[31:26];
    wire [4:0] rs    = instruction[25:21];
    wire [4:0] rt    = instruction[20:16];
    wire [4:0] rd    = instruction[15:11];
    wire [4:0] shamt = instruction[10:6];
    wire [5:0] funct = instruction[5:0];

    wire  MemToReg, RegWrite, MemToWrite,MemToread;
    wire [2:0]  ALUOp;

    wire [3:0]  alu_ctrl;
    wire [31:0] read_data1, read_data2;
    wire [31:0] alu_result;
    wire ZeroFlag;
    wire [31:0] mem_read_data;
    wire [31:0] write_back_data;

    UnidadDeControl UC (
        .opcode    (op),
        .MemToReg  (MemToReg),
        .RegWrite  (RegWrite),
        .MemToWrite(MemToWrite),
        .ALUOp     (ALUOp)
    );

    ALUControl ALUCTRL (
        .funct   (funct),
        .ALUOp   (ALUOp),
        .alu_ctrl(alu_ctrl)
    );

    BancoReg BR (
        .clk        (clk),
        .RegWrite   (RegWrite),
        .read_reg1  (rs),
        .read_reg2  (rt),
        .write_reg  (rd),
        .write_data (write_back_data),
        .read_data1 (read_data1),
        .read_data2 (read_data2)
    );

    alu ALU (
        .A      (read_data1),
        .B      (read_data2),
        .alu_op (alu_ctrl),
        .result (alu_result)
    );

    Mem DATA_MEM (
        .clk        (clk),
        .MemWrite   (MemToWrite),
        .address    (alu_result),
        .write_data (read_data2),
        .read_data  (mem_read_data)
    );

    mux MUX_MEMTOREG (
        .entrada0   (alu_result),      
        .entrada1   (mem_read_data), 
        .sel        (MemToReg),     
        .salida     (write_back_data)  
    );

endmodule
