// -------------------------------------------------------------
// 
// File Name: hdlsrc\NRPolarEncodeHDL\alpha16.v
// Created: 2022-01-15 05:10:41
// 
// Generated by MATLAB 9.8 and HDL Coder 3.16
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: alpha16
// Source Path: NRPolarEncodeHDL/HDL Algorithm/NR Polar Encoder/configure/shortPunc/K//E<=7//16
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module alpha16
          (clk,
           reset,
           enb,
           K,
           E,
           sel);


  input   clk;
  input   reset;
  input   enb;
  input   [9:0] K;  // ufix10
  input   [9:0] E;  // ufix10
  output  sel;


  wire [19:0] Multiply_cast;  // ufix20_En5
  wire [13:0] Multiply_out1;  // ufix14
  reg [13:0] Delay_out1;  // ufix14
  wire [19:0] Multiply1_mul_temp;  // ufix20_En7
  wire [19:0] Multiply1_1;  // ufix20
  wire [12:0] Multiply1_out1;  // ufix13
  reg [12:0] Delay1_out1;  // ufix13
  wire [13:0] Equal_1_1;  // ufix14
  wire Equal_relop1;
  reg  [0:1] Delay2_reg;  // ufix1 [2]
  wire [0:1] Delay2_reg_next;  // ufix1 [2]
  wire Delay2_out1;


  assign Multiply_cast = {1'b0, {K, 9'b000000000}};
  assign Multiply_out1 = Multiply_cast[18:5];



  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 14'b00000000000000;
      end
      else begin
        if (enb) begin
          Delay_out1 <= Multiply_out1;
        end
      end
    end



  // CSD Encoding (896) : 1001'0000000; Cost (Adders) = 1
  assign Multiply1_1 = {3'b0, {E, 7'b0000000}};
  assign Multiply1_mul_temp = {E, 10'b0000000000} - Multiply1_1;
  assign Multiply1_out1 = Multiply1_mul_temp[19:7];



  always @(posedge clk or posedge reset)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_out1 <= 13'b0000000000000;
      end
      else begin
        if (enb) begin
          Delay1_out1 <= Multiply1_out1;
        end
      end
    end



  assign Equal_1_1 = {1'b0, Delay1_out1};
  assign Equal_relop1 = Delay_out1 <= Equal_1_1;



  always @(posedge clk or posedge reset)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_reg[0] <= 1'b0;
        Delay2_reg[1] <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay2_reg[0] <= Delay2_reg_next[0];
          Delay2_reg[1] <= Delay2_reg_next[1];
        end
      end
    end

  assign Delay2_out1 = Delay2_reg[1];
  assign Delay2_reg_next[0] = Equal_relop1;
  assign Delay2_reg_next[1] = Delay2_reg[0];



  assign sel = Delay2_out1;

endmodule  // alpha16
