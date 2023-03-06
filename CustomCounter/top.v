////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : top.vf
// /___/   /\     Timestamp : 03/06/2023 23:51:35
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family xbr -w C:/XilinxProjects/CustomCounter/top.sch top.vf
//Design Name: top
//Device: xbr
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module top(Clk, 
           D, 
           FilterClk, 
           Increment, 
           Load, 
           Mode, 
           Reset, 
           Q);

    input Clk;
    input [3:0] D;
    input FilterClk;
    input [2:0] Increment;
    input Load;
    input Mode;
    input Reset;
   output [3:0] Q;
   
   wire XLXN_1;
   
   CustomCounter XLXI_1 (.Clk(XLXN_1), 
                         .D(D[3:0]), 
                         .Increment(Increment[2:0]), 
                         .Load(Load), 
                         .Mode(Mode), 
                         .Reset(Reset), 
                         .Q(Q[3:0]));
   Filter XLXI_2 (.FilterClk(FilterClk), 
                  .FilterIn(Clk), 
                  .FilterOut(XLXN_1));
endmodule
