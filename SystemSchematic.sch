<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="ENABLE" />
        <signal name="reset" />
        <signal name="save" />
        <signal name="load" />
        <signal name="SegEnable" />
        <signal name="Segments(6:0)" />
        <signal name="bits(2:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_19" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_28(3:0)" />
        <signal name="XLXN_29(3:0)" />
        <signal name="XLXN_30(3:0)" />
        <signal name="XLXN_31(3:0)" />
        <signal name="XLXN_32(3:0)" />
        <signal name="XLXN_33(3:0)" />
        <signal name="XLXN_35" />
        <signal name="XLXN_42" />
        <signal name="XLXN_48" />
        <signal name="XLXN_54" />
        <signal name="XLXN_62" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="ENABLE" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="save" />
        <port polarity="Input" name="load" />
        <port polarity="Output" name="SegEnable" />
        <port polarity="Output" name="Segments(6:0)" />
        <port polarity="Output" name="bits(2:0)" />
        <blockdef name="clock">
            <timestamp>2017-11-1T10:6:6</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="InputBuffer">
            <timestamp>2017-11-1T10:5:58</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="counter10">
            <timestamp>2017-11-1T10:51:52</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="counter6">
            <timestamp>2017-11-1T10:52:6</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="multiplexer">
            <timestamp>2017-11-1T10:5:46</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clock" name="XLXI_1">
            <blockpin signalname="clk" name="clkin" />
            <blockpin signalname="XLXN_62" name="clk1k" />
            <blockpin signalname="XLXN_12" name="clk100" />
        </block>
        <block symbolname="InputBuffer" name="XLXI_2">
            <blockpin signalname="XLXN_62" name="clk" />
            <blockpin signalname="ENABLE" name="sin" />
            <blockpin signalname="XLXN_35" name="sout" />
        </block>
        <block symbolname="counter10" name="XLXI_3">
            <blockpin signalname="XLXN_35" name="enable" />
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_12" name="clk" />
            <blockpin signalname="XLXN_48" name="save" />
            <blockpin signalname="XLXN_54" name="load" />
            <blockpin signalname="XLXN_33(3:0)" name="out10(3:0)" />
            <blockpin signalname="XLXN_13" name="carry" />
        </block>
        <block symbolname="counter10" name="XLXI_4">
            <blockpin signalname="XLXN_35" name="enable" />
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_14" name="clk" />
            <blockpin signalname="XLXN_48" name="save" />
            <blockpin signalname="XLXN_54" name="load" />
            <blockpin signalname="XLXN_31(3:0)" name="out10(3:0)" />
            <blockpin signalname="XLXN_19" name="carry" />
        </block>
        <block symbolname="counter10" name="XLXI_5">
            <blockpin signalname="XLXN_35" name="enable" />
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_21" name="clk" />
            <blockpin signalname="XLXN_48" name="save" />
            <blockpin signalname="XLXN_54" name="load" />
            <blockpin signalname="XLXN_29(3:0)" name="out10(3:0)" />
            <blockpin signalname="XLXN_22" name="carry" />
        </block>
        <block symbolname="counter6" name="XLXI_6">
            <blockpin signalname="XLXN_35" name="enable" />
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_48" name="save" />
            <blockpin signalname="XLXN_54" name="load" />
            <blockpin signalname="XLXN_13" name="clk" />
            <blockpin signalname="XLXN_32(3:0)" name="out6(3:0)" />
            <blockpin signalname="XLXN_14" name="carry" />
        </block>
        <block symbolname="counter6" name="XLXI_7">
            <blockpin signalname="XLXN_35" name="enable" />
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_48" name="save" />
            <blockpin signalname="XLXN_54" name="load" />
            <blockpin signalname="XLXN_19" name="clk" />
            <blockpin signalname="XLXN_30(3:0)" name="out6(3:0)" />
            <blockpin signalname="XLXN_21" name="carry" />
        </block>
        <block symbolname="counter6" name="XLXI_8">
            <blockpin signalname="XLXN_35" name="enable" />
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_48" name="save" />
            <blockpin signalname="XLXN_54" name="load" />
            <blockpin signalname="XLXN_22" name="clk" />
            <blockpin signalname="XLXN_28(3:0)" name="out6(3:0)" />
            <blockpin name="carry" />
        </block>
        <block symbolname="multiplexer" name="XLXI_9">
            <blockpin signalname="XLXN_62" name="clk" />
            <blockpin signalname="XLXN_33(3:0)" name="in1(3:0)" />
            <blockpin signalname="XLXN_32(3:0)" name="in2(3:0)" />
            <blockpin signalname="XLXN_31(3:0)" name="in3(3:0)" />
            <blockpin signalname="XLXN_30(3:0)" name="in4(3:0)" />
            <blockpin signalname="XLXN_29(3:0)" name="in5(3:0)" />
            <blockpin signalname="XLXN_28(3:0)" name="in6(3:0)" />
            <blockpin signalname="SegEnable" name="SegmentEnable" />
            <blockpin signalname="Segments(6:0)" name="segments(6:0)" />
            <blockpin signalname="bits(2:0)" name="bits(2:0)" />
        </block>
        <block symbolname="InputBuffer" name="XLXI_10">
            <blockpin signalname="XLXN_62" name="clk" />
            <blockpin signalname="reset" name="sin" />
            <blockpin signalname="XLXN_42" name="sout" />
        </block>
        <block symbolname="InputBuffer" name="XLXI_11">
            <blockpin signalname="XLXN_62" name="clk" />
            <blockpin signalname="save" name="sin" />
            <blockpin signalname="XLXN_48" name="sout" />
        </block>
        <block symbolname="InputBuffer" name="XLXI_12">
            <blockpin signalname="XLXN_62" name="clk" />
            <blockpin signalname="load" name="sin" />
            <blockpin signalname="XLXN_54" name="sout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="160" y1="528" y2="528" x1="144" />
        </branch>
        <branch name="ENABLE">
            <wire x2="768" y1="192" y2="192" x1="688" />
        </branch>
        <branch name="save">
            <wire x2="272" y1="1632" y2="1632" x1="256" />
        </branch>
        <branch name="load">
            <wire x2="272" y1="2192" y2="2192" x1="224" />
        </branch>
        <instance x="2688" y="1488" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="144" y="528" name="clk" orien="R180" />
        <instance x="160" y="624" name="XLXI_1" orien="R0">
        </instance>
        <branch name="reset">
            <wire x2="272" y1="976" y2="976" x1="256" />
            <wire x2="256" y1="976" y2="1056" x1="256" />
            <wire x2="304" y1="1056" y2="1056" x1="256" />
        </branch>
        <branch name="SegEnable">
            <wire x2="3104" y1="1072" y2="1072" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1072" name="SegEnable" orien="R0" />
        <branch name="Segments(6:0)">
            <wire x2="3104" y1="1264" y2="1264" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1264" name="Segments(6:0)" orien="R0" />
        <branch name="bits(2:0)">
            <wire x2="3104" y1="1456" y2="1456" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1456" name="bits(2:0)" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1200" y1="592" y2="592" x1="544" />
            <wire x2="1200" y1="256" y2="592" x1="1200" />
            <wire x2="1344" y1="256" y2="256" x1="1200" />
        </branch>
        <instance x="1984" y="736" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_13">
            <wire x2="1776" y1="128" y2="128" x1="1728" />
            <wire x2="1776" y1="128" y2="704" x1="1776" />
            <wire x2="1984" y1="704" y2="704" x1="1776" />
        </branch>
        <instance x="1344" y="416" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1984" y="1696" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_19">
            <wire x2="1744" y1="1104" y2="1104" x1="1648" />
            <wire x2="1744" y1="1104" y2="1664" x1="1744" />
            <wire x2="1984" y1="1664" y2="1664" x1="1744" />
        </branch>
        <instance x="1264" y="1392" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="1200" y1="992" y2="1232" x1="1200" />
            <wire x2="1264" y1="1232" y2="1232" x1="1200" />
            <wire x2="2384" y1="992" y2="992" x1="1200" />
            <wire x2="2384" y1="576" y2="576" x1="2368" />
            <wire x2="2384" y1="576" y2="992" x1="2384" />
        </branch>
        <instance x="1248" y="2272" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_21">
            <wire x2="2384" y1="1888" y2="1888" x1="1184" />
            <wire x2="1184" y1="1888" y2="2112" x1="1184" />
            <wire x2="1248" y1="2112" y2="2112" x1="1184" />
            <wire x2="2384" y1="1536" y2="1536" x1="2368" />
            <wire x2="2384" y1="1536" y2="1888" x1="2384" />
        </branch>
        <instance x="1984" y="2544" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_22">
            <wire x2="1712" y1="1984" y2="1984" x1="1632" />
            <wire x2="1712" y1="1984" y2="2512" x1="1712" />
            <wire x2="1984" y1="2512" y2="2512" x1="1712" />
        </branch>
        <branch name="XLXN_28(3:0)">
            <wire x2="2528" y1="2512" y2="2512" x1="2368" />
            <wire x2="2528" y1="1456" y2="2512" x1="2528" />
            <wire x2="2688" y1="1456" y2="1456" x1="2528" />
        </branch>
        <branch name="XLXN_29(3:0)">
            <wire x2="1664" y1="2240" y2="2240" x1="1632" />
            <wire x2="1664" y1="1392" y2="2240" x1="1664" />
            <wire x2="2688" y1="1392" y2="1392" x1="1664" />
        </branch>
        <branch name="XLXN_30(3:0)">
            <wire x2="2512" y1="1664" y2="1664" x1="2368" />
            <wire x2="2512" y1="1328" y2="1664" x1="2512" />
            <wire x2="2688" y1="1328" y2="1328" x1="2512" />
        </branch>
        <branch name="XLXN_31(3:0)">
            <wire x2="2160" y1="1360" y2="1360" x1="1648" />
            <wire x2="2160" y1="1264" y2="1360" x1="2160" />
            <wire x2="2688" y1="1264" y2="1264" x1="2160" />
        </branch>
        <branch name="XLXN_32(3:0)">
            <wire x2="2528" y1="704" y2="704" x1="2368" />
            <wire x2="2528" y1="704" y2="1200" x1="2528" />
            <wire x2="2688" y1="1200" y2="1200" x1="2528" />
        </branch>
        <branch name="XLXN_33(3:0)">
            <wire x2="1808" y1="384" y2="384" x1="1728" />
            <wire x2="1808" y1="384" y2="1136" x1="1808" />
            <wire x2="2688" y1="1136" y2="1136" x1="1808" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1248" y1="128" y2="128" x1="1152" />
            <wire x2="1344" y1="128" y2="128" x1="1248" />
            <wire x2="1248" y1="128" y2="576" x1="1248" />
            <wire x2="1984" y1="576" y2="576" x1="1248" />
            <wire x2="1248" y1="576" y2="1104" x1="1248" />
            <wire x2="1264" y1="1104" y2="1104" x1="1248" />
            <wire x2="1248" y1="1104" y2="1104" x1="1168" />
            <wire x2="1168" y1="1104" y2="1536" x1="1168" />
            <wire x2="1168" y1="1536" y2="1984" x1="1168" />
            <wire x2="1248" y1="1984" y2="1984" x1="1168" />
            <wire x2="1168" y1="1984" y2="2384" x1="1168" />
            <wire x2="1984" y1="2384" y2="2384" x1="1168" />
            <wire x2="1984" y1="1536" y2="1536" x1="1168" />
        </branch>
        <instance x="768" y="224" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="688" y="192" name="ENABLE" orien="R180" />
        <branch name="XLXN_54">
            <wire x2="1024" y1="2128" y2="2128" x1="656" />
            <wire x2="1024" y1="2128" y2="2240" x1="1024" />
            <wire x2="1248" y1="2240" y2="2240" x1="1024" />
            <wire x2="1024" y1="2240" y2="2640" x1="1024" />
            <wire x2="1984" y1="2640" y2="2640" x1="1024" />
            <wire x2="1344" y1="384" y2="384" x1="1024" />
            <wire x2="1024" y1="384" y2="832" x1="1024" />
            <wire x2="1984" y1="832" y2="832" x1="1024" />
            <wire x2="1024" y1="832" y2="1360" x1="1024" />
            <wire x2="1264" y1="1360" y2="1360" x1="1024" />
            <wire x2="1024" y1="1360" y2="1792" x1="1024" />
            <wire x2="1024" y1="1792" y2="1808" x1="1024" />
            <wire x2="1024" y1="1808" y2="2128" x1="1024" />
            <wire x2="1984" y1="1792" y2="1792" x1="1024" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1088" y1="1568" y2="1568" x1="656" />
            <wire x2="1088" y1="1568" y2="1728" x1="1088" />
            <wire x2="1984" y1="1728" y2="1728" x1="1088" />
            <wire x2="1088" y1="1728" y2="2176" x1="1088" />
            <wire x2="1088" y1="2176" y2="2576" x1="1088" />
            <wire x2="1984" y1="2576" y2="2576" x1="1088" />
            <wire x2="1248" y1="2176" y2="2176" x1="1088" />
            <wire x2="1344" y1="320" y2="320" x1="1088" />
            <wire x2="1088" y1="320" y2="768" x1="1088" />
            <wire x2="1088" y1="768" y2="1296" x1="1088" />
            <wire x2="1264" y1="1296" y2="1296" x1="1088" />
            <wire x2="1088" y1="1296" y2="1568" x1="1088" />
            <wire x2="1984" y1="768" y2="768" x1="1088" />
        </branch>
        <instance x="272" y="1008" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_42">
            <wire x2="928" y1="912" y2="912" x1="656" />
            <wire x2="928" y1="784" y2="912" x1="928" />
            <wire x2="1216" y1="784" y2="784" x1="928" />
            <wire x2="1216" y1="784" y2="1168" x1="1216" />
            <wire x2="1216" y1="1168" y2="1600" x1="1216" />
            <wire x2="1984" y1="1600" y2="1600" x1="1216" />
            <wire x2="1216" y1="1600" y2="2048" x1="1216" />
            <wire x2="1248" y1="2048" y2="2048" x1="1216" />
            <wire x2="1216" y1="2048" y2="2448" x1="1216" />
            <wire x2="1984" y1="2448" y2="2448" x1="1216" />
            <wire x2="1264" y1="1168" y2="1168" x1="1216" />
            <wire x2="1344" y1="192" y2="192" x1="1216" />
            <wire x2="1216" y1="192" y2="640" x1="1216" />
            <wire x2="1216" y1="640" y2="784" x1="1216" />
            <wire x2="1984" y1="640" y2="640" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="224" y="2192" name="load" orien="R180" />
        <instance x="272" y="2224" name="XLXI_12" orien="R0">
        </instance>
        <instance x="272" y="1664" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_62">
            <wire x2="192" y1="1568" y2="1568" x1="80" />
            <wire x2="272" y1="1568" y2="1568" x1="192" />
            <wire x2="80" y1="1568" y2="2128" x1="80" />
            <wire x2="272" y1="2128" y2="2128" x1="80" />
            <wire x2="192" y1="816" y2="912" x1="192" />
            <wire x2="272" y1="912" y2="912" x1="192" />
            <wire x2="192" y1="912" y2="1568" x1="192" />
            <wire x2="768" y1="816" y2="816" x1="192" />
            <wire x2="768" y1="528" y2="528" x1="544" />
            <wire x2="1664" y1="528" y2="528" x1="768" />
            <wire x2="1664" y1="528" y2="1072" x1="1664" />
            <wire x2="2688" y1="1072" y2="1072" x1="1664" />
            <wire x2="768" y1="528" y2="816" x1="768" />
            <wire x2="768" y1="128" y2="128" x1="704" />
            <wire x2="704" y1="128" y2="288" x1="704" />
            <wire x2="768" y1="288" y2="288" x1="704" />
            <wire x2="768" y1="288" y2="528" x1="768" />
        </branch>
        <iomarker fontsize="28" x="304" y="1056" name="reset" orien="R0" />
        <iomarker fontsize="28" x="256" y="1632" name="save" orien="R180" />
    </sheet>
</drawing>