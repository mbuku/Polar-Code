`timescale 1 ns / 1 ns

module Polar_Decoder_tb;



  reg  clk;
  reg  reset;
  wire clk_enable;
  wire Out4_done;  
  wire rdEnb;
  wire Out4_done_enb;  
  reg [13:0] Out1_addr;  
  wire Out4_lastAddr;  
  wire resetn;
  reg  check6_done;  
  wire Out3_done;  
  wire Out3_done_enb;  
  wire Out3_lastAddr;  
  reg  check5_done;  
  wire Out2_valid_done;  
  wire Out2_valid_done_enb;  
  wire Out2_valid_lastAddr;  
  reg  check4_done;  
  wire Out2_end_done;  
  wire Out2_end_done_enb;  
  wire Out2_end_lastAddr;  
  reg  check3_done;  
  wire Out2_start_done;  
  wire Out2_start_done_enb;  
  wire Out2_start_lastAddr;  
  reg  check2_done;  
  wire Out1_done;  
  wire Out1_done_enb;  
  wire Out1_active;  
  reg [13:0] sampleIn_addr;  
  wire [13:0] E_addr_delay_1;  
  reg  tb_enb_delay;
  reg signed [31:0] fp_In4;  
  reg [13:0] rawData_In4;  
  reg signed [31:0] status_In4;  
  reg [13:0] holdData_In4;  
  reg [13:0] In4_offset;  
  wire [13:0] In4;  
  wire [13:0] K_addr_delay_1;  
  reg signed [31:0] fp_In3;  
  reg [9:0] rawData_In3;  
  reg signed [31:0] status_In3;  
  reg [9:0] holdData_In3;  
  reg [9:0] In3_offset;  
  wire [9:0] In3;  
  wire [13:0] ctrlIn_2_bus_addr_delay_1;  
  reg signed [31:0] fp_In2_valid;  
  reg  rawData_In2_valid;
  reg signed [31:0] status_In2_valid;  
  reg  holdData_In2_valid;
  reg  In2_valid_offset;
  wire In2_valid;
  wire [13:0] ctrlIn_1_bus_addr_delay_1;  
  reg signed [31:0] fp_In2_end;  
  reg  rawData_In2_end;
  reg signed [31:0] status_In2_end;  
  reg  holdData_In2_end;
  reg  In2_end_offset;
  wire In2_end;
  wire [13:0] ctrlIn_bus_addr_delay_1;  
  reg signed [31:0] fp_In2_start;  
  reg  rawData_In2_start;
  reg signed [31:0] status_In2_start;  
  reg  holdData_In2_start;
  reg  In2_start_offset;
  wire In2_start;
  wire sampleIn_active;  
  wire sampleIn_enb;  
  wire [13:0] sampleIn_addr_delay_1;  
  reg signed [31:0] fp_In1;  
  reg signed [5:0] rawData_In1;  
  reg signed [31:0] status_In1;  
  reg signed [5:0] holdData_In1;  
  reg signed [5:0] In1_offset;  
  wire signed [5:0] In1;  
  wire snkDone;
  wire snkDonen;
  wire tb_enb;
  wire ce_out;
  wire Out1;
  wire Out2_start;
  wire Out2_end;
  wire Out2_valid;
  wire Out3;
  wire Out4;
  wire Out1_enb;  
  wire Out1_lastAddr;  
  reg  check1_done;  
  wire [13:0] Out1_addr_delay_1;  
  reg signed [31:0] fp_Out1_expected;  
  reg  Out1_expected;
  reg signed [31:0] status_Out1_expected;  
  wire Out1_ref;
  reg  Out1_testFailure;  
  wire [13:0] Out2_start_addr_delay_1;  
  reg signed [31:0] fp_Out2_start_expected;  
  reg  Out2_start_expected;
  reg signed [31:0] status_Out2_start_expected;  
  wire Out2_start_ref;
  reg  Out2_start_testFailure;  
  wire [13:0] Out2_end_addr_delay_1;  
  reg signed [31:0] fp_Out2_end_expected;  
  reg  Out2_end_expected;
  reg signed [31:0] status_Out2_end_expected;  
  wire Out2_end_ref;
  reg  Out2_end_testFailure;  
  wire [13:0] Out2_valid_addr_delay_1;  
  reg signed [31:0] fp_Out2_valid_expected;  
  reg  Out2_valid_expected;
  reg signed [31:0] status_Out2_valid_expected;  
  wire Out2_valid_ref;
  reg  Out2_valid_testFailure;  
  wire [13:0] Out3_addr_delay_1; 
  reg signed [31:0] fp_Out3_expected;  
  reg  Out3_expected;
  reg signed [31:0] status_Out3_expected;  
  wire Out3_ref;
  reg  Out3_testFailure;  
  wire [13:0] Out4_addr_delay_1;  
  reg signed [31:0] fp_Out4_expected;  
  reg  Out4_expected;
  reg signed [31:0] status_Out4_expected;  
  wire Out4_ref;
  reg  Out4_testFailure;  
  wire testFailure;  


  assign Out4_done_enb = Out4_done & rdEnb;



  assign Out4_lastAddr = Out1_addr >= 14'b10101001111100;



  assign Out4_done = Out4_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_6
      if (reset) begin
        check6_done <= 0;
      end
      else begin
        if (Out4_done_enb) begin
          check6_done <= Out4_done;
        end
      end
    end

  assign Out3_done_enb = Out3_done & rdEnb;



  assign Out3_lastAddr = Out1_addr >= 14'b10101001111100;



  assign Out3_done = Out3_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_5
      if (reset) begin
        check5_done <= 0;
      end
      else begin
        if (Out3_done_enb) begin
          check5_done <= Out3_done;
        end
      end
    end

  assign Out2_valid_done_enb = Out2_valid_done & rdEnb;



  assign Out2_valid_lastAddr = Out1_addr >= 14'b10101001111100;



  assign Out2_valid_done = Out2_valid_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_4
      if (reset) begin
        check4_done <= 0;
      end
      else begin
        if (Out2_valid_done_enb) begin
          check4_done <= Out2_valid_done;
        end
      end
    end

  assign Out2_end_done_enb = Out2_end_done & rdEnb;



  assign Out2_end_lastAddr = Out1_addr >= 14'b10101001111100;



  assign Out2_end_done = Out2_end_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_3
      if (reset) begin
        check3_done <= 0;
      end
      else begin
        if (Out2_end_done_enb) begin
          check3_done <= Out2_end_done;
        end
      end
    end

  assign Out2_start_done_enb = Out2_start_done & rdEnb;



  assign Out2_start_lastAddr = Out1_addr >= 14'b10101001111100;



  assign Out2_start_done = Out2_start_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_2
      if (reset) begin
        check2_done <= 0;
      end
      else begin
        if (Out2_start_done_enb) begin
          check2_done <= Out2_start_done;
        end
      end
    end

  assign Out1_done_enb = Out1_done & rdEnb;



  assign Out1_active = Out1_addr != 14'b10101001111100;



  assign #1 E_addr_delay_1 = sampleIn_addr;

  // Data source for In4
  initial
    begin : In4_fileread
      fp_In4 = $fopen("In4.dat", "r");
      status_In4 = $rewind(fp_In4);
    end

  always @(E_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_In4 <= 14'bx;
      end
      else if (rdEnb == 1) begin
        status_In4 = $fscanf(fp_In4, "%h", rawData_In4);
      end
    end

  // holdData reg for E
  always @(posedge clk or posedge reset)
    begin : stimuli_E
      if (reset) begin
        holdData_In4 <= 14'bx;
      end
      else begin
        holdData_In4 <= rawData_In4;
      end
    end

  always @(rawData_In4 or rdEnb)
    begin : stimuli_E_1
      if (rdEnb == 1'b0) begin
        In4_offset <= holdData_In4;
      end
      else begin
        In4_offset <= rawData_In4;
      end
    end

  assign #2 In4 = In4_offset;

  assign #1 K_addr_delay_1 = sampleIn_addr;

  // Data source for In3
  initial
    begin : In3_fileread
      fp_In3 = $fopen("In3.dat", "r");
      status_In3 = $rewind(fp_In3);
    end

  always @(K_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_In3 <= 10'bx;
      end
      else if (rdEnb == 1) begin
        status_In3 = $fscanf(fp_In3, "%h", rawData_In3);
      end
    end

  // holdData reg for K
  always @(posedge clk or posedge reset)
    begin : stimuli_K
      if (reset) begin
        holdData_In3 <= 10'bx;
      end
      else begin
        holdData_In3 <= rawData_In3;
      end
    end

  always @(rawData_In3 or rdEnb)
    begin : stimuli_K_1
      if (rdEnb == 1'b0) begin
        In3_offset <= holdData_In3;
      end
      else begin
        In3_offset <= rawData_In3;
      end
    end

  assign #2 In3 = In3_offset;

  assign #1 ctrlIn_2_bus_addr_delay_1 = sampleIn_addr;

  // Data source for In2_valid
  initial
    begin : In2_valid_fileread
      fp_In2_valid = $fopen("In2_valid.dat", "r");
      status_In2_valid = $rewind(fp_In2_valid);
    end

  always @(ctrlIn_2_bus_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_In2_valid <= 1'bx;
      end
      else if (rdEnb == 1) begin
        status_In2_valid = $fscanf(fp_In2_valid, "%h", rawData_In2_valid);
      end
    end

  // holdData reg for ctrlIn_2_bus
  always @(posedge clk or posedge reset)
    begin : stimuli_ctrlIn_2_bus
      if (reset) begin
        holdData_In2_valid <= 1'bx;
      end
      else begin
        holdData_In2_valid <= rawData_In2_valid;
      end
    end

  always @(rawData_In2_valid or rdEnb)
    begin : stimuli_ctrlIn_2_bus_1
      if (rdEnb == 1'b0) begin
        In2_valid_offset <= holdData_In2_valid;
      end
      else begin
        In2_valid_offset <= rawData_In2_valid;
      end
    end

  assign #2 In2_valid = In2_valid_offset;

  assign #1 ctrlIn_1_bus_addr_delay_1 = sampleIn_addr;

  // Data source for In2_end
  initial
    begin : In2_end_fileread
      fp_In2_end = $fopen("In2_end.dat", "r");
      status_In2_end = $rewind(fp_In2_end);
    end

  always @(ctrlIn_1_bus_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_In2_end <= 1'bx;
      end
      else if (rdEnb == 1) begin
        status_In2_end = $fscanf(fp_In2_end, "%h", rawData_In2_end);
      end
    end

  // holdData reg for ctrlIn_1_bus
  always @(posedge clk or posedge reset)
    begin : stimuli_ctrlIn_1_bus
      if (reset) begin
        holdData_In2_end <= 1'bx;
      end
      else begin
        holdData_In2_end <= rawData_In2_end;
      end
    end

  always @(rawData_In2_end or rdEnb)
    begin : stimuli_ctrlIn_1_bus_1
      if (rdEnb == 1'b0) begin
        In2_end_offset <= holdData_In2_end;
      end
      else begin
        In2_end_offset <= rawData_In2_end;
      end
    end

  assign #2 In2_end = In2_end_offset;

  assign #1 ctrlIn_bus_addr_delay_1 = sampleIn_addr;

  // Data source for In2_start
  initial
    begin : In2_start_fileread
      fp_In2_start = $fopen("In2_start.dat", "r");
      status_In2_start = $rewind(fp_In2_start);
    end

  always @(ctrlIn_bus_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_In2_start <= 1'bx;
      end
      else if (rdEnb == 1) begin
        status_In2_start = $fscanf(fp_In2_start, "%h", rawData_In2_start);
      end
    end

  // holdData reg for ctrlIn_bus
  always @(posedge clk or posedge reset)
    begin : stimuli_ctrlIn_bus
      if (reset) begin
        holdData_In2_start <= 1'bx;
      end
      else begin
        holdData_In2_start <= rawData_In2_start;
      end
    end

  always @(rawData_In2_start or rdEnb)
    begin : stimuli_ctrlIn_bus_1
      if (rdEnb == 1'b0) begin
        In2_start_offset <= holdData_In2_start;
      end
      else begin
        In2_start_offset <= rawData_In2_start;
      end
    end

  assign #2 In2_start = In2_start_offset;

  assign sampleIn_active = sampleIn_addr != 14'b10101001111100;



  assign sampleIn_enb = sampleIn_active & (rdEnb & tb_enb_delay);



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 10876
  always @(posedge clk or posedge reset)
    begin : FromWorkspace3_process
      if (reset == 1'b1) begin
        sampleIn_addr <= 14'b00000000000000;
      end
      else begin
        if (sampleIn_enb) begin
          if (sampleIn_addr >= 14'b10101001111100) begin
            sampleIn_addr <= 14'b00000000000000;
          end
          else begin
            sampleIn_addr <= sampleIn_addr + 14'b00000000000001;
          end
        end
      end
    end



  assign #1 sampleIn_addr_delay_1 = sampleIn_addr;

  // Data source for In1
  initial
    begin : In1_fileread
      fp_In1 = $fopen("In1.dat", "r");
      status_In1 = $rewind(fp_In1);
    end

  always @(sampleIn_addr_delay_1, rdEnb, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        rawData_In1 <= 6'bx;
      end
      else if (rdEnb == 1) begin
        status_In1 = $fscanf(fp_In1, "%h", rawData_In1);
      end
    end

  // holdData reg for sampleIn
  always @(posedge clk or posedge reset)
    begin : stimuli_sampleIn
      if (reset) begin
        holdData_In1 <= 6'bx;
      end
      else begin
        holdData_In1 <= rawData_In1;
      end
    end

  always @(rawData_In1 or rdEnb)
    begin : stimuli_sampleIn_1
      if (rdEnb == 1'b0) begin
        In1_offset <= holdData_In1;
      end
      else begin
        In1_offset <= rawData_In1;
      end
    end

  assign #2 In1 = In1_offset;

  assign snkDonen =  ~ snkDone;



  assign resetn =  ~ reset;



  assign tb_enb = resetn & snkDonen;



  // Delay inside enable generation: register depth 1
  always @(posedge clk or posedge reset)
    begin : u_enable_delay
      if (reset) begin
        tb_enb_delay <= 0;
      end
      else begin
        tb_enb_delay <= tb_enb;
      end
    end

  assign rdEnb = (snkDone == 1'b0 ? tb_enb_delay :
              1'b0);



  assign #2 clk_enable = rdEnb;

  initial
    begin : reset_gen
      reset <= 1'b1;
      # (20);
      @ (posedge clk)
      # (2);
      reset <= 1'b0;
    end

  always 
    begin : clk_gen
      clk <= 1'b1;
      # (5);
      clk <= 1'b0;
      # (5);
      if (snkDone == 1'b1) begin
        clk <= 1'b1;
        # (5);
        clk <= 1'b0;
        # (5);
        $stop;
      end
    end

  Polar_Decoder u_Polar_Decoder (.clk(clk),
                                 .reset(reset),
                                 .clk_enable(clk_enable),
                                 .In1(In1),  // sfix6
                                 .In2_start(In2_start),
                                 .In2_end(In2_end),
                                 .In2_valid(In2_valid),
                                 .In3(In3),  // ufix10
                                 .In4(In4),  // ufix14
                                 .ce_out(ce_out),
                                 .Out1(Out1),
                                 .Out2_start(Out2_start),
                                 .Out2_end(Out2_end),
                                 .Out2_valid(Out2_valid),
                                 .Out3(Out3),
                                 .Out4(Out4)
                                 );

  assign Out1_enb = ce_out & Out1_active;



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 10876
  always @(posedge clk or posedge reset)
    begin : c_2_process
      if (reset == 1'b1) begin
        Out1_addr <= 14'b00000000000000;
      end
      else begin
        if (Out1_enb) begin
          if (Out1_addr >= 14'b10101001111100) begin
            Out1_addr <= 14'b00000000000000;
          end
          else begin
            Out1_addr <= Out1_addr + 14'b00000000000001;
          end
        end
      end
    end



  assign Out1_lastAddr = Out1_addr >= 14'b10101001111100;



  assign Out1_done = Out1_lastAddr & resetn;



  // Delay to allow last sim cycle to complete
  always @(posedge clk or posedge reset)
    begin : checkDone_1
      if (reset) begin
        check1_done <= 0;
      end
      else begin
        if (Out1_done_enb) begin
          check1_done <= Out1_done;
        end
      end
    end

  assign snkDone = check6_done & (check5_done & (check4_done & (check3_done & (check1_done & check2_done))));



  assign #1 Out1_addr_delay_1 = Out1_addr;

  // Data source for Out1_expected
  initial
    begin : Out1_expected_fileread
      fp_Out1_expected = $fopen("Out1_expected.dat", "r");
      status_Out1_expected = $rewind(fp_Out1_expected);
    end

  always @(Out1_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        Out1_expected <= 1'bx;
      end
      else if (ce_out == 1) begin
        status_Out1_expected = $fscanf(fp_Out1_expected, "%h", Out1_expected);
      end
    end

  assign Out1_ref = Out1_expected;

  always @(posedge clk or posedge reset)
    begin : Out1_checker
      if (reset == 1'b1) begin
        Out1_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && Out1 !== Out1_ref) begin
          Out1_testFailure <= 1'b1;
          $display("ERROR in Out1 at time %t : Expected '%h' Actual '%h'", $time, Out1_ref, Out1);
        end
      end
    end

  assign #1 Out2_start_addr_delay_1 = Out1_addr;

  // Data source for Out2_start_expected
  initial
    begin : Out2_start_expected_fileread
      fp_Out2_start_expected = $fopen("Out2_start_expected.dat", "r");
      status_Out2_start_expected = $rewind(fp_Out2_start_expected);
    end

  always @(Out2_start_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        Out2_start_expected <= 1'bx;
      end
      else if (ce_out == 1) begin
        status_Out2_start_expected = $fscanf(fp_Out2_start_expected, "%h", Out2_start_expected);
      end
    end

  assign Out2_start_ref = Out2_start_expected;

  always @(posedge clk or posedge reset)
    begin : Out2_start_checker
      if (reset == 1'b1) begin
        Out2_start_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && Out2_start !== Out2_start_ref) begin
          Out2_start_testFailure <= 1'b1;
          $display("ERROR in Out2_start at time %t : Expected '%h' Actual '%h'", $time, Out2_start_ref, Out2_start);
        end
      end
    end

  assign #1 Out2_end_addr_delay_1 = Out1_addr;

  // Data source for Out2_end_expected
  initial
    begin : Out2_end_expected_fileread
      fp_Out2_end_expected = $fopen("Out2_end_expected.dat", "r");
      status_Out2_end_expected = $rewind(fp_Out2_end_expected);
    end

  always @(Out2_end_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        Out2_end_expected <= 1'bx;
      end
      else if (ce_out == 1) begin
        status_Out2_end_expected = $fscanf(fp_Out2_end_expected, "%h", Out2_end_expected);
      end
    end

  assign Out2_end_ref = Out2_end_expected;

  always @(posedge clk or posedge reset)
    begin : Out2_end_checker
      if (reset == 1'b1) begin
        Out2_end_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && Out2_end !== Out2_end_ref) begin
          Out2_end_testFailure <= 1'b1;
          $display("ERROR in Out2_end at time %t : Expected '%h' Actual '%h'", $time, Out2_end_ref, Out2_end);
        end
      end
    end

  assign #1 Out2_valid_addr_delay_1 = Out1_addr;

  // Data source for Out2_valid_expected
  initial
    begin : Out2_valid_expected_fileread
      fp_Out2_valid_expected = $fopen("Out2_valid_expected.dat", "r");
      status_Out2_valid_expected = $rewind(fp_Out2_valid_expected);
    end

  always @(Out2_valid_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        Out2_valid_expected <= 1'bx;
      end
      else if (ce_out == 1) begin
        status_Out2_valid_expected = $fscanf(fp_Out2_valid_expected, "%h", Out2_valid_expected);
      end
    end

  assign Out2_valid_ref = Out2_valid_expected;

  always @(posedge clk or posedge reset)
    begin : Out2_valid_checker
      if (reset == 1'b1) begin
        Out2_valid_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && Out2_valid !== Out2_valid_ref) begin
          Out2_valid_testFailure <= 1'b1;
          $display("ERROR in Out2_valid at time %t : Expected '%h' Actual '%h'", $time, Out2_valid_ref, Out2_valid);
        end
      end
    end

  assign #1 Out3_addr_delay_1 = Out1_addr;

  // Data source for Out3_expected
  initial
    begin : Out3_expected_fileread
      fp_Out3_expected = $fopen("Out3_expected.dat", "r");
      status_Out3_expected = $rewind(fp_Out3_expected);
    end

  always @(Out3_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        Out3_expected <= 1'bx;
      end
      else if (ce_out == 1) begin
        status_Out3_expected = $fscanf(fp_Out3_expected, "%h", Out3_expected);
      end
    end

  assign Out3_ref = Out3_expected;

  always @(posedge clk or posedge reset)
    begin : Out3_checker
      if (reset == 1'b1) begin
        Out3_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && Out3 !== Out3_ref) begin
          Out3_testFailure <= 1'b1;
          $display("ERROR in Out3 at time %t : Expected '%h' Actual '%h'", $time, Out3_ref, Out3);
        end
      end
    end

  assign #1 Out4_addr_delay_1 = Out1_addr;

  // Data source for Out4_expected
  initial
    begin : Out4_expected_fileread
      fp_Out4_expected = $fopen("Out4_expected.dat", "r");
      status_Out4_expected = $rewind(fp_Out4_expected);
    end

  always @(Out4_addr_delay_1, ce_out, tb_enb_delay)
    begin
      if (tb_enb_delay == 0) begin
        Out4_expected <= 1'bx;
      end
      else if (ce_out == 1) begin
        status_Out4_expected = $fscanf(fp_Out4_expected, "%h", Out4_expected);
      end
    end

  assign Out4_ref = Out4_expected;

  always @(posedge clk or posedge reset)
    begin : Out4_checker
      if (reset == 1'b1) begin
        Out4_testFailure <= 1'b0;
      end
      else begin
        if (ce_out == 1'b1 && Out4 !== Out4_ref) begin
          Out4_testFailure <= 1'b1;
          $display("ERROR in Out4 at time %t : Expected '%h' Actual '%h'", $time, Out4_ref, Out4);
        end
      end
    end

  assign testFailure = Out4_testFailure | (Out3_testFailure | (Out2_valid_testFailure | (Out2_end_testFailure | (Out1_testFailure | Out2_start_testFailure))));



  always @(posedge clk)
    begin : completed_msg
      if (snkDone == 1'b1) begin
        if (testFailure == 1'b0) begin
          $display("**************TEST COMPLETED (PASSED)**************");
        end
        else begin
          $display("**************TEST COMPLETED (FAILED)**************");
        end
      end
    end

endmodule  

