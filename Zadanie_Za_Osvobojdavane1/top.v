////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : top.vf
// /___/   /\     Timestamp : 03/17/2023 00:25:55
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family xbr -w C:/XilinxProjects/Zadanie_Za_Osvobojdavane1/top.sch top.vf
//Design Name: top
//Device: xbr
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module top(Clk, 
           FilterClk, 
           NumberIn, 
           Reset, 
           Enable, 
           SegmentOut);

    input Clk;
    input FilterClk;
    input [3:0] NumberIn;
    input Reset;
   output Enable;
   output [7:0] SegmentOut;
   
   wire XLXN_1;
   
   FacNumberBlock XLXI_3 (.Clk(XLXN_1), 
                          .NumberIn(NumberIn[3:0]), 
                          .Reset(Reset), 
                          .Enable(Enable), 
                          .SegmentOut(SegmentOut[7:0]));
   Filter XLXI_4 (.FilterClk(FilterClk), 
                  .FilterIn(Clk), 
                  .FilterOut(XLXN_1));
endmodule
