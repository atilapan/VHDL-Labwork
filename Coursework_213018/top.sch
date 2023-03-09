VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xbr"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL FilterClk
        SIGNAL Clk
        SIGNAL Input(3:0)
        SIGNAL Load
        SIGNAL Reset
        SIGNAL XLXN_2(3:0)
        SIGNAL SegmentOut(7:0)
        SIGNAL XLXN_5(3:0)
        PORT Input FilterClk
        PORT Input Clk
        PORT Input Input(3:0)
        PORT Input Load
        PORT Input Reset
        PORT Output SegmentOut(7:0)
        BEGIN BLOCKDEF Filter
            TIMESTAMP 2023 3 8 21 46 37
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF Regi
            TIMESTAMP 2023 3 8 21 46 28
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF BCDTo7Seg
            TIMESTAMP 2023 3 9 16 38 56
            RECTANGLE N 64 -128 368 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -108 432 -84 
            LINE N 368 -96 432 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 Filter
            PIN FilterClk FilterClk
            PIN FilterIn Clk
            PIN FilterOut XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 Regi
            PIN Clk XLXN_1
            PIN Reset Reset
            PIN Load Load
            PIN Input(3:0) Input(3:0)
            PIN Output(3:0) XLXN_5(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 BCDTo7Seg
            PIN Clk XLXN_1
            PIN BCDIn(3:0) XLXN_5(3:0)
            PIN SegmentOut(7:0) SegmentOut(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Input(3:0)
            WIRE 432 1376 992 1376
        END BRANCH
        BEGIN BRANCH Load
            WIRE 432 1312 992 1312
        END BRANCH
        BEGIN INSTANCE XLXI_2 592 1168 R0
        END INSTANCE
        BEGIN BRANCH FilterClk
            WIRE 432 1072 592 1072
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 432 1136 592 1136
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 976 1072 976 1184
            WIRE 976 1184 992 1184
            WIRE 976 1072 1184 1072
            WIRE 1184 1072 1184 1120
            WIRE 1184 1120 1408 1120
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 432 1248 448 1248
            WIRE 448 1248 992 1248
        END BRANCH
        IOMARKER 432 1248 Reset R180 28
        IOMARKER 432 1312 Load R180 28
        IOMARKER 432 1376 Input(3:0) R180 28
        IOMARKER 432 1072 FilterClk R180 28
        IOMARKER 432 1136 Clk R180 28
        BEGIN INSTANCE XLXI_3 992 1408 R0
        END INSTANCE
        BEGIN BRANCH SegmentOut(7:0)
            WIRE 1840 1120 1888 1120
        END BRANCH
        IOMARKER 1888 1120 SegmentOut(7:0) R0 28
        BEGIN BRANCH XLXN_5(3:0)
            WIRE 1376 1184 1408 1184
        END BRANCH
        BEGIN INSTANCE XLXI_4 1408 1216 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
