module Memory(input mem,input[31:0] instruction);
  reg [31:0] GPR [0:31];  
  reg [31:0] FPR [0:31];  
  reg [31:0] stack_memory [0:255]; 



  initial begin
	GPR[0] <= 0;
	GPR[1] <= 0;
	GPR[2] <= 0;
	GPR[3] <= 0;
	GPR[4] <= 0;
	GPR[5] <= 0;
	GPR[6] <= 0;
	GPR[7] <= 0;
	GPR[8] <= 0;
	GPR[9] <= 0;
	GPR[10] <= 0;
	GPR[11] <= 0;
	GPR[12] <= 0;
	GPR[13] <= 0;
	GPR[14] <= 0;
	GPR[15] <= 0;
	GPR[16] <= 0;
	GPR[17] <= 0;
	GPR[18] <= 0;
	GPR[19] <= 0;
	GPR[20] <= 0;
	GPR[21] <= 0;
	GPR[22] <= 0;
	GPR[23] <= 0;
	GPR[24] <= 0;
	GPR[25] <= 0;
	GPR[26] <= 0;
	GPR[27] <= 0;
	GPR[28] <= 0;
	GPR[29] <= 0;
	GPR[30] <= 0;
	GPR[31] <= 0;



    FPR[0] <= 0;
	FPR[1] <= 0;
	FPR[2] <= 0;
	FPR[3] <= 0;
	FPR[4] <= 0;
	FPR[5] <= 0;
	FPR[6] <= 0;
	FPR[7] <= 0;
	FPR[8] <= 0;
	FPR[9] <= 0;
	FPR[10] <= 0;
	FPR[11] <= 0;
	FPR[12] <= 0;
	FPR[13] <= 0;
	FPR[14] <= 0;
	FPR[15] <= 0;
	FPR[16] <= 0;
	FPR[17] <= 0;
	FPR[18] <= 0;
	FPR[19] <= 0;
	FPR[20] <= 0;
	FPR[21] <= 0;
	FPR[22] <= 0;
	FPR[23] <= 0;
	FPR[24] <= 0;
	FPR[25] <= 0;
	FPR[26] <= 0;
	FPR[27] <= 0;
	FPR[28] <= 0;
	FPR[29] <= 0;
	FPR[30] <= 0;
	FPR[31] <= 0;
  end

always @(posedge mem) begin
    
    $display("Memory");



end
endmodule