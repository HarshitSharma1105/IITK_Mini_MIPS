`include "control_unit.v"
`include "FPU.v"
`include "ALU.v"
`include "Branching.v"
`include "Jump.v"
`include "Memory.v"





module IITK_Mini_MIPS(input clk,input reset);
  
  reg [31:0] instruction_memory [0:3];   
  reg [31:0] PC;
  reg [31:0] instruction;
  

  wire alu,branch,float,jump,mem,R,I,J;

  initial begin
	  PC <= 0;
  end
  assign R=(~instruction[28]&alu);
  assign I=(instruction[28]&alu)| branch | mem;
  assign J=jump;
 

  

  control_unit CU (
      .clk(clk),
	    .instruction(instruction),
      .PC(PC),
      .alu(alu),
      .float(float),
      .branch(branch),
      .jump(jump),
      .mem(mem)
  );

  

always @(posedge clk) begin
    instruction <= instruction_memory[PC];
    $display("time = %d,instruction = %b,alu=%d,jump=%d,mem=%d,branch=%d",$time,instruction,alu,jump,mem,branch);

		PC<=PC+1;
end
  
  
endmodule