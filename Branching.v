module Branching(input branch,input[31:0] instruction,input [31:0] PC);

always @(posedge branch) begin
 $display("Branch");
 

end

endmodule