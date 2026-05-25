`timescale 1ns/1ns

module TB_DPTR;

    reg clk;
    reg [31:0] instruction;

    initial clk = 1'b0;
    always #5 clk = ~clk;    
    
    DPTR dut (
        .clk  (clk),
        .instruction(instruction)
    );
    integer i;

    initial begin
	for (i = 0; i < 32; i = i + 1)
            dut.BR.registers[i] = i * 10;

        $display("Tiempo | Instruccion  | ALU Result");
        $display("------------------------------------");

        // ADD $3 = $1 + $2
        instruction = 32'h00221820; @(posedge clk); #1;

        // ADD $6 = $4 + $5
        instruction = 32'h00853020; @(posedge clk); #1;

        // SUB $9 = $7 - $8
        instruction = 32'h00E84822; @(posedge clk); #1;

        // SUB $12 = $10 - $11
        instruction = 32'h014B6022; @(posedge clk); #1;

        // AND $15 = $13 & $14
        instruction = 32'h01AE7824; @(posedge clk); #1;

        // AND $18 = $16 & $17
        instruction = 32'h02119024; @(posedge clk); #1;

        // OR $21 = $19 | $20
        instruction = 32'h0274A825; @(posedge clk); #1;

        // OR $24 = $22 | $23
        instruction = 32'h02D7C025; @(posedge clk); #1;

        // SLT $27 = $25 < $26
        instruction = 32'h033AD82A; @(posedge clk); #1;

        // SLT $30 = $28 < $29
        instruction = 32'h039DF02A; @(posedge clk); #1;

        $stop;
    end

    // Monitor automatico
    always @(posedge clk)
        $display("%5dns | 0x%08h  | %0d",
            $time, instruction, $signed(dut.alu_result));

endmodule
