module control_unit(
    input clk,
    input [31:0] instruction,
    input [31:0] PC,
    output reg  alu,
    output reg  branch,
    output reg  float,
    output reg  jump,
    output reg mem
);


    wire [2:0] first, second;  
    assign first  = instruction[31:29];
    assign second = instruction[28:26];


    wire a,b;
    assign a=(first==3'b011);
    assign b=(second>=3'b101);

    reg cc;


    ALU Alu(
     .clk(clk),
     .alu(alu),
     .instruction(instruction)
    );

  Branching branching(
    .branch(branch),
    .instruction(instruction),
    .PC(PC)
  );

  FPU fpu(
    .float(float),
    .instruction(instruction),
    .cc(cc)
  );

  Memory memory(
    .mem(mem),
    .instruction(instruction)
  );

  Jump jum(
    .jump(jump),
    .instruction(instruction),
    .PC(PC)
  );


  always @(*) begin
    alu<=0;
    float<=0;
    branch<=0;
    mem<=0;
    jump<=0;

    alu<=(first<3'b011);
    branch<=first[2]&~first[1];
    float<=first[2]&first[1];
    jump<=a&~b;
    mem<=a&b;
  
  end


endmodule