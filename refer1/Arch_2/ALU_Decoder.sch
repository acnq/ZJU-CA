<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="ALUOp(1)" />
        <signal name="XLXN_5" />
        <signal name="Fun(5:0)" />
        <signal name="Fun(0)" />
        <signal name="Fun(1)" />
        <signal name="Fun(3)" />
        <signal name="Fun(2)" />
        <signal name="ALUOp(1:0)" />
        <signal name="ALUOp(0)" />
        <signal name="ALU_Control(2:0)" />
        <signal name="ALU_Control(2)" />
        <signal name="ALU_Control(1)" />
        <signal name="ALU_Control(0)" />
        <port polarity="Input" name="Fun(5:0)" />
        <port polarity="Input" name="ALUOp(1:0)" />
        <port polarity="Output" name="ALU_Control(2:0)" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="ALUOp(1)" name="I0" />
            <blockpin signalname="Fun(1)" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="ALUOp(1)" name="I1" />
            <blockpin signalname="ALU_Control(0)" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_3">
            <blockpin signalname="Fun(1)" name="I0" />
            <blockpin signalname="Fun(0)" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="Fun(3)" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="ALUOp(0)" name="I1" />
            <blockpin signalname="ALU_Control(2)" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_6">
            <blockpin signalname="Fun(2)" name="I0" />
            <blockpin signalname="ALUOp(1)" name="I1" />
            <blockpin signalname="ALU_Control(1)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <instance x="496" y="512" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="864" y1="416" y2="416" x1="752" />
        </branch>
        <instance x="864" y="480" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="864" y1="768" y2="768" x1="752" />
        </branch>
        <branch name="ALUOp(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="404" y="448" type="branch" />
            <wire x2="400" y1="448" y2="448" x1="384" />
            <wire x2="416" y1="448" y2="448" x1="400" />
            <wire x2="432" y1="448" y2="448" x1="416" />
            <wire x2="496" y1="448" y2="448" x1="432" />
            <wire x2="432" y1="448" y2="528" x1="432" />
            <wire x2="480" y1="528" y2="528" x1="432" />
            <wire x2="816" y1="528" y2="528" x1="480" />
            <wire x2="816" y1="528" y2="704" x1="816" />
            <wire x2="864" y1="704" y2="704" x1="816" />
            <wire x2="848" y1="528" y2="528" x1="816" />
        </branch>
        <instance x="848" y="656" name="XLXI_6" orien="R0" />
        <instance x="496" y="864" name="XLXI_4" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="800" y1="672" y2="672" x1="432" />
            <wire x2="432" y1="672" y2="688" x1="432" />
            <wire x2="432" y1="688" y2="736" x1="432" />
            <wire x2="480" y1="736" y2="736" x1="432" />
            <wire x2="496" y1="736" y2="736" x1="480" />
            <wire x2="800" y1="592" y2="592" x1="752" />
            <wire x2="800" y1="592" y2="672" x1="800" />
        </branch>
        <instance x="864" y="832" name="XLXI_2" orien="R0" />
        <branch name="Fun(5:0)">
            <wire x2="288" y1="800" y2="800" x1="224" />
            <wire x2="288" y1="560" y2="624" x1="288" />
            <wire x2="288" y1="624" y2="688" x1="288" />
            <wire x2="288" y1="688" y2="704" x1="288" />
            <wire x2="288" y1="704" y2="800" x1="288" />
        </branch>
        <bustap x2="384" y1="560" y2="560" x1="288" />
        <branch name="Fun(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="428" y="560" type="branch" />
            <wire x2="400" y1="560" y2="560" x1="384" />
            <wire x2="432" y1="560" y2="560" x1="400" />
            <wire x2="496" y1="560" y2="560" x1="432" />
        </branch>
        <bustap x2="384" y1="624" y2="624" x1="288" />
        <branch name="Fun(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="411" y="624" type="branch" />
            <wire x2="400" y1="624" y2="624" x1="384" />
            <wire x2="416" y1="624" y2="624" x1="400" />
            <wire x2="448" y1="624" y2="624" x1="416" />
            <wire x2="496" y1="624" y2="624" x1="448" />
            <wire x2="496" y1="384" y2="384" x1="448" />
            <wire x2="448" y1="384" y2="624" x1="448" />
        </branch>
        <bustap x2="384" y1="800" y2="800" x1="288" />
        <branch name="Fun(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="402" y="800" type="branch" />
            <wire x2="400" y1="800" y2="800" x1="384" />
            <wire x2="496" y1="800" y2="800" x1="400" />
        </branch>
        <branch name="Fun(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="416" y="688" type="branch" />
            <wire x2="416" y1="688" y2="688" x1="384" />
            <wire x2="528" y1="688" y2="688" x1="416" />
            <wire x2="832" y1="688" y2="688" x1="528" />
            <wire x2="848" y1="592" y2="592" x1="832" />
            <wire x2="832" y1="592" y2="688" x1="832" />
        </branch>
        <instance x="496" y="688" name="XLXI_3" orien="R0" />
        <bustap x2="384" y1="688" y2="688" x1="288" />
        <branch name="ALUOp(1:0)">
            <wire x2="288" y1="352" y2="352" x1="192" />
            <wire x2="288" y1="352" y2="448" x1="288" />
        </branch>
        <bustap x2="384" y1="352" y2="352" x1="288" />
        <branch name="ALUOp(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="412" y="352" type="branch" />
            <wire x2="416" y1="352" y2="352" x1="384" />
            <wire x2="864" y1="352" y2="352" x1="416" />
        </branch>
        <bustap x2="384" y1="448" y2="448" x1="288" />
        <iomarker fontsize="28" x="192" y="352" name="ALUOp(1:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="800" name="Fun(5:0)" orien="R180" />
        <branch name="ALU_Control(2:0)">
            <wire x2="1312" y1="384" y2="384" x1="1232" />
            <wire x2="1232" y1="384" y2="560" x1="1232" />
            <wire x2="1232" y1="560" y2="736" x1="1232" />
        </branch>
        <branch name="ALU_Control(2)">
            <wire x2="1136" y1="384" y2="384" x1="1120" />
        </branch>
        <bustap x2="1136" y1="560" y2="560" x1="1232" />
        <branch name="ALU_Control(1)">
            <wire x2="1136" y1="560" y2="560" x1="1104" />
        </branch>
        <bustap x2="1136" y1="736" y2="736" x1="1232" />
        <branch name="ALU_Control(0)">
            <wire x2="1136" y1="736" y2="736" x1="1120" />
        </branch>
        <bustap x2="1136" y1="384" y2="384" x1="1232" />
        <iomarker fontsize="28" x="1312" y="384" name="ALU_Control(2:0)" orien="R0" />
    </sheet>
</drawing>