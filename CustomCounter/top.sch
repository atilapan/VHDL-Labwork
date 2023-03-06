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
        SIGNAL Mode
        SIGNAL D(3:0)
        SIGNAL Increment(2:0)
        SIGNAL Load
        SIGNAL Reset
        SIGNAL Q(3:0)
        SIGNAL Clk
        PORT Input FilterClk
        PORT Input Mode
        PORT Input D(3:0)
        PORT Input Increment(2:0)
        PORT Input Load
        PORT Input Reset
        PORT Output Q(3:0)
        PORT Input Clk
        BEGIN BLOCKDEF CustomCounter
            TIMESTAMP 2023 3 6 21 37 45
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF Filter
            TIMESTAMP 2023 3 6 21 37 51
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 CustomCounter
            PIN Reset Reset
            PIN Load Load
            PIN Clk XLXN_1
            PIN Mode Mode
            PIN D(3:0) D(3:0)
            PIN Increment(2:0) Increment(2:0)
            PIN Q(3:0) Q(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Filter
            PIN FilterClk FilterClk
            PIN FilterIn Clk
            PIN FilterOut XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1504 1328 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1472 1104 1488 1104
            WIRE 1488 1104 1504 1104
        END BRANCH
        BEGIN INSTANCE XLXI_2 1088 1200 R0
        END INSTANCE
        BEGIN BRANCH FilterClk
            WIRE 960 1104 1088 1104
        END BRANCH
        BEGIN BRANCH Mode
            WIRE 960 1216 1440 1216
            WIRE 1440 1168 1440 1216
            WIRE 1440 1168 1504 1168
        END BRANCH
        BEGIN BRANCH D(3:0)
            WIRE 960 1264 1472 1264
            WIRE 1472 1232 1504 1232
            WIRE 1472 1232 1472 1264
        END BRANCH
        BEGIN BRANCH Increment(2:0)
            WIRE 960 1312 1472 1312
            WIRE 1472 1296 1472 1312
            WIRE 1472 1296 1504 1296
        END BRANCH
        BEGIN BRANCH Load
            WIRE 960 1040 1504 1040
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 960 976 1504 976
        END BRANCH
        BEGIN BRANCH Q(3:0)
            WIRE 1888 976 2176 976
        END BRANCH
        IOMARKER 960 976 Reset R180 28
        IOMARKER 960 1040 Load R180 28
        IOMARKER 960 1104 FilterClk R180 28
        IOMARKER 960 1216 Mode R180 28
        IOMARKER 960 1264 D(3:0) R180 28
        IOMARKER 960 1312 Increment(2:0) R180 28
        BEGIN BRANCH Clk
            WIRE 960 1168 1072 1168
            WIRE 1072 1168 1088 1168
        END BRANCH
        IOMARKER 2176 976 Q(3:0) R0 28
        IOMARKER 960 1168 Clk R180 28
    END SHEET
END SCHEMATIC
