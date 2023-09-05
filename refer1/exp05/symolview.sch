<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="datapath">
            <timestamp>2019-10-11T4:56:15</timestamp>
            <rect width="464" x="64" y="-1536" height="1536" />
            <line x2="0" y1="-1504" y2="-1504" x1="64" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
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
            <line x2="592" y1="-1504" y2="-1504" x1="528" />
            <line x2="592" y1="-1424" y2="-1424" x1="528" />
            <line x2="592" y1="-1344" y2="-1344" x1="528" />
            <line x2="592" y1="-1264" y2="-1264" x1="528" />
            <line x2="592" y1="-1184" y2="-1184" x1="528" />
            <line x2="592" y1="-1104" y2="-1104" x1="528" />
            <line x2="592" y1="-1024" y2="-1024" x1="528" />
            <line x2="592" y1="-944" y2="-944" x1="528" />
            <line x2="592" y1="-864" y2="-864" x1="528" />
            <line x2="592" y1="-784" y2="-784" x1="528" />
            <line x2="592" y1="-704" y2="-704" x1="528" />
            <line x2="592" y1="-624" y2="-624" x1="528" />
            <rect width="64" x="528" y="-556" height="24" />
            <line x2="592" y1="-544" y2="-544" x1="528" />
            <rect width="64" x="528" y="-476" height="24" />
            <line x2="592" y1="-464" y2="-464" x1="528" />
            <rect width="64" x="528" y="-396" height="24" />
            <line x2="592" y1="-384" y2="-384" x1="528" />
            <rect width="64" x="528" y="-316" height="24" />
            <line x2="592" y1="-304" y2="-304" x1="528" />
            <rect width="64" x="528" y="-236" height="24" />
            <line x2="592" y1="-224" y2="-224" x1="528" />
            <rect width="64" x="528" y="-156" height="24" />
            <line x2="592" y1="-144" y2="-144" x1="528" />
            <rect width="64" x="528" y="-76" height="24" />
            <line x2="592" y1="-64" y2="-64" x1="528" />
        </blockdef>
        <block symbolname="datapath" name="XLXI_1">
            <blockpin name="clk" />
            <blockpin name="imm_ext_ctrl" />
            <blockpin name="mem_ren_ctrl" />
            <blockpin name="mem_wen_ctrl" />
            <blockpin name="wb_data_src_ctrl" />
            <blockpin name="wb_wen_ctrl" />
            <blockpin name="if_rst" />
            <blockpin name="if_en" />
            <blockpin name="id_rst" />
            <blockpin name="id_en" />
            <blockpin name="exe_rst" />
            <blockpin name="exe_en" />
            <blockpin name="mem_rst" />
            <blockpin name="mem_en" />
            <blockpin name="wb_rst" />
            <blockpin name="wb_en" />
            <blockpin name="debug_addr(5:0)" />
            <blockpin name="pc_src_ctrl(2:0)" />
            <blockpin name="exe_a_src_ctrl(1:0)" />
            <blockpin name="exe_b_src_ctrl(1:0)" />
            <blockpin name="exe_alu_oper_ctrl(3:0)" />
            <blockpin name="wb_addr_src_ctrl(1:0)" />
            <blockpin name="inst_data(31:0)" />
            <blockpin name="mem_din(31:0)" />
            <blockpin name="is_branch_exe" />
            <blockpin name="wb_wen_exe" />
            <blockpin name="is_branch_mem" />
            <blockpin name="wb_wen_mem" />
            <blockpin name="if_valid" />
            <blockpin name="inst_ren" />
            <blockpin name="id_valid" />
            <blockpin name="exe_valid" />
            <blockpin name="mem_valid" />
            <blockpin name="mem_ren" />
            <blockpin name="mem_wen" />
            <blockpin name="wb_valid" />
            <blockpin name="debug_data(31:0)" />
            <blockpin name="inst_data_id(31:0)" />
            <blockpin name="regw_addr_exe(4:0)" />
            <blockpin name="regw_addr_mem(4:0)" />
            <blockpin name="inst_addr(31:0)" />
            <blockpin name="mem_addr(31:0)" />
            <blockpin name="mem_dout(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="2048" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>