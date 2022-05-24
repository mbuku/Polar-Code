// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\Min.v
// Created: 2022-01-15 05:10:41
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Min
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/configure/order/Min/Min
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Min
          (in0,
           in1,
           out0);


  input   [7:0] in0;  // ufix8
  input   [7:0] in1;  // ufix8
  output  [7:0] out0;  // uint8


  wire [7:0] Min_muxout [0:1];  // ufix8 [2]
  wire [7:0] Min_stage1_val;  // ufix8


  assign Min_muxout[0] = in0;
  assign Min_muxout[1] = in1;

  // ---- Tree min implementation ----
  // ---- Tree min stage 1 ----
  assign Min_stage1_val = (Min_muxout[0] <= Min_muxout[1] ? Min_muxout[0] :
              Min_muxout[1]);



  assign out0 = Min_stage1_val;



endmodule  // Min
