// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\addrTranslate.v
// Created: 2022-01-15 05:10:42
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: addrTranslate
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/frameMap/addrTranslate
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module addrTranslate
          (clk,
           reset,
           enb,
           addrIn,
           addrOut);


  input   clk;
  input   reset;
  input   enb;
  input   [9:0] addrIn;  // ufix10
  output  [9:0] addrOut;  // ufix10


  wire [9:0] pass_out1;  // ufix10


  pass_block u_pass (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .addrIn(addrIn),  // ufix10
                     .addrOut(pass_out1)  // ufix10
                     );

  assign addrOut = pass_out1;

endmodule  // addrTranslate
