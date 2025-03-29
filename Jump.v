module Jump (input jump,input[31:0] instruction,input [31:0] PC);



always @(posedge jump) begin
   
   $display("Jump");
   
end

endmodule