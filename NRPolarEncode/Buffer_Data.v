`timescale 1 ns / 1 ns

module Buffer_Data
          (clk,
           reset,
           enb,
           dataIn,
           validIn,
           dataOut,
           ctrlOut_start,
           ctrlOut_end,
           ctrlOut_valid,
           frameEnd);


  input   clk;
  input   reset;
  input   enb;
  input   dataIn;  // ufix1
  input   validIn;
  output  dataOut;  // ufix1
  output  ctrlOut_start;
  output  ctrlOut_end;
  output  ctrlOut_valid;
  output  frameEnd;


  wire Constant1_out1;  // ufix1
  wire Multiport_Switch1_out1;  // ufix1
  reg  Delay8_out1;  // ufix1
  wire Detect_Increase2_out1;
  reg  start;
  wire end_rsvd;
  reg  valid;
  wire Sample_Control_Bus_Creator_out1_start;
  wire Sample_Control_Bus_Creator_out1_end;
  wire Sample_Control_Bus_Creator_out1_valid;


  assign Constant1_out1 = 1'b0;



  assign Multiport_Switch1_out1 = (validIn == 1'b0 ? Constant1_out1 :
              dataIn);



  always @(posedge clk or posedge reset)
    begin : Delay8_process
      if (reset == 1'b1) begin
        Delay8_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          Delay8_out1 <= Multiport_Switch1_out1;
        end
      end
    end



  assign dataOut = Delay8_out1;

  Detect_Increase2_block u_Detect_Increase2 (.clk(clk),
                                             .reset(reset),
                                             .enb(enb),
                                             .U(validIn),
                                             .Y(Detect_Increase2_out1)
                                             );

  always @(posedge clk or posedge reset)
    begin : Delay7_process
      if (reset == 1'b1) begin
        start <= 1'b0;
      end
      else begin
        if (enb) begin
          start <= Detect_Increase2_out1;
        end
      end
    end



  Detect_Decrease u_Detect_Decrease (.clk(clk),
                                     .reset(reset),
                                     .enb(enb),
                                     .U(validIn),
                                     .Y(end_rsvd)
                                     );

  always @(posedge clk or posedge reset)
    begin : Delay10_process
      if (reset == 1'b1) begin
        valid <= 1'b0;
      end
      else begin
        if (enb) begin
          valid <= validIn;
        end
      end
    end



  Sample_Control_Bus_Creator u_Sample_Control_Bus_Creator (.In1(start),
                                                           .In2(end_rsvd),
                                                           .In3(valid),
                                                           .Out1_start(Sample_Control_Bus_Creator_out1_start),
                                                           .Out1_end(Sample_Control_Bus_Creator_out1_end),
                                                           .Out1_valid(Sample_Control_Bus_Creator_out1_valid)
                                                           );

  assign ctrlOut_start = Sample_Control_Bus_Creator_out1_start;

  assign ctrlOut_end = Sample_Control_Bus_Creator_out1_end;

  assign ctrlOut_valid = Sample_Control_Bus_Creator_out1_valid;

  assign frameEnd = end_rsvd;

endmodule  // framing

