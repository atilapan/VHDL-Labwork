////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : top.vf
// /___/   /\     Timestamp : 03/13/2023 12:52:33
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family xbr -w C:/Temp/tp/25A/213018/Coursework_213018/top.sch top.vf
//Design Name: top
//Device: xbr
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module top(Clk, 
           FilterClk, 
           Input, 
           Load, 
           Reset, 
           Enable, 
           SegmentOut);

    input Clk;
    input FilterClk;
    input [3:0] Input;
    input Load;
    input Reset;
   output Enable;
   output [7:0] SegmentOut;
   
   wire [3:0] XLXN_5;
   wire XLXN_6;
   
   Filter XLXI_2 (.FilterClk(FilterClk), 
                  .FilterIn(Clk), 
                  .FilterOut(XLXN_6));
   Regi XLXI_3 (.Clk(XLXN_6), 
                .Input(Input[3:0]), 
                .Load(Load), 
                .Reset(Reset), 
                .Output(XLXN_5[3:0]));
   BCDTo7Seg XLXI_4 (.BCDIn(XLXN_5[3:0]), 
                     .Clk(XLXN_6), 
                     .Enable(Enable), 
                     .SegmentOut(SegmentOut[7:0]));
endmodule
