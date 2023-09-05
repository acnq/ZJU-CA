always @(*) begin //addded EXE_A/B_IR; in chap 6
		opa_exe = fwda_exe;
		opb_exe = fwdb_exe;
		case (exe_a_src_exe)//0-1
			EXE_A_RS: opa_exe = fwda_exe;//
			EXE_A_NEXT: opa_exe = inst_addr_next_exe;//
			EXE_A_SA: opa_exe={27'b0, inst_data_exe[10:6]};//?
			EXE_A_IR: opa_exe = cp0_data_r_exe;////
			//EXE_A_BRANCH: opa_exe = inst_addr_next_exe;
			default:;
		endcase
		case (exe_b_src_exe)//0-2
			EXE_B_IMM: opb_exe = data_imm_exe;//
			EXE_B_FOUR: opb_exe = 3'h4;  //
			EXE_B_RT: opb_exe = fwdb_exe;//
			EXE_B_IR: opb_exe = 0;////
			//EXE_B_BRANCH: opb_exe = {data_imm_exe[29:0], 2'b0};
		endcase