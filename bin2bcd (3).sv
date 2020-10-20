module bin2bcd(
  input 	[3:0] bin,		// can be from 0 to 15
  output	[3:0] upper,	// upper digit as BCD
  output	[3:0] lower		// lower digit as BCD
);

  /////////////////////////////////////////
  // Define any needed internal signals //
  ///////////////////////////////////////
  logic g10;  //to track if bin is greater than 10     

  ////////////////////////////////////////////////
  // Implement bin2bcd producing lower & upper //
  // with a few verilog data flow statements  //
  /////////////////////////////////////////////

  assign g10 = (bin>4'b1001)?1:0; //if bin is greater than 10 assign 1 else 0
  assign lower = (g10==0)?bin:bin+4'b0110;
  assign upper = (g10==1)?4'b0001:4'b0000;
  
endmodule
  
  