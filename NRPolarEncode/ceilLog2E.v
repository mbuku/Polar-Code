// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\ceilLog2E.v
// Created: 2022-01-15 05:10:41
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: ceilLog2E
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/configure/order/ceilLog2E
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module ceilLog2E
          (E,
           nMax,
           cl2e);


  input   [16:0] E;  // ufix17
  input   [3:0] nMax;  // ufix4
  output  [3:0] cl2e;  // ufix4


  reg [3:0] cl2e_1;  // ufix4


  always @(E, nMax) begin
    if (E <= 17'b00000000000100000) begin
      //anything less than 5 will be set to 5 later
      cl2e_1 = 4'b0101;
    end
    else if (E <= 17'b00000000001000000) begin
      cl2e_1 = 4'b0110;
    end
    else if (E <= 17'b00000000010000000) begin
      cl2e_1 = 4'b0111;
    end
    else if (E <= 17'b00000000100000000) begin
      cl2e_1 = 4'b1000;
    end
    else if ((E <= 17'b00000001000000000) || (nMax == 4'b1001)) begin
      cl2e_1 = 4'b1001;
    end
    else begin
      //anything higher than 10 will be set to 10 later
      cl2e_1 = 4'b1010;
    end
  end



  assign cl2e = cl2e_1;

endmodule  // ceilLog2E
