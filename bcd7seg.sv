module bcd7seg(
  input 	[3:0] num,		// BCD number to display
  output	[6:0] seg		// seg[0]=A, seg[1]=B, ...
);

  ////////////////////////////////////////
  // Instantiate the 7 segment drivers //
  //////////////////////////////////////
  //instantiates each decoder and update seg[0] to seg[6]
  segAdec A(num, seg[0]);
  segBdec B(num, seg[1]);
  segCdec C(num, seg[2]);
  segDdec D(num, seg[3]);
  segEdec E(num, seg[4]);
  segFdec F(num, seg[5]);
  segGdec G(num, seg[6]);


endmodule  