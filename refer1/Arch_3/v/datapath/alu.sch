<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="XLXN_17(31:0)" />
        <signal name="XLXN_26(31:0)" />
        <signal name="XLXN_29(31:0)" />
        <signal name="XLXN_30(31:0)" />
        <signal name="S(31:0)" />
        <signal name="tmp(31:0)" />
        <signal name="zero" />
        <signal name="overflow" />
        <signal name="N0" />
        <signal name="XLXN_49(31:0)" />
        <signal name="XLXN_50(31:0)" />
        <signal name="XLXN_54(31:0)" />
        <signal name="res(31:0)" />
        <signal name="ALU_operation(3)" />
        <signal name="ALU_operation(2:0)" />
        <signal name="ALU_operation(3:0)" />
        <signal name="ALU_operation(2)" />
        <signal name="S(32:0)" />
        <signal name="XLXN_60(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <port polarity="Output" name="res(31:0)" />
        <port polarity="Input" name="ALU_operation(3:0)" />
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
        <blockdef name="SignalExt_32">
            <timestamp>2015-6-25T6:52:52</timestamp>
            <line x2="12" y1="-32" y2="-32" x1="0" />
            <line x2="144" y1="-32" y2="-32" style="linewidth:W" x1="132" />
            <rect width="120" x="12" y="-52" height="40" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <blockdef name="or32">
            <timestamp>2019-3-19T7:10:38</timestamp>
            <line x2="64" y1="-16" y2="-16" x1="128" />
            <arc ex="208" ey="-64" sx="128" sy="-16" r="88" cx="132" cy="-104" />
            <arc ex="128" ey="-112" sx="208" sy="-64" r="88" cx="132" cy="-24" />
            <line x2="236" y1="-64" y2="-64" style="linewidth:W" x1="208" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-96" y2="-96" style="linewidth:W" x1="80" />
            <arc ex="64" ey="-112" sx="64" sy="-16" r="56" cx="32" cy="-64" />
            <line x2="48" y1="-32" y2="-32" style="linewidth:W" x1="80" />
        </blockdef>
        <blockdef name="sll32">
            <timestamp>2019-9-23T9:24:16</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2019-9-23T9:29:24</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="calcover">
            <timestamp>2019-10-3T8:33:36</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="slt32">
            <timestamp>2019-10-6T14:19:1</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="and32" name="XLXI_1">
            <blockpin signalname="XLXN_49(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="ADC32" name="XLXI_3">
            <blockpin signalname="XLXN_13(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="C0" />
            <blockpin signalname="S(32:0)" name="S(32:0)" />
        </block>
        <block symbolname="xor32" name="XLXI_4">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_26(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="nor32" name="XLXI_5">
            <blockpin signalname="XLXN_29(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="srl32" name="XLXI_6">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_30(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="xor32" name="XLXI_7">
            <blockpin signalname="XLXN_17(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="SignalExt_32" name="XLXI_9">
            <blockpin signalname="XLXN_17(31:0)" name="So(31:0)" />
            <blockpin signalname="ALU_operation(2)" name="S" />
        </block>
        <block symbolname="MUX8T1_32" name="XLXI_10">
            <blockpin signalname="ALU_operation(2:0)" name="s(2:0)" />
            <blockpin signalname="XLXN_60(31:0)" name="I7(31:0)" />
            <blockpin signalname="S(31:0)" name="I6(31:0)" />
            <blockpin signalname="XLXN_30(31:0)" name="I5(31:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="I4(31:0)" />
            <blockpin signalname="XLXN_26(31:0)" name="I3(31:0)" />
            <blockpin signalname="S(31:0)" name="I2(31:0)" />
            <blockpin signalname="XLXN_50(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_49(31:0)" name="I0(31:0)" />
            <blockpin signalname="tmp(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="or_bit_32" name="XLXI_14">
            <blockpin signalname="zero" name="o" />
            <blockpin signalname="tmp(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="or32" name="XLXI_16">
            <blockpin signalname="XLXN_50(31:0)" name="res(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
        </block>
        <block symbolname="sll32" name="XLXI_17">
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="shamt(31:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_19">
            <blockpin signalname="ALU_operation(3)" name="s" />
            <blockpin signalname="tmp(31:0)" name="I0(31:0)" />
            <blockpin signalname="XLXN_54(31:0)" name="I1(31:0)" />
            <blockpin signalname="res(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="calcover" name="XLXI_20">
            <blockpin signalname="ALU_operation(2)" name="C0" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="overflow" name="overflow" />
        </block>
        <block symbolname="slt32" name="XLXI_22">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_60(31:0)" name="o(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="512" name="XLXI_1" orien="R0">
        </instance>
        <instance x="976" y="1168" name="XLXI_3" orien="R0">
        </instance>
        <instance x="960" y="1312" name="XLXI_4" orien="R0">
        </instance>
        <instance x="960" y="1536" name="XLXI_5" orien="R0">
        </instance>
        <instance x="960" y="1776" name="XLXI_6" orien="R0">
        </instance>
        <instance x="416" y="1104" name="XLXI_7" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <wire x2="960" y1="416" y2="416" x1="240" />
            <wire x2="1024" y1="416" y2="416" x1="960" />
            <wire x2="960" y1="416" y2="640" x1="960" />
            <wire x2="1024" y1="640" y2="640" x1="960" />
            <wire x2="960" y1="640" y2="912" x1="960" />
            <wire x2="1024" y1="912" y2="912" x1="960" />
            <wire x2="960" y1="912" y2="1216" x1="960" />
            <wire x2="992" y1="1216" y2="1216" x1="960" />
            <wire x2="960" y1="1216" y2="1440" x1="960" />
            <wire x2="1008" y1="1440" y2="1440" x1="960" />
            <wire x2="960" y1="1440" y2="1616" x1="960" />
            <wire x2="960" y1="1616" y2="1680" x1="960" />
            <wire x2="992" y1="1680" y2="1680" x1="960" />
            <wire x2="960" y1="1680" y2="2000" x1="960" />
            <wire x2="992" y1="2000" y2="2000" x1="960" />
            <wire x2="960" y1="2000" y2="2208" x1="960" />
            <wire x2="992" y1="2208" y2="2208" x1="960" />
            <wire x2="1648" y1="1616" y2="1616" x1="960" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="880" y1="1744" y2="1744" x1="368" />
            <wire x2="992" y1="1744" y2="1744" x1="880" />
            <wire x2="880" y1="1744" y2="1824" x1="880" />
            <wire x2="1584" y1="1824" y2="1824" x1="880" />
            <wire x2="880" y1="1824" y2="1936" x1="880" />
            <wire x2="992" y1="1936" y2="1936" x1="880" />
            <wire x2="880" y1="1936" y2="2272" x1="880" />
            <wire x2="992" y1="2272" y2="2272" x1="880" />
            <wire x2="448" y1="1072" y2="1072" x1="400" />
            <wire x2="400" y1="1072" y2="1504" x1="400" />
            <wire x2="880" y1="1504" y2="1504" x1="400" />
            <wire x2="1008" y1="1504" y2="1504" x1="880" />
            <wire x2="880" y1="1504" y2="1744" x1="880" />
            <wire x2="1024" y1="480" y2="480" x1="880" />
            <wire x2="880" y1="480" y2="704" x1="880" />
            <wire x2="1024" y1="704" y2="704" x1="880" />
            <wire x2="880" y1="704" y2="1280" x1="880" />
            <wire x2="992" y1="1280" y2="1280" x1="880" />
            <wire x2="880" y1="1280" y2="1504" x1="880" />
            <wire x2="1648" y1="1680" y2="1680" x1="1584" />
            <wire x2="1584" y1="1680" y2="1824" x1="1584" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="1024" y1="1040" y2="1040" x1="672" />
        </branch>
        <iomarker fontsize="28" x="240" y="416" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="1744" name="B(31:0)" orien="R180" />
        <instance x="368" y="848" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_17(31:0)">
            <wire x2="368" y1="912" y2="1008" x1="368" />
            <wire x2="448" y1="1008" y2="1008" x1="368" />
            <wire x2="592" y1="912" y2="912" x1="368" />
            <wire x2="592" y1="816" y2="816" x1="512" />
            <wire x2="592" y1="816" y2="912" x1="592" />
        </branch>
        <bustap x2="480" y1="288" y2="384" x1="480" />
        <instance x="1712" y="944" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_26(31:0)">
            <wire x2="1424" y1="1248" y2="1248" x1="1216" />
            <wire x2="1424" y1="800" y2="1248" x1="1424" />
            <wire x2="1712" y1="800" y2="800" x1="1424" />
        </branch>
        <branch name="XLXN_29(31:0)">
            <wire x2="1472" y1="1472" y2="1472" x1="1216" />
            <wire x2="1472" y1="832" y2="1472" x1="1472" />
            <wire x2="1712" y1="832" y2="832" x1="1472" />
        </branch>
        <branch name="XLXN_30(31:0)">
            <wire x2="1552" y1="1712" y2="1712" x1="1248" />
            <wire x2="1712" y1="864" y2="864" x1="1552" />
            <wire x2="1552" y1="864" y2="1712" x1="1552" />
        </branch>
        <bustap x2="1360" y1="976" y2="976" x1="1264" />
        <branch name="S(31:0)">
            <wire x2="1376" y1="976" y2="976" x1="1360" />
            <wire x2="1536" y1="976" y2="976" x1="1376" />
            <wire x2="1712" y1="768" y2="768" x1="1376" />
            <wire x2="1376" y1="768" y2="976" x1="1376" />
            <wire x2="1536" y1="896" y2="976" x1="1536" />
            <wire x2="1712" y1="896" y2="896" x1="1536" />
        </branch>
        <instance x="1712" y="1280" name="XLXI_12" orien="R0" />
        <branch name="tmp(31:0)">
            <wire x2="2160" y1="784" y2="784" x1="1808" />
            <wire x2="2368" y1="784" y2="784" x1="2160" />
            <wire x2="2160" y1="784" y2="1152" x1="2160" />
            <wire x2="2272" y1="1152" y2="1152" x1="2160" />
            <wire x2="2208" y1="480" y2="480" x1="2144" />
            <wire x2="2144" y1="480" y2="640" x1="2144" />
            <wire x2="2368" y1="640" y2="640" x1="2144" />
            <wire x2="2368" y1="640" y2="784" x1="2368" />
        </branch>
        <instance x="2240" y="1200" name="XLXI_14" orien="R0">
        </instance>
        <branch name="zero">
            <wire x2="2624" y1="1152" y2="1152" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1152" name="zero" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1088" type="branch" />
            <wire x2="1776" y1="1088" y2="1152" x1="1776" />
        </branch>
        <branch name="XLXN_49(31:0)">
            <wire x2="1456" y1="448" y2="448" x1="1216" />
            <wire x2="1456" y1="448" y2="704" x1="1456" />
            <wire x2="1712" y1="704" y2="704" x1="1456" />
        </branch>
        <branch name="XLXN_50(31:0)">
            <wire x2="1424" y1="672" y2="672" x1="1216" />
            <wire x2="1424" y1="672" y2="736" x1="1424" />
            <wire x2="1712" y1="736" y2="736" x1="1424" />
        </branch>
        <instance x="976" y="736" name="XLXI_16" orien="R0">
        </instance>
        <instance x="2208" y="576" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_54(31:0)">
            <wire x2="2192" y1="1936" y2="1936" x1="1376" />
            <wire x2="2208" y1="544" y2="544" x1="2192" />
            <wire x2="2192" y1="544" y2="1936" x1="2192" />
        </branch>
        <branch name="res(31:0)">
            <wire x2="2880" y1="416" y2="416" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2880" y="416" name="res(31:0)" orien="R0" />
        <branch name="ALU_operation(3)">
            <wire x2="2144" y1="176" y2="176" x1="1728" />
            <wire x2="2144" y1="176" y2="416" x1="2144" />
            <wire x2="2208" y1="416" y2="416" x1="2144" />
        </branch>
        <branch name="ALU_operation(2:0)">
            <wire x2="288" y1="176" y2="240" x1="288" />
            <wire x2="480" y1="240" y2="240" x1="288" />
            <wire x2="480" y1="240" y2="288" x1="480" />
            <wire x2="496" y1="288" y2="288" x1="480" />
            <wire x2="1760" y1="240" y2="240" x1="480" />
            <wire x2="1760" y1="240" y2="672" x1="1760" />
            <wire x2="480" y1="288" y2="288" x1="464" />
        </branch>
        <branch name="ALU_operation(3:0)">
            <wire x2="288" y1="80" y2="80" x1="208" />
            <wire x2="1728" y1="80" y2="80" x1="288" />
            <wire x2="1776" y1="80" y2="80" x1="1728" />
        </branch>
        <bustap x2="288" y1="80" y2="176" x1="288" />
        <iomarker fontsize="28" x="208" y="80" name="ALU_operation(3:0)" orien="R180" />
        <bustap x2="1728" y1="80" y2="176" x1="1728" />
        <instance x="992" y="2032" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2528" y="1552" name="overflow" orien="R0" />
        <branch name="overflow">
            <wire x2="2528" y1="1552" y2="1552" x1="2032" />
        </branch>
        <branch name="ALU_operation(2)">
            <wire x2="304" y1="736" y2="816" x1="304" />
            <wire x2="368" y1="816" y2="816" x1="304" />
            <wire x2="304" y1="816" y2="1552" x1="304" />
            <wire x2="1648" y1="1552" y2="1552" x1="304" />
            <wire x2="480" y1="736" y2="736" x1="304" />
            <wire x2="1104" y1="736" y2="736" x1="480" />
            <wire x2="1104" y1="736" y2="864" x1="1104" />
            <wire x2="480" y1="384" y2="736" x1="480" />
        </branch>
        <branch name="S(32:0)">
            <wire x2="1264" y1="976" y2="976" x1="1216" />
        </branch>
        <instance x="1648" y="1712" name="XLXI_20" orien="R0">
        </instance>
        <instance x="992" y="2304" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_60(31:0)">
            <wire x2="2064" y1="2208" y2="2208" x1="1376" />
            <wire x2="1712" y1="928" y2="928" x1="1632" />
            <wire x2="1632" y1="928" y2="1024" x1="1632" />
            <wire x2="2064" y1="1024" y2="1024" x1="1632" />
            <wire x2="2064" y1="1024" y2="2208" x1="2064" />
        </branch>
    </sheet>
</drawing>