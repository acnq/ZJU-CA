    if(rst)begin
			regs[CP0_TCR]=0;
		end
		else begin
			regs[CP0_TCR]=regs[CP0_TCR]+1;
		end


        localparam
    //CP0_SR = 0,
    //CP0_EAR = 1,
    CP0_EPCR = 2,
    CP0_EHBR = 3,
    //CP0_IER = 4,
    //CP0_ICR = 5,
    //CP0_PDBR = 6,
    //CP0_TIR = 7,
    //CP0_WDR = 8;
	 CP0_TCR = 9;////