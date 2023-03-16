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
        SIGNAL Reset
        SIGNAL NumberIn(3:0)
        SIGNAL Enable
        SIGNAL SegmentOut(7:0)
        PORT Input FilterClk
        PORT Input Clk
        PORT Input Reset
        PORT Input NumberIn(3:0)
        PORT Output Enable
        PORT Output SegmentOut(7:0)
        BEGIN BLOCKDEF FacNumberBlock
            TIMESTAMP 2023 3 16 22 13 42
            RECTANGLE N 64 -192 400 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 400 -160 464 -160 
            RECTANGLE N 400 -44 464 -20 
            LINE N 400 -32 464 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Filter
            TIMESTAMP 2023 3 16 22 13 47
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 FacNumberBlock
            PIN Clk XLXN_1
            PIN Reset Reset
            PIN NumberIn(3:0) NumberIn(3:0)
            PIN Enable Enable
            PIN SegmentOut(7:0) SegmentOut(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 Filter
            PIN FilterClk FilterClk
            PIN FilterIn Clk
            PIN FilterOut XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_3 1488 1328 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1456 1168 1488 1168
        END BRANCH
        BEGIN INSTANCE XLXI_4 1072 1264 R0
        END INSTANCE
        BEGIN BRANCH FilterClk
            WIRE 992 1168 1072 1168
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 992 1232 1072 1232
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 992 1296 1440 1296
            WIRE 1440 1232 1440 1296
            WIRE 1440 1232 1472 1232
            WIRE 1472 1232 1488 1232
        END BRANCH
        BEGIN BRANCH NumberIn(3:0)
            WIRE 992 1360 1472 1360
            WIRE 1472 1296 1472 1360
            WIRE 1472 1296 1488 1296
        END BRANCH
        BEGIN BRANCH Enable
            WIRE 1952 1168 1968 1168
            WIRE 1968 1168 2000 1168
        END BRANCH
        BEGIN BRANCH SegmentOut(7:0)
            WIRE 1952 1296 1968 1296
            WIRE 1968 1296 2000 1296
        END BRANCH
        IOMARKER 992 1168 FilterClk R180 28
        IOMARKER 992 1232 Clk R180 28
        IOMARKER 992 1296 Reset R180 28
        IOMARKER 992 1360 NumberIn(3:0) R180 28
        IOMARKER 2000 1168 Enable R0 28
        IOMARKER 2000 1296 SegmentOut(7:0) R0 28
    END SHEET
END SCHEMATIC
