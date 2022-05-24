

`timescale 1 ns / 1 ns

module Stage_9_block
          (clk,
           reset,
           enb,
           dataIn,
           validIn,
           dataOut,
           validOut);


  input   clk;
  input   reset;
  input   enb;
  input   dataIn;  // ufix1
  input   validIn;
  output  dataOut;  // ufix1
  output  validOut;


  wire Stage_9_out1;  // ufix1
  wire Stage_9_out2;


  Stage_9 u_Stage_9 (.clk(clk),
                     .reset(reset),
                     .enb(enb),
                     .dataIn(dataIn),  // ufix1
                     .validIn(validIn),
                     .dataOut(Stage_9_out1),  // ufix1
                     .validOut(Stage_9_out2)
                     );

  assign dataOut = Stage_9_out1;

  assign validOut = Stage_9_out2;

endmodule  // Stage_9_block

