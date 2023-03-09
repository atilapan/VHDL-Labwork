////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : top.vf
// /___/   /\     Timestamp : 03/09/2023 18:43:03
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family xbr -w C:/XilinxProjects/Coursework_213018/top.sch top.vf
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
           SegmentOut);

    input Clk;
    input FilterClk;
    input [3:0] Input;
    input Load;
    input Reset;
   output [7:0] SegmentOut;
   
   wire XLXN_1;
   wire [3:0] XLXN_5;
   
   Filter XLXI_2 (.FilterClk(FilterClk), 
                  .FilterIn(Clk), 
                  .FilterOut(XLXN_1));
   Regi XLXI_3 (.Clk(XLXN_1), 
                .Input(Input[3:0]), 
                .Load(Load), 
                .Reset(Reset), 
                .Output(XLXN_5[3:0]));
   BCDTo7Seg XLXI_4 (.BCDIn(XLXN_5[3:0]), 
                     .Clk(XLXN_1), 
                     .SegmentOut(SegmentOut[7:0]));
endmodule
