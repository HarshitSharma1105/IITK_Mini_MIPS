`timescale 1ns/1ps
`include "IITK_Mini_MIPS.v"



module main;
    reg clk;
    reg reset;

    IITK_Mini_MIPS dut (
        .clk(clk),
        .reset(reset)
    );

    always #40 clk = ~clk;
    //always #1 $display("time=%d,alu=%d,branch=%d,jump=%d,mem=%d",$time,dut.alu,dut.branch,dut.jump,dut.mem);
    initial begin
        // Initialize clock and reset
        clk = 0;
        reset = 1;

        // Hold reset for a few clock cycles
        #20 reset = 0;

        // Run simulation for a while
        #300 $finish;
    end

    
    initial begin
        
        #5;

        
    dut.instruction_memory[0] = 32'b000000_00001_00010_00000_00000100000; // ADD R0, R2, R1 (R-type)
    dut.instruction_memory[1] = 32'b010100_00010_00010_00000_00000000010; // sla 2,1,2
    dut.instruction_memory[2] = 32'b011000_00000_00000_0000000000000010; // J 2 (J-type)
    dut.instruction_memory[3] = 32'b011101_00001_00010_0000000000000100; // LW R2, 4(R1) (I-type)

        

    end

    initial begin
        $monitor("Instruction=%b | Opcode=%b  | ALU=%b | MEM=%b | Branch=%b | Jump=%b | R = %b| I= %b | J=%b",
                   dut.instruction, dut.instruction[31:26],dut.alu, dut.mem, dut.branch, dut.jump,dut.R,dut.I,dut.J);
    end

endmodule