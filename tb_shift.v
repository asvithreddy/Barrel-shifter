//tb_barrel_shifter_16bit.v
`timescale 100 ns / 100 ps
module tb_barrel_shift_16bit;
  reg [15:0] in;
  reg [3:0] ctrl;
  wire [15:0] out; 
  reg [15:0] in1;
  reg [3:0] ctrl1;
  wire [15:0] out1;
  reg [15:0] in2;
  reg [3:0] ctrl2;
  wire [15:0] out2;
  initial begin $dumpfile("tb_project.vcd"); 
 $dumpvars(0,tb_barrel_shift_16bit); 
 end
barrel_shift_16bit_right bs1(.in(in), .ctrl(ctrl), .out(out));
barrel_shift_16bit_left bs2(.in(in1), .ctrl(ctrl1), .out(out1));
barrel_shift_16bit_aright bs3(.in(in2), .ctrl(ctrl2), .out(out2));
  
initial 
 begin
 //Test case 1:Shift right by 0
    in = 16'b1101101011101010;
    ctrl = 5'b00000;
    in1 = 16'b1101101011101010;
    ctrl1 = 5'b00000;
    in2 = 16'b1101101011101010;
    ctrl2 = 5'b00000;
    #10 $display("Input: %b, Shift Amount: %b,Right Output: %b", in,ctrl, out);
    #10 $display("Input: %b, Shift Amount: %b,Left Output: %b", in1,ctrl1, out1);
    #10 $display("Input: %b, Shift Amount: %b,ARight Output: %b", in2,ctrl2, out2);

 // Test case 2: Shift right by 2
    in = 16'b1101101011101010;
    ctrl = 5'b0010;
    in1 = 16'b1101101011101010;
    ctrl1 = 5'b0010;
    in2 = 16'b1101101011101010;
    ctrl2 = 5'b0010;
    #10 $display("Input: %b, Shift Amount: %b,Right Output: %b", in, ctrl, out);
    #10 $display("Input: %b, Shift Amount: %b,Left Output: %b", in1,ctrl1, out1);
    #10 $display("Input: %b, Shift Amount: %b,ARight Output: %b", in2,ctrl2, out2);

// Test case 3: Shift right by 4
    in = 16'b1101101011101010;
    ctrl = 5'b0100;
    in1 = 16'b1101101011101010;
    ctrl1 = 5'b0100;
    in2 = 16'b1101101011101010;
    ctrl2 = 5'b0100;
    #10 $display("Input: %b, Shift Amount: %b,Right Output: %b", in, ctrl, out);
    #10 $display("Input: %b, Shift Amount: %b,Left Output: %b", in1,ctrl1, out1);
    #10 $display("Input: %b, Shift Amount: %b,ARight Output: %b", in2,ctrl2, out2);

//Test case 4:Shift right by 8
    in = 16'b1101101011101010;
    ctrl = 5'b01000;
    in1 = 16'b1101101011101010;
    ctrl1 = 5'b01000;
    in2 = 16'b1101101011101010;
    ctrl2 = 5'b01000;
    #10 $display("Input: %b, Shift Amount: %b,Right Output: %b", in,ctrl, out);
    #10 $display("Input: %b, Shift Amount: %b,Left Output: %b", in1,ctrl1, out1);
    #10 $display("Input: %b, Shift Amount: %b,ARight Output: %b", in2,ctrl2, out2);

//Test case 5:Shift right by 15
    in = 16'b1101101011101010;
    ctrl = 5'b01111;
    in1 = 16'b1101101011101010;
    ctrl1 = 5'b01111;
    in2 = 16'b1101101011101010;
    ctrl2 = 5'b01111;
    #10 $display("Input: %b, Shift Amount: %b,Right Output: %b", in,ctrl, out);
    #10 $display("Input: %b, Shift Amount: %b,Left Output: %b", in1,ctrl1, out1);
    #10 $display("Input: %b, Shift Amount: %b,ARight Output: %b", in2,ctrl2, out2);

  end
endmodule