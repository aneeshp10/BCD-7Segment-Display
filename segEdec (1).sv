module segEdec
(
	input [3:0] D,
	output segE
);

 //////////////////////////////////////////
  // Declare any needed internal signals //
  ////////////////////////////////////////
  reg [0:15] truth_table = 16'b0101_1101_01xx_xxxx;
  
  //////////////////////////////////////////////////////
  // Write STRUCTURAL verilog to implement segment B //
  ////////////////////////////////////////////////////
  assign segE = truth_table[D];

  
endmodule