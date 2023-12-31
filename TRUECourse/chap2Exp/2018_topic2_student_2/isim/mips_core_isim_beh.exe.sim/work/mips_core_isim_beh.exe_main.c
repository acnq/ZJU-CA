/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000746675750_3092946469_init();
    work_m_00000000002799876866_1621107508_init();
    work_m_00000000002643049605_2725559894_init();
    work_m_00000000003554727543_3027548060_init();
    work_m_00000000002084709448_1602209333_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002084709448_1602209333");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
