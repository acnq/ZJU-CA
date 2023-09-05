<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="res(31:0)" />
        <signal name="ZERO" />
        <signal name="XLXN_4(31:0)" />
        <signal name="XLXN_7(31:0)" />
        <signal name="XLXN_8(31:0)" />
        <signal name="XLXN_9(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)" />
        <signal name="overflow" />
        <signal name="XLXN_14" />
        <signal name="ALU_operation(2:0)" />
        <signal name="B(31:0)" />
        <signal name="XLXN_23(31:0)" />
        <signal name="XLXN_24(31:0)" />
        <signal name="A(31:0)" />
        <signal name="S(32:0)" />
        <signal name="S(31:0)" />
        <signal name="N0">
        </signal>
        <signal name="ALU_operation(2)" />
        <signal name="XLXN_37(31:0)" />
        <signal name="XLXN_38" />
        <port polarity="Output" name="res(31:0)" />
        <port polarity="Output" name="ZERO" />
        <port polarity="Output" name="overflow" />
        <port polarity="Input" name="ALU_operation(2:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <blockdef name="and32">
            <timestamp>2014-3-19T13:28:4</timestamp>
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="28" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="64" y1="-16" y2="-16" x1="144" />
            <line x2="64" y1="-16" y2="-112" x1="64" />
            <line x2="144" y1="-112" y2="-112" x1="64" />
            <arc ex="144" ey="-112" sx="144" sy="-16" r="48" cx="144" cy="-64" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="192" />
        </blockdef>
        <blockdef name="or32">
            <timestamp>2014-3-19T13:34:26</timestamp>
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="236" y1="-64" y2="-64" style="linewidth:W" x1="208" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="ADC32">
            <timestamp>2014-6-26T17:20:38</timestamp>
            <line x2="48" y1="-256" y2="-256" style="linewidth:W" x1="64" />
            <line x2="48" y1="-128" y2="-128" style="linewidth:W" x1="64" />
            <line x2="64" y1="-224" y2="-300" x1="64" />
            <line x2="112" y1="-224" y2="-192" x1="64" />
            <line x2="112" y1="-160" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-76" x1="64" />
            <line x2="224" y1="-76" y2="-140" x1="64" />
            <line x2="224" y1="-300" y2="-236" x1="64" />
            <line x2="224" y1="-140" y2="-236" x1="224" />
            <line x2="240" y1="-192" y2="-192" style="linewidth:W" x1="224" />
            <line x2="128" y1="-304" y2="-276" x1="128" />
        </blockdef>
        <blockdef name="xor32">
            <timestamp>2014-3-19T14:4:0</timestamp>
            <arc ex="80" ey="-112" sx="80" sy="-16" r="56" cx="48" cy="-64" />
            <line x2="80" y1="-112" y2="-112" x1="144" />
            <line x2="80" y1="-16" y2="-16" x1="144" />
            <arc ex="144" ey="-112" sx="224" sy="-64" r="88" cx="148" cy="-24" />
            <arc ex="60" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <arc ex="224" ey="-64" sx="144" sy="-16" r="88" cx="148" cy="-104" />
            <line x2="80" y1="-96" y2="-96" style="linewidth:W" x1="32" />
            <line x2="80" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="228" y1="-64" y2="-64" style="linewidth:W" x1="256" />
        </blockdef>
        <blockdef name="nor32">
            <timestamp>2014-3-19T13:43:44</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="224" y1="-64" y2="-64" style="linewidth:W" x1="256" />
            <circle style="linewidth:W" r="8" cx="216" cy="-64" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="srl32">
            <timestamp>2014-3-19T13:48:12</timestamp>
            <rect width="184" x="64" y="-128" height="128" />
            <line x2="32" y1="-96" y2="-96" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="288" y1="-64" y2="-64" style="linewidth:W" x1="248" />
        </blockdef>
        <blockdef name="MUX8T1_32">
            <timestamp>2015-12-29T14:54:8</timestamp>
            <rect width="68" x="12" y="-264" height="264" />
            <line x2="48" y1="-264" y2="-272" style="linewidth:W" x1="48" />
            <line x2="0" y1="-16" y2="-16" style="linewidth:W" x1="12" />
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="12" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="12" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="12" />
            <line x2="0" y1="-144" y2="-144" style="linewidth:W" x1="12" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="12" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="12" />
            <line x2="0" y1="-240" y2="-240" style="linewidth:W" x1="12" />
            <line x2="96" y1="-160" y2="-160" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="or_bit_32">
            <timestamp>2014-3-19T14:52:26</timestamp>
            <rect width="220" x="64" y="-104" height="112" />
            <line x2="32" y1="-48" y2="-48" style="linewidth:W" x1="64" />
            <arc ex="260" ey="-48" sx="180" sy="0" r="88" cx="184" cy="-88" />
            <line x2="116" y1="0" y2="0" x1="180" />
            <line x2="116" y1="-96" y2="-96" x1="180" />
            <arc ex="116" ey="-96" sx="116" sy="0" r="56" cx="84" cy="-48" />
            <arc ex="180" ey="-96" sx="260" sy="-48" r="88" cx="184" cy="-8" />
            <line x2="120" y1="-96" y2="-96" x1="184" />
            <line x2="88" y1="-80" y2="-80" x1="128" />
            <line x2="92" y1="-16" y2="-16" x1="132" />
            <line x2="304" y1="-48" y2="-48" x1="284" />
        </blockdef>
        <blockdef name="SignalExt_32">
            <timestamp>2015-6-25T6:52:52</timestamp>
            <line x2="12" y1="-32" y2="-32" x1="0" />
            <line x2="144" y1="-32" y2="-32" style="linewidth:W" x1="132" />
            <rect width="120" x="12" y="-52" height="40" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="and32" name="XLXI_1">
            <blockpin signalname="XLXN_4(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="ADC32" name="XLXI_3">
            <blockpin signalname="XLXN_23(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="C0" />
            <blockpin signalname="S(32:0)" name="S(32:0)" />
        </block>
        <block symbolname="xor32" name="XLXI_4">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="nor32" name="XLXI_5">
            <blockpin signalname="XLXN_8(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="srl32" name="XLXI_6">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="MUX8T1_32" name="XLXI_8">
            <blockpin signalname="ALU_operation(2:0)" name="s(2:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)" name="I7(31:0)" />
            <blockpin signalname="S(31:0)" name="I6(31:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="I5(31:0)" />
            <blockpin signalname="XLXN_8(31:0)" name="I4(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="I3(31:0)" />
            <blockpin signalname="S(31:0)" name="I2(31:0)" />
            <blockpin signalname="XLXN_37(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_4(31:0)" name="I0(31:0)" />
            <blockpin signalname="res(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="xor32" name="XLXI_9">
            <blockpin signalname="XLXN_24(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_23(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="or_bit_32" name="XLXI_10">
            <blockpin signalname="ZERO" name="o" />
            <blockpin signalname="res(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="SignalExt_32" name="XLXI_11">
            <blockpin signalname="XLXN_24(31:0)" name="So(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="S" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="or32" name="XLXI_14">
            <blockpin signalname="XLXN_37(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="224" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1472" y="896" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1488" y="1056" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1472" y="1232" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1488" y="1456" name="XLXI_6" orien="R0">
        </instance>
        <instance x="2256" y="752" name="XLXI_8" orien="R0">
        </instance>
        <instance x="832" y="832" name="XLXI_9" orien="R0">
        </instance>
        <branch name="res(31:0)">
            <wire x2="2480" y1="592" y2="592" x1="2352" />
            <wire x2="2608" y1="592" y2="592" x1="2480" />
            <wire x2="2480" y1="592" y2="928" x1="2480" />
            <wire x2="2624" y1="928" y2="928" x1="2480" />
        </branch>
        <instance x="2592" y="976" name="XLXI_10" orien="R0">
        </instance>
        <branch name="ZERO">
            <wire x2="3104" y1="928" y2="928" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="3104" y="928" name="ZERO" orien="R0" />
        <iomarker fontsize="28" x="2608" y="592" name="res(31:0)" orien="R0" />
        <branch name="XLXN_4(31:0)">
            <wire x2="1968" y1="160" y2="160" x1="1696" />
            <wire x2="1968" y1="160" y2="512" x1="1968" />
            <wire x2="2256" y1="512" y2="512" x1="1968" />
        </branch>
        <branch name="XLXN_7(31:0)">
            <wire x2="2016" y1="1392" y2="1392" x1="1776" />
            <wire x2="2016" y1="672" y2="1392" x1="2016" />
            <wire x2="2256" y1="672" y2="672" x1="2016" />
        </branch>
        <branch name="XLXN_8(31:0)">
            <wire x2="1984" y1="1168" y2="1168" x1="1728" />
            <wire x2="1984" y1="640" y2="1168" x1="1984" />
            <wire x2="2256" y1="640" y2="640" x1="1984" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="1952" y1="992" y2="992" x1="1744" />
            <wire x2="1952" y1="608" y2="992" x1="1952" />
            <wire x2="2256" y1="608" y2="608" x1="1952" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,S(32)">
            <wire x2="2256" y1="736" y2="736" x1="2176" />
            <wire x2="2176" y1="736" y2="832" x1="2176" />
            <wire x2="2272" y1="832" y2="832" x1="2176" />
            <wire x2="2272" y1="832" y2="992" x1="2272" />
        </branch>
        <branch name="overflow">
            <wire x2="2960" y1="1248" y2="1248" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2960" y="1248" name="overflow" orien="R0" />
        <instance x="1088" y="512" name="XLXI_11" orien="M0">
        </instance>
        <branch name="ALU_operation(2:0)">
            <wire x2="1168" y1="64" y2="64" x1="720" />
            <wire x2="2304" y1="64" y2="64" x1="1168" />
            <wire x2="2304" y1="64" y2="480" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="720" y="64" name="ALU_operation(2:0)" orien="R180" />
        <branch name="B(31:0)">
            <wire x2="864" y1="800" y2="800" x1="816" />
            <wire x2="816" y1="800" y2="1200" x1="816" />
            <wire x2="1360" y1="1200" y2="1200" x1="816" />
            <wire x2="1520" y1="1200" y2="1200" x1="1360" />
            <wire x2="1360" y1="1200" y2="1424" x1="1360" />
            <wire x2="1520" y1="1424" y2="1424" x1="1360" />
            <wire x2="1360" y1="1424" y2="1424" x1="1040" />
            <wire x2="1504" y1="192" y2="192" x1="1360" />
            <wire x2="1360" y1="192" y2="416" x1="1360" />
            <wire x2="1360" y1="416" y2="1024" x1="1360" />
            <wire x2="1520" y1="1024" y2="1024" x1="1360" />
            <wire x2="1360" y1="1024" y2="1200" x1="1360" />
            <wire x2="1520" y1="416" y2="416" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1424" name="B(31:0)" orien="R180" />
        <branch name="XLXN_23(31:0)">
            <wire x2="1520" y1="768" y2="768" x1="1088" />
        </branch>
        <branch name="XLXN_24(31:0)">
            <wire x2="848" y1="480" y2="736" x1="848" />
            <wire x2="864" y1="736" y2="736" x1="848" />
            <wire x2="944" y1="480" y2="480" x1="848" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="1472" y1="128" y2="128" x1="992" />
            <wire x2="1472" y1="128" y2="352" x1="1472" />
            <wire x2="1472" y1="352" y2="640" x1="1472" />
            <wire x2="1472" y1="640" y2="960" x1="1472" />
            <wire x2="1472" y1="960" y2="1136" x1="1472" />
            <wire x2="1472" y1="1136" y2="1360" x1="1472" />
            <wire x2="1520" y1="1360" y2="1360" x1="1472" />
            <wire x2="1520" y1="1136" y2="1136" x1="1472" />
            <wire x2="1520" y1="960" y2="960" x1="1472" />
            <wire x2="1520" y1="640" y2="640" x1="1472" />
            <wire x2="1520" y1="352" y2="352" x1="1472" />
            <wire x2="1504" y1="128" y2="128" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="992" y="128" name="A(31:0)" orien="R180" />
        <branch name="S(32:0)">
            <wire x2="1792" y1="704" y2="704" x1="1712" />
        </branch>
        <bustap x2="1888" y1="704" y2="704" x1="1792" />
        <branch name="S(31:0)">
            <wire x2="1920" y1="704" y2="704" x1="1888" />
            <wire x2="2256" y1="704" y2="704" x1="1920" />
            <wire x2="2256" y1="576" y2="576" x1="1920" />
            <wire x2="1920" y1="576" y2="704" x1="1920" />
        </branch>
        <instance x="2448" y="1744" name="XLXI_12" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2429" y="1472" type="branch" />
            <wire x2="2429" y1="1472" y2="1472" x1="2336" />
            <wire x2="2512" y1="1472" y2="1472" x1="2429" />
            <wire x2="2512" y1="1472" y2="1616" x1="2512" />
        </branch>
        <bustap x2="1168" y1="64" y2="160" x1="1168" />
        <branch name="ALU_operation(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="288" type="branch" />
            <wire x2="1168" y1="480" y2="480" x1="1088" />
            <wire x2="1600" y1="480" y2="480" x1="1168" />
            <wire x2="1600" y1="480" y2="592" x1="1600" />
            <wire x2="1168" y1="160" y2="288" x1="1168" />
            <wire x2="1168" y1="288" y2="480" x1="1168" />
        </branch>
        <branch name="XLXN_37(31:0)">
            <wire x2="1952" y1="384" y2="384" x1="1712" />
            <wire x2="1952" y1="384" y2="544" x1="1952" />
            <wire x2="2256" y1="544" y2="544" x1="1952" />
        </branch>
        <instance x="1472" y="448" name="XLXI_14" orien="R0">
        </instance>
    </sheet>
</drawing>