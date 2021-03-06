// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\Detect_Increase_block4.v
// Created: 2022-01-15 05:10:41
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Detect_Increase_block4
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/encode/Stage 5/Detect Increase
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Detect_Increase_block4
          (clk,
           reset,
           enb,
           U,
           Y);


  input   clk;
  input   reset;
  input   enb;
  input   U;
  output  Y;


  reg  U_k_1;
  wire FixPt_Relational_Operator_relop1;

  // Edge
  // 
  // U(k)


  // 
  // Store in Global RAM
  always @(posedge clk or posedge reset)
    begin : Delay_Input1_process
      if (reset == 1'b1) begin
        U_k_1 <= 1'b0;
      end
      else begin
        if (enb) begin
          U_k_1 <= U;
        end
      end
    end



  assign FixPt_Relational_Operator_relop1 = U > U_k_1;



  assign Y = FixPt_Relational_Operator_relop1;

endmodule  // Detect_Increase_block4

