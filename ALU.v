module ALU(input clk,input alu,input [31:0] instruction);

wire [4:0] rs=instruction[25:21];
wire [4:0]rt=instruction[20:16];
wire [4:0] rd=instruction[15:11];
wire [10:0] shift=instruction[10:0];
wire [15:0] immediate=instruction[15:0];

always @(posedge clk) begin

   
    
    if(alu) begin
    $display("alu = %d,instruction = %b,rs = %d ,rt = %d, rd= %d,shift=%d,immediate=%d",alu,instruction,rs,rt,rd,shift,immediate);
    end
end


endmodule