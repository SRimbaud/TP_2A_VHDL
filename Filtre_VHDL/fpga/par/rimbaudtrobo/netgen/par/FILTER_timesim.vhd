--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FILTER_timesim.vhd
-- /___/   /\     Timestamp: Tue Feb 14 10:10:04 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf FILTER.pcf -rpw 100 -tpw 0 -ar Structure -tm FILTER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim FILTER.ncd FILTER_timesim.vhd 
-- Device	: 3s200ft256-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: FILTER.ncd
-- Output file	: /tp/xph2sic/xph2sic008/TP_VHDL/Filtre_VHDL/fpga/par/rimbaudtrobo/netgen/par/FILTER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: FILTER
-- Xilinx	: /softl2/XILINX/ise_edk_147i/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity FILTER is
  port (
    CLRB : out STD_LOGIC; 
    LDACb : out STD_LOGIC; 
    ADC_Rdb : out STD_LOGIC; 
    Reset : in STD_LOGIC := 'X'; 
    ADC_Convstb : out STD_LOGIC; 
    DAC_csb : out STD_LOGIC; 
    DAC_WRb : out STD_LOGIC; 
    CLK : in STD_LOGIC := 'X'; 
    ADC_csb : out STD_LOGIC; 
    ADC_Eocb : in STD_LOGIC := 'X'; 
    Filter_In : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Filter_Out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end FILTER;

architecture Structure of FILTER is
  signal nx36612z78_0 : STD_LOGIC; 
  signal nx36612z90_0 : STD_LOGIC; 
  signal nx36612z4_0 : STD_LOGIC; 
  signal nx36612z7 : STD_LOGIC; 
  signal nx55179z1 : STD_LOGIC; 
  signal nx60314z1 : STD_LOGIC; 
  signal nx36612z3_0 : STD_LOGIC; 
  signal nx36612z25_0 : STD_LOGIC; 
  signal nx36612z26 : STD_LOGIC; 
  signal nx22501z1 : STD_LOGIC; 
  signal nx43819z1 : STD_LOGIC; 
  signal nx36612z24_0 : STD_LOGIC; 
  signal nx36612z87_0 : STD_LOGIC; 
  signal nx36612z88 : STD_LOGIC; 
  signal nx36612z86_0 : STD_LOGIC; 
  signal nx13444z1 : STD_LOGIC; 
  signal Delay_Line_sample_shift : STD_LOGIC; 
  signal CLK_int : STD_LOGIC; 
  signal Reset_int : STD_LOGIC; 
  signal nx8309z1 : STD_LOGIC; 
  signal nx36612z5 : STD_LOGIC; 
  signal nx36612z6 : STD_LOGIC; 
  signal nx34639z1 : STD_LOGIC; 
  signal nx39774z1 : STD_LOGIC; 
  signal nx36612z19_0 : STD_LOGIC; 
  signal nx36612z2_0 : STD_LOGIC; 
  signal nx36612z20_0 : STD_LOGIC; 
  signal nx36612z38 : STD_LOGIC; 
  signal nx36612z39_0 : STD_LOGIC; 
  signal nx36612z40_0 : STD_LOGIC; 
  signal nx36612z37_0 : STD_LOGIC; 
  signal nx36612z48 : STD_LOGIC; 
  signal nx36612z49_0 : STD_LOGIC; 
  signal nx36612z50_0 : STD_LOGIC; 
  signal nx36612z47_0 : STD_LOGIC; 
  signal nx42426z1 : STD_LOGIC; 
  signal nx36612z16 : STD_LOGIC; 
  signal nx44909z1 : STD_LOGIC; 
  signal nx50044z1 : STD_LOGIC; 
  signal nx47392z1 : STD_LOGIC; 
  signal nx52527z1 : STD_LOGIC; 
  signal nx36612z28_0 : STD_LOGIC; 
  signal nx36612z29 : STD_LOGIC; 
  signal nx63575z1 : STD_LOGIC; 
  signal nx58440z1 : STD_LOGIC; 
  signal nx36612z27_0 : STD_LOGIC; 
  signal nx36612z76 : STD_LOGIC; 
  signal nx36612z75_0 : STD_LOGIC; 
  signal nx36612z33 : STD_LOGIC; 
  signal nx36612z34_0 : STD_LOGIC; 
  signal nx36612z35_0 : STD_LOGIC; 
  signal nx36612z1_0 : STD_LOGIC; 
  signal nx36612z43 : STD_LOGIC; 
  signal nx36612z44_0 : STD_LOGIC; 
  signal nx36612z45_0 : STD_LOGIC; 
  signal nx36612z42_0 : STD_LOGIC; 
  signal nx36612z53 : STD_LOGIC; 
  signal nx36612z54_0 : STD_LOGIC; 
  signal nx36612z55_0 : STD_LOGIC; 
  signal nx36612z52_0 : STD_LOGIC; 
  signal nx36612z63 : STD_LOGIC; 
  signal nx36612z64_0 : STD_LOGIC; 
  signal nx36612z65_0 : STD_LOGIC; 
  signal nx36612z62_0 : STD_LOGIC; 
  signal nx36612z81_0 : STD_LOGIC; 
  signal nx36612z72_0 : STD_LOGIC; 
  signal nx36612z58 : STD_LOGIC; 
  signal nx36612z59_0 : STD_LOGIC; 
  signal nx36612z60_0 : STD_LOGIC; 
  signal nx36612z57_0 : STD_LOGIC; 
  signal nx36612z68 : STD_LOGIC; 
  signal nx36612z69_0 : STD_LOGIC; 
  signal nx36612z70_0 : STD_LOGIC; 
  signal nx36612z67_0 : STD_LOGIC; 
  signal nx56612z2_0 : STD_LOGIC; 
  signal nx56612z3 : STD_LOGIC; 
  signal U6_c_state_1_Q : STD_LOGIC; 
  signal U6_c_state_3_Q : STD_LOGIC; 
  signal U6_c_state_0_Q : STD_LOGIC; 
  signal nx2396z1 : STD_LOGIC; 
  signal nx36032z1 : STD_LOGIC; 
  signal nx37122z1 : STD_LOGIC; 
  signal nx42257z1 : STD_LOGIC; 
  signal nx36612z9_0 : STD_LOGIC; 
  signal nx36612z32_0 : STD_LOGIC; 
  signal nx55535z2 : STD_LOGIC; 
  signal nx55535z3 : STD_LOGIC; 
  signal nx3174z1 : STD_LOGIC; 
  signal nx57662z1 : STD_LOGIC; 
  signal Accu_ctrl : STD_LOGIC; 
  signal U6_c_state_6_Q : STD_LOGIC; 
  signal U6_c_state_7_Q : STD_LOGIC; 
  signal nx36612z79 : STD_LOGIC; 
  signal nx36612z77_0 : STD_LOGIC; 
  signal nx38684z1 : STD_LOGIC; 
  signal nx36612z84_0 : STD_LOGIC; 
  signal nx36612z13 : STD_LOGIC; 
  signal nx36612z14 : STD_LOGIC; 
  signal nx36612z12_0 : STD_LOGIC; 
  signal nx36612z22_0 : STD_LOGIC; 
  signal nx36612z15 : STD_LOGIC; 
  signal nx36612z11_0 : STD_LOGIC; 
  signal nx31987z1 : STD_LOGIC; 
  signal nx36612z18_0 : STD_LOGIC; 
  signal nx36612z85 : STD_LOGIC; 
  signal nx36612z83_0 : STD_LOGIC; 
  signal nx36612z21_0 : STD_LOGIC; 
  signal nx36612z30 : STD_LOGIC; 
  signal nx36612z31_0 : STD_LOGIC; 
  signal nx36612z82 : STD_LOGIC; 
  signal nx36612z80_0 : STD_LOGIC; 
  signal nx53305z1 : STD_LOGIC; 
  signal nx17366z1 : STD_LOGIC; 
  signal nx62797z1 : STD_LOGIC; 
  signal nx36612z8_0 : STD_LOGIC; 
  signal nx36612z17 : STD_LOGIC; 
  signal nx36612z91 : STD_LOGIC; 
  signal nx36612z89_0 : STD_LOGIC; 
  signal nx36612z74 : STD_LOGIC; 
  signal nx36612z73_0 : STD_LOGIC; 
  signal nx18579z1 : STD_LOGIC; 
  signal U4_nx24035z1_0 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_1_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_3_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_5_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_7_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_9_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_11_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_13_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_15_O : STD_LOGIC; 
  signal U6_c_state_2_Q : STD_LOGIC; 
  signal nx57609z2 : STD_LOGIC; 
  signal nx59603z2 : STD_LOGIC; 
  signal nx36612z10 : STD_LOGIC; 
  signal nx36612z23 : STD_LOGIC; 
  signal nx36612z78 : STD_LOGIC; 
  signal nx36612z90 : STD_LOGIC; 
  signal nx36612z3 : STD_LOGIC; 
  signal nx36612z7_pack_1 : STD_LOGIC; 
  signal nx36612z24 : STD_LOGIC; 
  signal nx36612z26_pack_1 : STD_LOGIC; 
  signal nx36612z86 : STD_LOGIC; 
  signal nx36612z88_pack_1 : STD_LOGIC; 
  signal nx8309z1_DYMUX_1366 : STD_LOGIC; 
  signal nx8309z1_SRINV_1364 : STD_LOGIC; 
  signal nx8309z1_CLKINV_1363 : STD_LOGIC; 
  signal nx8309z1_CEINV_1362 : STD_LOGIC; 
  signal nx36612z4 : STD_LOGIC; 
  signal nx36612z19 : STD_LOGIC; 
  signal nx36612z37 : STD_LOGIC; 
  signal nx36612z38_pack_2 : STD_LOGIC; 
  signal nx36612z47 : STD_LOGIC; 
  signal nx36612z48_pack_2 : STD_LOGIC; 
  signal nx36612z16_DYMUX_1453 : STD_LOGIC; 
  signal nx36612z16_SRINV_1451 : STD_LOGIC; 
  signal nx36612z16_CLKINV_1450 : STD_LOGIC; 
  signal nx36612z16_CEINV_1449 : STD_LOGIC; 
  signal nx50044z1_DYMUX_1468 : STD_LOGIC; 
  signal nx50044z1_SRINV_1466 : STD_LOGIC; 
  signal nx50044z1_CLKINV_1465 : STD_LOGIC; 
  signal nx50044z1_CEINV_1464 : STD_LOGIC; 
  signal nx52527z1_DYMUX_1483 : STD_LOGIC; 
  signal nx52527z1_SRINV_1481 : STD_LOGIC; 
  signal nx52527z1_CLKINV_1480 : STD_LOGIC; 
  signal nx52527z1_CEINV_1479 : STD_LOGIC; 
  signal nx36612z27 : STD_LOGIC; 
  signal nx36612z29_pack_1 : STD_LOGIC; 
  signal nx36612z75 : STD_LOGIC; 
  signal nx36612z76_pack_1 : STD_LOGIC; 
  signal nx36612z1 : STD_LOGIC; 
  signal nx36612z33_pack_2 : STD_LOGIC; 
  signal nx36612z42 : STD_LOGIC; 
  signal nx36612z43_pack_2 : STD_LOGIC; 
  signal nx36612z52 : STD_LOGIC; 
  signal nx36612z53_pack_2 : STD_LOGIC; 
  signal nx36612z62 : STD_LOGIC; 
  signal nx36612z63_pack_2 : STD_LOGIC; 
  signal nx36612z81 : STD_LOGIC; 
  signal nx36612z72 : STD_LOGIC; 
  signal nx36612z57 : STD_LOGIC; 
  signal nx36612z58_pack_2 : STD_LOGIC; 
  signal nx36612z67 : STD_LOGIC; 
  signal nx36612z68_pack_2 : STD_LOGIC; 
  signal U6_c_state_1_DXMUX_1742 : STD_LOGIC; 
  signal nx56612z1 : STD_LOGIC; 
  signal U6_c_state_1_DYMUX_1729 : STD_LOGIC; 
  signal nx56612z3_pack_3 : STD_LOGIC; 
  signal U6_c_state_1_BYINV_1719 : STD_LOGIC; 
  signal U6_c_state_1_SRINV_1718 : STD_LOGIC; 
  signal U6_c_state_1_CLKINV_1717 : STD_LOGIC; 
  signal nx43819z1_DYMUX_1758 : STD_LOGIC; 
  signal nx43819z1_SRINV_1756 : STD_LOGIC; 
  signal nx43819z1_CLKINV_1755 : STD_LOGIC; 
  signal nx43819z1_CEINV_1754 : STD_LOGIC; 
  signal nx36612z9 : STD_LOGIC; 
  signal nx36612z32 : STD_LOGIC; 
  signal Rom_Address_3_DXMUX_1816 : STD_LOGIC; 
  signal nx56532z1 : STD_LOGIC; 
  signal nx55535z2_pack_2 : STD_LOGIC; 
  signal Rom_Address_3_CLKINV_1800 : STD_LOGIC; 
  signal nx3174z1_DYMUX_1832 : STD_LOGIC; 
  signal nx3174z1_SRINV_1830 : STD_LOGIC; 
  signal nx3174z1_CLKINV_1829 : STD_LOGIC; 
  signal nx3174z1_CEINV_1828 : STD_LOGIC; 
  signal nx55179z1_DYMUX_1847 : STD_LOGIC; 
  signal nx55179z1_SRINV_1845 : STD_LOGIC; 
  signal nx55179z1_CLKINV_1844 : STD_LOGIC; 
  signal nx55179z1_CEINV_1843 : STD_LOGIC; 
  signal nx57662z1_DYMUX_1862 : STD_LOGIC; 
  signal nx57662z1_SRINV_1860 : STD_LOGIC; 
  signal nx57662z1_CLKINV_1859 : STD_LOGIC; 
  signal nx57662z1_CEINV_1858 : STD_LOGIC; 
  signal Accu_ctrl_DYMUX_1875 : STD_LOGIC; 
  signal Accu_ctrl_CLKINV_1872 : STD_LOGIC; 
  signal U6_c_state_7_DXMUX_1899 : STD_LOGIC; 
  signal U6_c_state_7_DYMUX_1891 : STD_LOGIC; 
  signal U6_c_state_7_SRINV_1889 : STD_LOGIC; 
  signal U6_c_state_7_CLKINV_1888 : STD_LOGIC; 
  signal nx36612z77 : STD_LOGIC; 
  signal nx36612z79_pack_1 : STD_LOGIC; 
  signal nx38684z1_DYMUX_1939 : STD_LOGIC; 
  signal nx38684z1_SRINV_1937 : STD_LOGIC; 
  signal nx38684z1_CLKINV_1936 : STD_LOGIC; 
  signal nx38684z1_CEINV_1935 : STD_LOGIC; 
  signal nx36612z84 : STD_LOGIC; 
  signal nx36612z87 : STD_LOGIC; 
  signal nx36612z12 : STD_LOGIC; 
  signal nx36612z22 : STD_LOGIC; 
  signal nx36612z11 : STD_LOGIC; 
  signal nx36612z15_pack_1 : STD_LOGIC; 
  signal nx36612z18 : STD_LOGIC; 
  signal nx36612z25 : STD_LOGIC; 
  signal nx36612z83 : STD_LOGIC; 
  signal nx36612z85_pack_1 : STD_LOGIC; 
  signal nx36612z20 : STD_LOGIC; 
  signal nx36612z30_pack_1 : STD_LOGIC; 
  signal nx36612z80 : STD_LOGIC; 
  signal nx36612z82_pack_1 : STD_LOGIC; 
  signal nx63575z1_DYMUX_2122 : STD_LOGIC; 
  signal nx63575z1_SRINV_2120 : STD_LOGIC; 
  signal nx63575z1_CLKINV_2119 : STD_LOGIC; 
  signal nx63575z1_CEINV_2118 : STD_LOGIC; 
  signal nx36612z31 : STD_LOGIC; 
  signal nx36612z28 : STD_LOGIC; 
  signal nx60314z1_DYMUX_2161 : STD_LOGIC; 
  signal nx60314z1_SRINV_2159 : STD_LOGIC; 
  signal nx60314z1_CLKINV_2158 : STD_LOGIC; 
  signal nx60314z1_CEINV_2157 : STD_LOGIC; 
  signal nx62797z1_DYMUX_2176 : STD_LOGIC; 
  signal nx62797z1_SRINV_2174 : STD_LOGIC; 
  signal nx62797z1_CLKINV_2173 : STD_LOGIC; 
  signal nx62797z1_CEINV_2172 : STD_LOGIC; 
  signal Rom_Address_2_DXMUX_2210 : STD_LOGIC; 
  signal nx57529z1 : STD_LOGIC; 
  signal nx56612z2 : STD_LOGIC; 
  signal Rom_Address_2_CLKINV_2194 : STD_LOGIC; 
  signal nx31987z1_DYMUX_2226 : STD_LOGIC; 
  signal nx31987z1_SRINV_2224 : STD_LOGIC; 
  signal nx31987z1_CLKINV_2223 : STD_LOGIC; 
  signal nx31987z1_CEINV_2222 : STD_LOGIC; 
  signal nx36612z2 : STD_LOGIC; 
  signal nx36612z17_pack_1 : STD_LOGIC; 
  signal nx58440z1_DYMUX_2265 : STD_LOGIC; 
  signal nx58440z1_SRINV_2263 : STD_LOGIC; 
  signal nx58440z1_CLKINV_2262 : STD_LOGIC; 
  signal nx58440z1_CEINV_2261 : STD_LOGIC; 
  signal nx36612z89 : STD_LOGIC; 
  signal nx36612z91_pack_1 : STD_LOGIC; 
  signal nx36612z6_DXMUX_2313 : STD_LOGIC; 
  signal nx36612z6_DYMUX_2306 : STD_LOGIC; 
  signal nx36612z6_SRINV_2304 : STD_LOGIC; 
  signal nx36612z6_CLKINV_2303 : STD_LOGIC; 
  signal nx36612z6_CEINV_2302 : STD_LOGIC; 
  signal nx2396z1_DYMUX_2328 : STD_LOGIC; 
  signal nx2396z1_SRINV_2326 : STD_LOGIC; 
  signal nx2396z1_CLKINV_2325 : STD_LOGIC; 
  signal nx2396z1_CEINV_2324 : STD_LOGIC; 
  signal Rom_Address_4_DXMUX_2362 : STD_LOGIC; 
  signal nx55535z1 : STD_LOGIC; 
  signal nx55535z3_pack_2 : STD_LOGIC; 
  signal Rom_Address_4_CLKINV_2344 : STD_LOGIC; 
  signal nx34639z1_DYMUX_2378 : STD_LOGIC; 
  signal nx34639z1_SRINV_2376 : STD_LOGIC; 
  signal nx34639z1_CLKINV_2375 : STD_LOGIC; 
  signal nx34639z1_CEINV_2374 : STD_LOGIC; 
  signal nx37122z1_DYMUX_2393 : STD_LOGIC; 
  signal nx37122z1_SRINV_2391 : STD_LOGIC; 
  signal nx37122z1_CLKINV_2390 : STD_LOGIC; 
  signal nx37122z1_CEINV_2389 : STD_LOGIC; 
  signal nx36612z73 : STD_LOGIC; 
  signal nx36612z74_pack_1 : STD_LOGIC; 
  signal nx53305z1_DYMUX_2432 : STD_LOGIC; 
  signal nx53305z1_SRINV_2430 : STD_LOGIC; 
  signal nx53305z1_CLKINV_2429 : STD_LOGIC; 
  signal nx53305z1_CEINV_2428 : STD_LOGIC; 
  signal nx36032z1_DYMUX_2447 : STD_LOGIC; 
  signal nx36032z1_SRINV_2445 : STD_LOGIC; 
  signal nx36032z1_CLKINV_2444 : STD_LOGIC; 
  signal nx36032z1_CEINV_2443 : STD_LOGIC; 
  signal nx18579z1_DYMUX_2462 : STD_LOGIC; 
  signal nx18579z1_BYINV_2461 : STD_LOGIC; 
  signal nx18579z1_SRINV_2460 : STD_LOGIC; 
  signal nx18579z1_CLKINV_2459 : STD_LOGIC; 
  signal nx18579z1_CEINV_2458 : STD_LOGIC; 
  signal U4_Accu_out_dup_0_0_DXMUX_2496 : STD_LOGIC; 
  signal U4_nx24035z1 : STD_LOGIC; 
  signal U4_Accu_out_dup_0_0_SRINV_2478 : STD_LOGIC; 
  signal U4_Accu_out_dup_0_0_CLKINV_2477 : STD_LOGIC; 
  signal nx39774z1_DYMUX_2510 : STD_LOGIC; 
  signal nx39774z1_SRINV_2508 : STD_LOGIC; 
  signal nx39774z1_CLKINV_2507 : STD_LOGIC; 
  signal nx39774z1_CEINV_2506 : STD_LOGIC; 
  signal nx42257z1_DYMUX_2525 : STD_LOGIC; 
  signal nx42257z1_SRINV_2523 : STD_LOGIC; 
  signal nx42257z1_CLKINV_2522 : STD_LOGIC; 
  signal nx42257z1_CEINV_2521 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_XORF_2565 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYINIT_2564 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CY0F_2563 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYSELF_2555 : STD_LOGIC; 
  signal U4_nx30768z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_BXINV_2553 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_XORG_2551 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYMUXG_2550 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_0_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CY0G_2548 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYSELG_2540 : STD_LOGIC; 
  signal U4_nx30769z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_XORF_2604 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYINIT_2603 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CY0F_2602 : STD_LOGIC; 
  signal U4_nx30770z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_XORG_2592 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_2_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYSELF_2590 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYMUXFAST_2589 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYAND_2588 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_FASTCARRY_2587 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYMUXG2_2586 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYMUXF2_2585 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CY0G_2584 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYSELG_2576 : STD_LOGIC; 
  signal U4_nx30771z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_XORF_2643 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYINIT_2642 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CY0F_2641 : STD_LOGIC; 
  signal U4_nx30772z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_XORG_2631 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_4_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYSELF_2629 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYMUXFAST_2628 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYAND_2627 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_FASTCARRY_2626 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYMUXG2_2625 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYMUXF2_2624 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CY0G_2623 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYSELG_2615 : STD_LOGIC; 
  signal U4_nx30773z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_XORF_2682 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYINIT_2681 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CY0F_2680 : STD_LOGIC; 
  signal U4_nx30774z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_XORG_2670 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_6_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYSELF_2668 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYMUXFAST_2667 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYAND_2666 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_FASTCARRY_2665 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYMUXG2_2664 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYMUXF2_2663 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CY0G_2662 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYSELG_2654 : STD_LOGIC; 
  signal U4_nx30775z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_XORF_2721 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYINIT_2720 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CY0F_2719 : STD_LOGIC; 
  signal U4_nx30776z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_XORG_2709 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_8_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYSELF_2707 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYMUXFAST_2706 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYAND_2705 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_FASTCARRY_2704 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYMUXG2_2703 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYMUXF2_2702 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CY0G_2701 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYSELG_2693 : STD_LOGIC; 
  signal U4_nx30777z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_XORF_2760 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYINIT_2759 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CY0F_2758 : STD_LOGIC; 
  signal U4_nx5893z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_XORG_2748 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_10_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYSELF_2746 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYMUXFAST_2745 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYAND_2744 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_FASTCARRY_2743 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYMUXG2_2742 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYMUXF2_2741 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CY0G_2740 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYSELG_2732 : STD_LOGIC; 
  signal U4_nx5894z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_XORF_2799 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYINIT_2798 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CY0F_2797 : STD_LOGIC; 
  signal U4_nx5895z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_XORG_2787 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_12_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYSELF_2785 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYMUXFAST_2784 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYAND_2783 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_FASTCARRY_2782 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYMUXG2_2781 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYMUXF2_2780 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CY0G_2779 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYSELG_2771 : STD_LOGIC; 
  signal U4_nx5896z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_XORF_2838 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYINIT_2837 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CY0F_2836 : STD_LOGIC; 
  signal U4_nx5897z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_XORG_2826 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_14_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYSELF_2824 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYMUXFAST_2823 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYAND_2822 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_FASTCARRY_2821 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYMUXG2_2820 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYMUXF2_2819 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CY0G_2818 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYSELG_2810 : STD_LOGIC; 
  signal U4_nx5898z1 : STD_LOGIC; 
  signal Accu_out_16_DXMUX_2887 : STD_LOGIC; 
  signal Accu_out_16_XORF_2885 : STD_LOGIC; 
  signal Accu_out_16_CYINIT_2884 : STD_LOGIC; 
  signal Accu_out_16_F : STD_LOGIC; 
  signal Accu_out_16_DYMUX_2870 : STD_LOGIC; 
  signal Accu_out_16_XORG_2868 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_16_O : STD_LOGIC; 
  signal Accu_out_16_CYSELF_2866 : STD_LOGIC; 
  signal Accu_out_16_CYMUXFAST_2865 : STD_LOGIC; 
  signal Accu_out_16_CYAND_2864 : STD_LOGIC; 
  signal Accu_out_16_FASTCARRY_2863 : STD_LOGIC; 
  signal Accu_out_16_CYMUXG2_2862 : STD_LOGIC; 
  signal Accu_out_16_CYMUXF2_2861 : STD_LOGIC; 
  signal Accu_out_16_LOGIC_ZERO_2860 : STD_LOGIC; 
  signal Accu_out_16_CYSELG_2851 : STD_LOGIC; 
  signal Accu_out_16_G : STD_LOGIC; 
  signal Accu_out_16_SRINV_2849 : STD_LOGIC; 
  signal Accu_out_16_CLKINV_2848 : STD_LOGIC; 
  signal Accu_out_18_DXMUX_2932 : STD_LOGIC; 
  signal Accu_out_18_XORF_2930 : STD_LOGIC; 
  signal Accu_out_18_LOGIC_ZERO_2929 : STD_LOGIC; 
  signal Accu_out_18_CYINIT_2928 : STD_LOGIC; 
  signal Accu_out_18_CYSELF_2919 : STD_LOGIC; 
  signal Accu_out_18_F : STD_LOGIC; 
  signal Accu_out_18_DYMUX_2913 : STD_LOGIC; 
  signal Accu_out_18_XORG_2911 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_18_O : STD_LOGIC; 
  signal Accu_out_19_rt_2908 : STD_LOGIC; 
  signal Accu_out_18_SRINV_2900 : STD_LOGIC; 
  signal Accu_out_18_CLKINV_2899 : STD_LOGIC; 
  signal nx36612z60 : STD_LOGIC; 
  signal nx36612z60_DIF_MUX_2971 : STD_LOGIC; 
  signal nx36612z59 : STD_LOGIC; 
  signal nx36612z60_GMC15 : STD_LOGIC; 
  signal nx36612z60_DIG_MUX_2958 : STD_LOGIC; 
  signal nx36612z60_CLKINV_2956 : STD_LOGIC; 
  signal nx36612z60_SRINV_2950 : STD_LOGIC; 
  signal nx36612z50 : STD_LOGIC; 
  signal nx36612z50_DIF_MUX_3016 : STD_LOGIC; 
  signal nx36612z49 : STD_LOGIC; 
  signal nx36612z50_GMC15 : STD_LOGIC; 
  signal nx36612z50_DIG_MUX_3003 : STD_LOGIC; 
  signal nx36612z50_CLKINV_3001 : STD_LOGIC; 
  signal nx36612z50_SRINV_2995 : STD_LOGIC; 
  signal nx36612z40 : STD_LOGIC; 
  signal nx36612z40_DIF_MUX_3061 : STD_LOGIC; 
  signal nx36612z39 : STD_LOGIC; 
  signal nx36612z40_GMC15 : STD_LOGIC; 
  signal nx36612z40_DIG_MUX_3048 : STD_LOGIC; 
  signal nx36612z40_CLKINV_3046 : STD_LOGIC; 
  signal nx36612z40_SRINV_3040 : STD_LOGIC; 
  signal nx36612z70 : STD_LOGIC; 
  signal nx36612z70_DIF_MUX_3106 : STD_LOGIC; 
  signal nx36612z69 : STD_LOGIC; 
  signal nx36612z70_GMC15 : STD_LOGIC; 
  signal nx36612z70_DIG_MUX_3093 : STD_LOGIC; 
  signal nx36612z70_CLKINV_3091 : STD_LOGIC; 
  signal nx36612z70_SRINV_3085 : STD_LOGIC; 
  signal nx36612z65 : STD_LOGIC; 
  signal nx36612z65_DIF_MUX_3151 : STD_LOGIC; 
  signal nx36612z64 : STD_LOGIC; 
  signal nx36612z65_GMC15 : STD_LOGIC; 
  signal nx36612z65_DIG_MUX_3138 : STD_LOGIC; 
  signal nx36612z65_CLKINV_3136 : STD_LOGIC; 
  signal nx36612z65_SRINV_3130 : STD_LOGIC; 
  signal nx36612z55 : STD_LOGIC; 
  signal nx36612z55_DIF_MUX_3196 : STD_LOGIC; 
  signal nx36612z54 : STD_LOGIC; 
  signal nx36612z55_GMC15 : STD_LOGIC; 
  signal nx36612z55_DIG_MUX_3183 : STD_LOGIC; 
  signal nx36612z55_CLKINV_3181 : STD_LOGIC; 
  signal nx36612z55_SRINV_3175 : STD_LOGIC; 
  signal nx36612z45 : STD_LOGIC; 
  signal nx36612z45_DIF_MUX_3241 : STD_LOGIC; 
  signal nx36612z44 : STD_LOGIC; 
  signal nx36612z45_GMC15 : STD_LOGIC; 
  signal nx36612z45_DIG_MUX_3228 : STD_LOGIC; 
  signal nx36612z45_CLKINV_3226 : STD_LOGIC; 
  signal nx36612z45_SRINV_3220 : STD_LOGIC; 
  signal nx36612z35 : STD_LOGIC; 
  signal nx36612z35_DIF_MUX_3286 : STD_LOGIC; 
  signal nx36612z34 : STD_LOGIC; 
  signal nx36612z35_GMC15 : STD_LOGIC; 
  signal nx36612z35_DIG_MUX_3273 : STD_LOGIC; 
  signal nx36612z35_CLKINV_3271 : STD_LOGIC; 
  signal nx36612z35_SRINV_3265 : STD_LOGIC; 
  signal Filter_In_0_INBUF : STD_LOGIC; 
  signal ADC_csb_O : STD_LOGIC; 
  signal Filter_In_1_INBUF : STD_LOGIC; 
  signal Filter_In_2_INBUF : STD_LOGIC; 
  signal Filter_In_3_INBUF : STD_LOGIC; 
  signal Filter_In_4_INBUF : STD_LOGIC; 
  signal Filter_In_5_INBUF : STD_LOGIC; 
  signal Filter_In_6_INBUF : STD_LOGIC; 
  signal Filter_In_7_INBUF : STD_LOGIC; 
  signal CLRB_O : STD_LOGIC; 
  signal LDACb_O : STD_LOGIC; 
  signal Filter_Out_0_O : STD_LOGIC; 
  signal ADC_Convstb_O : STD_LOGIC; 
  signal Filter_Out_1_O : STD_LOGIC; 
  signal Filter_Out_2_O : STD_LOGIC; 
  signal Filter_Out_3_O : STD_LOGIC; 
  signal Filter_Out_4_O : STD_LOGIC; 
  signal Filter_Out_5_O : STD_LOGIC; 
  signal Filter_Out_6_O : STD_LOGIC; 
  signal Filter_Out_7_O : STD_LOGIC; 
  signal DAC_WRb_O : STD_LOGIC; 
  signal Reset_INBUF : STD_LOGIC; 
  signal ADC_Rdb_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal DAC_csb_O : STD_LOGIC; 
  signal CLK_ibuf_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_ibuf_BUFG_I0_INV : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD16 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD17 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD18 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD19 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD20 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD21 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD22 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD23 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD24 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD25 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD26 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD27 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD28 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD29 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD30 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD31 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD32 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD33 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD34 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD35 : STD_LOGIC; 
  signal U4_Accu_out_2_DXMUX_3587 : STD_LOGIC; 
  signal U4_Accu_out_2_DYMUX_3574 : STD_LOGIC; 
  signal U4_Accu_out_2_SRINV_3565 : STD_LOGIC; 
  signal U4_Accu_out_2_CLKINV_3564 : STD_LOGIC; 
  signal U4_Accu_out_4_DXMUX_3625 : STD_LOGIC; 
  signal U4_Accu_out_4_DYMUX_3612 : STD_LOGIC; 
  signal U4_Accu_out_4_SRINV_3603 : STD_LOGIC; 
  signal U4_Accu_out_4_CLKINV_3602 : STD_LOGIC; 
  signal U4_Accu_out_6_DXMUX_3663 : STD_LOGIC; 
  signal U4_Accu_out_6_DYMUX_3650 : STD_LOGIC; 
  signal U4_Accu_out_6_SRINV_3641 : STD_LOGIC; 
  signal U4_Accu_out_6_CLKINV_3640 : STD_LOGIC; 
  signal U4_Accu_out_8_DXMUX_3701 : STD_LOGIC; 
  signal U4_Accu_out_8_DYMUX_3688 : STD_LOGIC; 
  signal U4_Accu_out_8_SRINV_3679 : STD_LOGIC; 
  signal U4_Accu_out_8_CLKINV_3678 : STD_LOGIC; 
  signal U4_Accu_out_10_DXMUX_3739 : STD_LOGIC; 
  signal U4_Accu_out_10_DYMUX_3726 : STD_LOGIC; 
  signal U4_Accu_out_10_SRINV_3717 : STD_LOGIC; 
  signal U4_Accu_out_10_CLKINV_3716 : STD_LOGIC; 
  signal Rom_Address_1_DXMUX_3779 : STD_LOGIC; 
  signal nx58526z1 : STD_LOGIC; 
  signal Rom_Address_1_DYMUX_3765 : STD_LOGIC; 
  signal nx59523z1 : STD_LOGIC; 
  signal Rom_Address_1_SRINV_3756 : STD_LOGIC; 
  signal Rom_Address_1_CLKINV_3755 : STD_LOGIC; 
  signal U4_Accu_out_11_DYMUX_3802 : STD_LOGIC; 
  signal U4_Accu_out_11_SRINV_3793 : STD_LOGIC; 
  signal U4_Accu_out_11_CLKINV_3792 : STD_LOGIC; 
  signal Accu_out_13_DXMUX_3840 : STD_LOGIC; 
  signal Accu_out_13_DYMUX_3827 : STD_LOGIC; 
  signal Accu_out_13_SRINV_3818 : STD_LOGIC; 
  signal Accu_out_13_CLKINV_3817 : STD_LOGIC; 
  signal Accu_out_15_DXMUX_3878 : STD_LOGIC; 
  signal Accu_out_15_DYMUX_3865 : STD_LOGIC; 
  signal Accu_out_15_SRINV_3856 : STD_LOGIC; 
  signal Accu_out_15_CLKINV_3855 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_DXMUX_3901 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_DYMUX_3894 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_SRINV_3892 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_CLKINV_3891 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_CEINV_3890 : STD_LOGIC; 
  signal nx17366z1_DYMUX_3916 : STD_LOGIC; 
  signal nx17366z1_SRINV_3914 : STD_LOGIC; 
  signal nx17366z1_CLKINV_3913 : STD_LOGIC; 
  signal nx17366z1_CEINV_3912 : STD_LOGIC; 
  signal U6_c_state_2_DXMUX_3960 : STD_LOGIC; 
  signal nx57609z1 : STD_LOGIC; 
  signal U6_c_state_2_DYMUX_3946 : STD_LOGIC; 
  signal nx57609z2_pack_2 : STD_LOGIC; 
  signal U6_c_state_2_SRINV_3937 : STD_LOGIC; 
  signal U6_c_state_2_CLKINV_3936 : STD_LOGIC; 
  signal nx36612z14_DXMUX_3985 : STD_LOGIC; 
  signal nx36612z14_DYMUX_3978 : STD_LOGIC; 
  signal nx36612z14_SRINV_3976 : STD_LOGIC; 
  signal nx36612z14_CLKINV_3975 : STD_LOGIC; 
  signal nx36612z14_CEINV_3974 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_DXMUX_4009 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_DYMUX_4002 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_SRINV_4000 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_CLKINV_3999 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_CEINV_3998 : STD_LOGIC; 
  signal nx13444z1_DYMUX_4024 : STD_LOGIC; 
  signal nx13444z1_SRINV_4022 : STD_LOGIC; 
  signal nx13444z1_CLKINV_4021 : STD_LOGIC; 
  signal nx13444z1_CEINV_4020 : STD_LOGIC; 
  signal nx42426z1_DYMUX_4039 : STD_LOGIC; 
  signal nx42426z1_SRINV_4037 : STD_LOGIC; 
  signal nx42426z1_CLKINV_4036 : STD_LOGIC; 
  signal nx42426z1_CEINV_4035 : STD_LOGIC; 
  signal nx44909z1_DYMUX_4054 : STD_LOGIC; 
  signal nx44909z1_SRINV_4052 : STD_LOGIC; 
  signal nx44909z1_CLKINV_4051 : STD_LOGIC; 
  signal nx44909z1_CEINV_4050 : STD_LOGIC; 
  signal nx47392z1_DYMUX_4069 : STD_LOGIC; 
  signal nx47392z1_SRINV_4067 : STD_LOGIC; 
  signal nx47392z1_CLKINV_4066 : STD_LOGIC; 
  signal nx47392z1_CEINV_4065 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_DXMUX_4093 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_DYMUX_4086 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_SRINV_4084 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_CLKINV_4083 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_CEINV_4082 : STD_LOGIC; 
  signal Delay_Line_sample_shift_DXMUX_4127 : STD_LOGIC; 
  signal nx59603z1 : STD_LOGIC; 
  signal nx59603z2_pack_1 : STD_LOGIC; 
  signal Delay_Line_sample_shift_CLKINV_4110 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_DXMUX_4152 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_DYMUX_4145 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_SRINV_4143 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_CLKINV_4142 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_CEINV_4141 : STD_LOGIC; 
  signal nx36612z8 : STD_LOGIC; 
  signal nx36612z10_pack_1 : STD_LOGIC; 
  signal nx22501z1_DYMUX_4191 : STD_LOGIC; 
  signal nx22501z1_SRINV_4189 : STD_LOGIC; 
  signal nx22501z1_CLKINV_4188 : STD_LOGIC; 
  signal nx22501z1_CEINV_4187 : STD_LOGIC; 
  signal nx36612z21 : STD_LOGIC; 
  signal nx36612z23_pack_1 : STD_LOGIC; 
  signal Rom_Address_3_FFX_RSTAND_1821 : STD_LOGIC; 
  signal Accu_ctrl_FFY_RSTAND_1880 : STD_LOGIC; 
  signal Rom_Address_2_FFX_RSTAND_2215 : STD_LOGIC; 
  signal Rom_Address_4_FFX_RSTAND_2367 : STD_LOGIC; 
  signal Delay_Line_sample_shift_FFX_RSTAND_4132 : STD_LOGIC; 
  signal ADC_csb_OUTPUT_OFF_O1INV_3310 : STD_LOGIC; 
  signal LDACb_OUTPUT_OFF_O1INV_3368 : STD_LOGIC; 
  signal DAC_csb_OUTPUT_OFF_O1INV_3476 : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_5_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_0_Q : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ix36612z15062_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15054_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15046_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15070_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15066_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15058_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15050_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15042_Q15_UNCONNECTED : STD_LOGIC; 
  signal Rom_Address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Mult_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U4_ACCU_1n1s1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U4_Accu_out_dup_0 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U4_Accu_out : STD_LOGIC_VECTOR ( 11 downto 1 ); 
  signal Accu_out : STD_LOGIC_VECTOR ( 19 downto 12 ); 
  signal Filter_Out_dup_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_ACCU_1n1ss1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A : STD_LOGIC_VECTOR ( 6 downto 6 ); 
begin
  nx36612z78_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z78,
      O => nx36612z78_0
    );
  nx36612z78_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z90,
      O => nx36612z90_0
    );
  ix36612z1175 : X_LUT4
    generic map(
      INIT => X"F4F9",
      LOC => "SLICE_X1Y1"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(4),
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(2),
      O => nx36612z90
    );
  nx36612z3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z3,
      O => nx36612z3_0
    );
  nx36612z3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z7_pack_1,
      O => nx36612z7
    );
  ix36612z22838 : X_LUT4
    generic map(
      INIT => X"2320",
      LOC => "SLICE_X8Y3"
    )
    port map (
      ADR0 => nx60314z1,
      ADR1 => Rom_Address(1),
      ADR2 => Rom_Address(0),
      ADR3 => nx55179z1,
      O => nx36612z7_pack_1
    );
  nx36612z24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z24,
      O => nx36612z24_0
    );
  nx36612z24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z26_pack_1,
      O => nx36612z26
    );
  ix36612z22854 : X_LUT4
    generic map(
      INIT => X"5404",
      LOC => "SLICE_X6Y4"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => nx22501z1,
      ADR2 => Rom_Address(0),
      ADR3 => nx43819z1,
      O => nx36612z26_pack_1
    );
  nx36612z86_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z86,
      O => nx36612z86_0
    );
  nx36612z86_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z88_pack_1,
      O => nx36612z88
    );
  ix36612z42310 : X_LUT4
    generic map(
      INIT => X"C7FA",
      LOC => "SLICE_X3Y1"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(3),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(2),
      O => nx36612z88_pack_1
    );
  nx8309z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx13444z1,
      O => nx8309z1_DYMUX_1366
    );
  nx8309z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx8309z1_SRINV_1364
    );
  nx8309z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx8309z1_CLKINV_1363
    );
  nx8309z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx8309z1_CEINV_1362
    );
  nx36612z4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z4,
      O => nx36612z4_0
    );
  nx36612z4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z19,
      O => nx36612z19_0
    );
  ix36612z22847 : X_LUT4
    generic map(
      INIT => X"00D8",
      LOC => "SLICE_X12Y2"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => nx39774z1,
      ADR2 => nx34639z1,
      ADR3 => Rom_Address(1),
      O => nx36612z19
    );
  nx36612z37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z37,
      O => nx36612z37_0
    );
  nx36612z37_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z38_pack_2,
      O => nx36612z38
    );
  ix36612z1372 : X_LUT4
    generic map(
      INIT => X"4747",
      LOC => "SLICE_X7Y3"
    )
    port map (
      ADR0 => nx36612z40_0,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z39_0,
      ADR3 => VCC,
      O => nx36612z38_pack_2
    );
  nx36612z47_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z47,
      O => nx36612z47_0
    );
  nx36612z47_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z48_pack_2,
      O => nx36612z48
    );
  ix36612z1380 : X_LUT4
    generic map(
      INIT => X"4477",
      LOC => "SLICE_X5Y2"
    )
    port map (
      ADR0 => nx36612z50_0,
      ADR1 => Rom_Address(4),
      ADR2 => VCC,
      ADR3 => nx36612z49_0,
      O => nx36612z48_pack_2
    );
  nx36612z16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx42426z1,
      O => nx36612z16_DYMUX_1453
    );
  nx36612z16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx36612z16_SRINV_1451
    );
  nx36612z16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z16_CLKINV_1450
    );
  nx36612z16_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z16_CEINV_1449
    );
  nx50044z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx44909z1,
      O => nx50044z1_DYMUX_1468
    );
  nx50044z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx50044z1_SRINV_1466
    );
  nx50044z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx50044z1_CLKINV_1465
    );
  nx50044z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx50044z1_CEINV_1464
    );
  nx52527z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx47392z1,
      O => nx52527z1_DYMUX_1483
    );
  nx52527z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx52527z1_SRINV_1481
    );
  nx52527z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx52527z1_CLKINV_1480
    );
  nx52527z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx52527z1_CEINV_1479
    );
  nx36612z27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z27,
      O => nx36612z27_0
    );
  nx36612z27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z29_pack_1,
      O => nx36612z29
    );
  ix36612z22857 : X_LUT4
    generic map(
      INIT => X"00B8",
      LOC => "SLICE_X9Y4"
    )
    port map (
      ADR0 => nx58440z1,
      ADR1 => Rom_Address(0),
      ADR2 => nx63575z1,
      ADR3 => Rom_Address(1),
      O => nx36612z29_pack_1
    );
  nx36612z75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z75,
      O => nx36612z75_0
    );
  nx36612z75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z76_pack_1,
      O => nx36612z76
    );
  ix36612z1382 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X0Y2"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Rom_Address(0),
      O => nx36612z76_pack_1
    );
  nx36612z1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z1,
      O => nx36612z1_0
    );
  nx36612z1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z33_pack_2,
      O => nx36612z33
    );
  ix36612z1368 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X4Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z35_0,
      ADR3 => nx36612z34_0,
      O => nx36612z33_pack_2
    );
  nx36612z42_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z42,
      O => nx36612z42_0
    );
  nx36612z42_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z43_pack_2,
      O => nx36612z43
    );
  ix36612z1376 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X5Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nx36612z44_0,
      ADR2 => Rom_Address(4),
      ADR3 => nx36612z45_0,
      O => nx36612z43_pack_2
    );
  nx36612z52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z52,
      O => nx36612z52_0
    );
  nx36612z52_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z53_pack_2,
      O => nx36612z53
    );
  ix36612z1384 : X_LUT4
    generic map(
      INIT => X"11DD",
      LOC => "SLICE_X5Y1"
    )
    port map (
      ADR0 => nx36612z54_0,
      ADR1 => Rom_Address(4),
      ADR2 => VCC,
      ADR3 => nx36612z55_0,
      O => nx36612z53_pack_2
    );
  nx36612z62_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z62,
      O => nx36612z62_0
    );
  nx36612z62_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z63_pack_2,
      O => nx36612z63
    );
  ix36612z1392 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X7Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z65_0,
      ADR3 => nx36612z64_0,
      O => nx36612z63_pack_2
    );
  nx36612z81_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z81,
      O => nx36612z81_0
    );
  nx36612z81_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z72,
      O => nx36612z72_0
    );
  ix36612z1378 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X2Y5"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nx36612z72
    );
  nx36612z57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z57,
      O => nx36612z57_0
    );
  nx36612z57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z58_pack_2,
      O => nx36612z58
    );
  ix36612z1388 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X6Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z60_0,
      ADR3 => nx36612z59_0,
      O => nx36612z58_pack_2
    );
  nx36612z67_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z67,
      O => nx36612z67_0
    );
  nx36612z67_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X5Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z68_pack_2,
      O => nx36612z68
    );
  ix36612z1396 : X_LUT4
    generic map(
      INIT => X"11BB",
      LOC => "SLICE_X5Y0"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z69_0,
      ADR2 => VCC,
      ADR3 => nx36612z70_0,
      O => nx36612z68_pack_2
    );
  U6_c_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx56612z1,
      O => U6_c_state_1_DXMUX_1742
    );
  U6_c_state_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U6_c_state_1_BYINV_1719,
      O => U6_c_state_1_DYMUX_1729
    );
  U6_c_state_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx56612z3_pack_3,
      O => nx56612z3
    );
  U6_c_state_1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => U6_c_state_1_BYINV_1719
    );
  U6_c_state_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U6_c_state_1_SRINV_1718
    );
  U6_c_state_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U6_c_state_1_CLKINV_1717
    );
  ix56612z1317 : X_LUT4
    generic map(
      INIT => X"1111",
      LOC => "SLICE_X16Y0"
    )
    port map (
      ADR0 => U6_c_state_3_Q,
      ADR1 => U6_c_state_0_Q,
      ADR2 => VCC,
      ADR3 => VCC,
      O => nx56612z3_pack_3
    );
  nx43819z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx22501z1,
      O => nx43819z1_DYMUX_1758
    );
  nx43819z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx43819z1_SRINV_1756
    );
  nx43819z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx43819z1_CLKINV_1755
    );
  nx43819z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx43819z1_CEINV_1754
    );
  nx36612z9_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z9,
      O => nx36612z9_0
    );
  nx36612z9_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z32,
      O => nx36612z32_0
    );
  ix36612z1665 : X_LUT4
    generic map(
      INIT => X"0047",
      LOC => "SLICE_X7Y5"
    )
    port map (
      ADR0 => nx42257z1,
      ADR1 => Rom_Address(0),
      ADR2 => nx37122z1,
      ADR3 => Rom_Address(1),
      O => nx36612z32
    );
  Rom_Address_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx56532z1,
      O => Rom_Address_3_DXMUX_1816
    );
  Rom_Address_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx55535z2_pack_2,
      O => nx55535z2
    );
  Rom_Address_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Rom_Address_3_CLKINV_1800
    );
  ix55535z34083 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X14Y3"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => nx55535z3,
      ADR2 => Rom_Address(2),
      ADR3 => Rom_Address(1),
      O => nx55535z2_pack_2
    );
  nx3174z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx8309z1,
      O => nx3174z1_DYMUX_1832
    );
  nx3174z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx3174z1_SRINV_1830
    );
  nx3174z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx3174z1_CLKINV_1829
    );
  nx3174z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx3174z1_CEINV_1828
    );
  nx55179z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx50044z1,
      O => nx55179z1_DYMUX_1847
    );
  nx55179z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx55179z1_SRINV_1845
    );
  nx55179z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx55179z1_CLKINV_1844
    );
  nx55179z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx55179z1_CEINV_1843
    );
  nx57662z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx52527z1,
      O => nx57662z1_DYMUX_1862
    );
  nx57662z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx57662z1_SRINV_1860
    );
  nx57662z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx57662z1_CLKINV_1859
    );
  nx57662z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx57662z1_CEINV_1858
    );
  Accu_ctrl_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => Accu_ctrl_DYMUX_1875
    );
  Accu_ctrl_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_ctrl_CLKINV_1872
    );
  U6_c_state_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U6_c_state_6_Q,
      O => U6_c_state_7_DXMUX_1899
    );
  U6_c_state_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_ctrl,
      O => U6_c_state_7_DYMUX_1891
    );
  U6_c_state_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U6_c_state_7_SRINV_1889
    );
  U6_c_state_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U6_c_state_7_CLKINV_1888
    );
  nx36612z77_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z77,
      O => nx36612z77_0
    );
  nx36612z77_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z79_pack_1,
      O => nx36612z79
    );
  ix36612z60093 : X_LUT4
    generic map(
      INIT => X"B966",
      LOC => "SLICE_X1Y0"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(4),
      ADR2 => Rom_Address(3),
      ADR3 => Rom_Address(2),
      O => nx36612z79_pack_1
    );
  nx38684z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx43819z1,
      O => nx38684z1_DYMUX_1939
    );
  nx38684z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx38684z1_SRINV_1937
    );
  nx38684z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx38684z1_CLKINV_1936
    );
  nx38684z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx38684z1_CEINV_1935
    );
  nx36612z84_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z84,
      O => nx36612z84_0
    );
  nx36612z84_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z87,
      O => nx36612z87_0
    );
  ix36612z43377 : X_LUT4
    generic map(
      INIT => X"8590",
      LOC => "SLICE_X3Y3"
    )
    port map (
      ADR0 => Rom_Address(2),
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(3),
      O => nx36612z87
    );
  nx36612z12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z12,
      O => nx36612z12_0
    );
  nx36612z12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z22,
      O => nx36612z22_0
    );
  ix36612z44370 : X_LUT4
    generic map(
      INIT => X"A0C0",
      LOC => "SLICE_X13Y0"
    )
    port map (
      ADR0 => nx3174z1,
      ADR1 => nx8309z1,
      ADR2 => Rom_Address(1),
      ADR3 => Rom_Address(0),
      O => nx36612z22
    );
  nx36612z11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z11,
      O => nx36612z11_0
    );
  nx36612z11_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z15_pack_1,
      O => nx36612z15
    );
  ix36612z42924 : X_LUT4
    generic map(
      INIT => X"8C80",
      LOC => "SLICE_X6Y1"
    )
    port map (
      ADR0 => nx36612z16,
      ADR1 => Rom_Address(1),
      ADR2 => Rom_Address(0),
      ADR3 => nx42426z1,
      O => nx36612z15_pack_1
    );
  nx36612z18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z18,
      O => nx36612z18_0
    );
  nx36612z18_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z25,
      O => nx36612z25_0
    );
  ix36612z44373 : X_LUT4
    generic map(
      INIT => X"A088",
      LOC => "SLICE_X6Y5"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => nx38684z1,
      ADR2 => nx31987z1,
      ADR3 => Rom_Address(0),
      O => nx36612z25
    );
  ix36612z28525 : X_LUT4
    generic map(
      INIT => X"2988",
      LOC => "SLICE_X3Y0"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(4),
      ADR2 => Rom_Address(2),
      ADR3 => Rom_Address(3),
      O => nx36612z85_pack_1
    );
  nx36612z83_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z83,
      O => nx36612z83_0
    );
  nx36612z83_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z85_pack_1,
      O => nx36612z85
    );
  nx36612z20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z20,
      O => nx36612z20_0
    );
  nx36612z20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z30_pack_1,
      O => nx36612z30
    );
  ix36612z5434 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X6Y3"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(2),
      ADR2 => nx36612z31_0,
      ADR3 => nx36612z32_0,
      O => nx36612z30_pack_1
    );
  ix36612z28366 : X_LUT4
    generic map(
      INIT => X"6698",
      LOC => "SLICE_X2Y4"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(4),
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(2),
      O => nx36612z82_pack_1
    );
  nx36612z80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z80,
      O => nx36612z80_0
    );
  nx36612z80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z82_pack_1,
      O => nx36612z82
    );
  nx63575z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx3174z1,
      O => nx63575z1_DYMUX_2122
    );
  nx63575z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx63575z1_SRINV_2120
    );
  nx63575z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx63575z1_CLKINV_2119
    );
  nx63575z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx63575z1_CEINV_2118
    );
  nx36612z31_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z31,
      O => nx36612z31_0
    );
  nx36612z31_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z28,
      O => nx36612z28_0
    );
  ix36612z44376 : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X7Y6"
    )
    port map (
      ADR0 => nx17366z1,
      ADR1 => Rom_Address(0),
      ADR2 => nx53305z1,
      ADR3 => Rom_Address(1),
      O => nx36612z28
    );
  nx60314z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx55179z1,
      O => nx60314z1_DYMUX_2161
    );
  nx60314z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx60314z1_SRINV_2159
    );
  nx60314z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx60314z1_CLKINV_2158
    );
  nx60314z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx60314z1_CEINV_2157
    );
  nx62797z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx57662z1,
      O => nx62797z1_DYMUX_2176
    );
  nx62797z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx62797z1_SRINV_2174
    );
  nx62797z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx62797z1_CLKINV_2173
    );
  nx62797z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx62797z1_CEINV_2172
    );
  Rom_Address_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx57529z1,
      O => Rom_Address_2_DXMUX_2210
    );
  Rom_Address_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx56612z2,
      O => nx56612z2_0
    );
  Rom_Address_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Rom_Address_2_CLKINV_2194
    );
  ix56612z1699 : X_LUT4
    generic map(
      INIT => X"4002",
      LOC => "SLICE_X17Y1"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(3),
      ADR2 => Rom_Address(2),
      ADR3 => Rom_Address(4),
      O => nx56612z2
    );
  nx31987z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx38684z1,
      O => nx31987z1_DYMUX_2226
    );
  nx31987z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx31987z1_SRINV_2224
    );
  nx31987z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx31987z1_CLKINV_2223
    );
  nx31987z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx31987z1_CEINV_2222
    );
  nx36612z2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z2,
      O => nx36612z2_0
    );
  nx36612z2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z17_pack_1,
      O => nx36612z17
    );
  ix36612z4909 : X_LUT4
    generic map(
      INIT => X"3200",
      LOC => "SLICE_X7Y0"
    )
    port map (
      ADR0 => nx36612z18_0,
      ADR1 => Rom_Address(3),
      ADR2 => nx36612z19_0,
      ADR3 => Rom_Address(2),
      O => nx36612z17_pack_1
    );
  nx58440z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx63575z1,
      O => nx58440z1_DYMUX_2265
    );
  nx58440z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx58440z1_SRINV_2263
    );
  nx58440z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx58440z1_CLKINV_2262
    );
  nx58440z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx58440z1_CEINV_2261
    );
  nx36612z89_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z89,
      O => nx36612z89_0
    );
  nx36612z89_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z91_pack_1,
      O => nx36612z91
    );
  ix36612z28783 : X_LUT4
    generic map(
      INIT => X"48C4",
      LOC => "SLICE_X0Y0"
    )
    port map (
      ADR0 => Rom_Address(2),
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(3),
      O => nx36612z91_pack_1
    );
  nx36612z6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z5,
      O => nx36612z6_DXMUX_2313
    );
  nx36612z6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx60314z1,
      O => nx36612z6_DYMUX_2306
    );
  nx36612z6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx36612z6_SRINV_2304
    );
  nx36612z6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z6_CLKINV_2303
    );
  nx36612z6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z6_CEINV_2302
    );
  nx2396z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx62797z1,
      O => nx2396z1_DYMUX_2328
    );
  nx2396z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx2396z1_SRINV_2326
    );
  nx2396z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx2396z1_CLKINV_2325
    );
  nx2396z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx2396z1_CEINV_2324
    );
  Rom_Address_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx55535z1,
      O => Rom_Address_4_DXMUX_2362
    );
  Rom_Address_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx55535z3_pack_2,
      O => nx55535z3
    );
  Rom_Address_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Rom_Address_4_CLKINV_2344
    );
  ix55535z1317 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X15Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Delay_Line_sample_shift,
      ADR2 => U6_c_state_0_Q,
      ADR3 => VCC,
      O => nx55535z3_pack_2
    );
  nx34639z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36032z1,
      O => nx34639z1_DYMUX_2378
    );
  nx34639z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx34639z1_SRINV_2376
    );
  nx34639z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx34639z1_CLKINV_2375
    );
  nx34639z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx34639z1_CEINV_2374
    );
  nx37122z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx31987z1,
      O => nx37122z1_DYMUX_2393
    );
  nx37122z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx37122z1_SRINV_2391
    );
  nx37122z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx37122z1_CLKINV_2390
    );
  nx37122z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx37122z1_CEINV_2389
    );
  nx36612z73_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z73,
      O => nx36612z73_0
    );
  nx36612z73_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z74_pack_1,
      O => nx36612z74
    );
  ix36612z61990 : X_LUT4
    generic map(
      INIT => X"FE80",
      LOC => "SLICE_X2Y2"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(1),
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(2),
      O => nx36612z74_pack_1
    );
  nx53305z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx58440z1,
      O => nx53305z1_DYMUX_2432
    );
  nx53305z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx53305z1_SRINV_2430
    );
  nx53305z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx53305z1_CLKINV_2429
    );
  nx53305z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx53305z1_CEINV_2428
    );
  nx36032z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx2396z1,
      O => nx36032z1_DYMUX_2447
    );
  nx36032z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx36032z1_SRINV_2445
    );
  nx36032z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36032z1_CLKINV_2444
    );
  nx36032z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36032z1_CEINV_2443
    );
  nx18579z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx18579z1_BYINV_2461,
      O => nx18579z1_DYMUX_2462
    );
  nx18579z1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => nx18579z1_BYINV_2461
    );
  nx18579z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx18579z1_SRINV_2460
    );
  nx18579z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx18579z1_CLKINV_2459
    );
  nx18579z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx18579z1_CEINV_2458
    );
  U4_Accu_out_dup_0_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(0),
      O => U4_Accu_out_dup_0_0_DXMUX_2496
    );
  U4_Accu_out_dup_0_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X9Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx24035z1,
      O => U4_nx24035z1_0
    );
  U4_Accu_out_dup_0_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U4_Accu_out_dup_0_0_SRINV_2478
    );
  U4_Accu_out_dup_0_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_dup_0_0_CLKINV_2477
    );
  U4_ix24035z1328 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X9Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Reset_int,
      ADR3 => Accu_ctrl,
      O => U4_nx24035z1
    );
  nx39774z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx34639z1,
      O => nx39774z1_DYMUX_2510
    );
  nx39774z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx39774z1_SRINV_2508
    );
  nx39774z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx39774z1_CLKINV_2507
    );
  nx39774z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx39774z1_CEINV_2506
    );
  nx42257z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx37122z1,
      O => nx42257z1_DYMUX_2525
    );
  nx42257z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx42257z1_SRINV_2523
    );
  nx42257z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx42257z1_CLKINV_2522
    );
  nx42257z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx42257z1_CEINV_2521
    );
  U4_ACCU_1n1s1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_XORF_2565,
      O => U4_ACCU_1n1s1(0)
    );
  U4_ACCU_1n1s1_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y0"
    )
    port map (
      I0 => U4_ACCU_1n1s1_0_CYINIT_2564,
      I1 => U4_nx30768z1,
      O => U4_ACCU_1n1s1_0_XORF_2565
    );
  U4_ACCU_1n1s1_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y0"
    )
    port map (
      IA => U4_ACCU_1n1s1_0_CY0F_2563,
      IB => U4_ACCU_1n1s1_0_CYINIT_2564,
      SEL => U4_ACCU_1n1s1_0_CYSELF_2555,
      O => U4_ACCU_add21_1i1_muxcy_0_O
    );
  U4_ACCU_1n1s1_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_BXINV_2553,
      O => U4_ACCU_1n1s1_0_CYINIT_2564
    );
  U4_ACCU_1n1s1_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out_dup_0(0),
      O => U4_ACCU_1n1s1_0_CY0F_2563
    );
  U4_ACCU_1n1s1_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30768z1,
      O => U4_ACCU_1n1s1_0_CYSELF_2555
    );
  U4_ACCU_1n1s1_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => U4_ACCU_1n1s1_0_BXINV_2553
    );
  U4_ACCU_1n1s1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_XORG_2551,
      O => U4_ACCU_1n1s1(1)
    );
  U4_ACCU_1n1s1_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y0"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_0_O,
      I1 => U4_nx30769z1,
      O => U4_ACCU_1n1s1_0_XORG_2551
    );
  U4_ACCU_1n1s1_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_CYMUXG_2550,
      O => U4_ACCU_add21_1i1_muxcy_1_O
    );
  U4_ACCU_1n1s1_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X10Y0"
    )
    port map (
      IA => U4_ACCU_1n1s1_0_CY0G_2548,
      IB => U4_ACCU_add21_1i1_muxcy_0_O,
      SEL => U4_ACCU_1n1s1_0_CYSELG_2540,
      O => U4_ACCU_1n1s1_0_CYMUXG_2550
    );
  U4_ACCU_1n1s1_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(1),
      O => U4_ACCU_1n1s1_0_CY0G_2548
    );
  U4_ACCU_1n1s1_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30769z1,
      O => U4_ACCU_1n1s1_0_CYSELG_2540
    );
  U4_ix30769z1320 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X10Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(1),
      ADR2 => Mult_out(1),
      ADR3 => VCC,
      O => U4_nx30769z1
    );
  U4_ACCU_1n1s1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_2_XORF_2604,
      O => U4_ACCU_1n1s1(2)
    );
  U4_ACCU_1n1s1_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      I0 => U4_ACCU_1n1s1_2_CYINIT_2603,
      I1 => U4_nx30770z1,
      O => U4_ACCU_1n1s1_2_XORF_2604
    );
  U4_ACCU_1n1s1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CY0F_2602,
      IB => U4_ACCU_1n1s1_2_CYINIT_2603,
      SEL => U4_ACCU_1n1s1_2_CYSELF_2590,
      O => U4_ACCU_add21_1i1_muxcy_2_O
    );
  U4_ACCU_1n1s1_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CY0F_2602,
      IB => U4_ACCU_1n1s1_2_CY0F_2602,
      SEL => U4_ACCU_1n1s1_2_CYSELF_2590,
      O => U4_ACCU_1n1s1_2_CYMUXF2_2585
    );
  U4_ACCU_1n1s1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_1_O,
      O => U4_ACCU_1n1s1_2_CYINIT_2603
    );
  U4_ACCU_1n1s1_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(2),
      O => U4_ACCU_1n1s1_2_CY0F_2602
    );
  U4_ACCU_1n1s1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30770z1,
      O => U4_ACCU_1n1s1_2_CYSELF_2590
    );
  U4_ACCU_1n1s1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_2_XORG_2592,
      O => U4_ACCU_1n1s1(3)
    );
  U4_ACCU_1n1s1_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_2_O,
      I1 => U4_nx30771z1,
      O => U4_ACCU_1n1s1_2_XORG_2592
    );
  U4_ACCU_1n1s1_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_2_CYMUXFAST_2589,
      O => U4_ACCU_add21_1i1_muxcy_3_O
    );
  U4_ACCU_1n1s1_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_1_O,
      O => U4_ACCU_1n1s1_2_FASTCARRY_2587
    );
  U4_ACCU_1n1s1_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      I0 => U4_ACCU_1n1s1_2_CYSELG_2576,
      I1 => U4_ACCU_1n1s1_2_CYSELF_2590,
      O => U4_ACCU_1n1s1_2_CYAND_2588
    );
  U4_ACCU_1n1s1_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CYMUXG2_2586,
      IB => U4_ACCU_1n1s1_2_FASTCARRY_2587,
      SEL => U4_ACCU_1n1s1_2_CYAND_2588,
      O => U4_ACCU_1n1s1_2_CYMUXFAST_2589
    );
  U4_ACCU_1n1s1_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y1"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CY0G_2584,
      IB => U4_ACCU_1n1s1_2_CYMUXF2_2585,
      SEL => U4_ACCU_1n1s1_2_CYSELG_2576,
      O => U4_ACCU_1n1s1_2_CYMUXG2_2586
    );
  U4_ACCU_1n1s1_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(3),
      O => U4_ACCU_1n1s1_2_CY0G_2584
    );
  U4_ACCU_1n1s1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30771z1,
      O => U4_ACCU_1n1s1_2_CYSELG_2576
    );
  U4_ix30771z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X10Y1"
    )
    port map (
      ADR0 => U4_Accu_out(3),
      ADR1 => VCC,
      ADR2 => Mult_out(3),
      ADR3 => VCC,
      O => U4_nx30771z1
    );
  U4_ACCU_1n1s1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_4_XORF_2643,
      O => U4_ACCU_1n1s1(4)
    );
  U4_ACCU_1n1s1_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      I0 => U4_ACCU_1n1s1_4_CYINIT_2642,
      I1 => U4_nx30772z1,
      O => U4_ACCU_1n1s1_4_XORF_2643
    );
  U4_ACCU_1n1s1_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CY0F_2641,
      IB => U4_ACCU_1n1s1_4_CYINIT_2642,
      SEL => U4_ACCU_1n1s1_4_CYSELF_2629,
      O => U4_ACCU_add21_1i1_muxcy_4_O
    );
  U4_ACCU_1n1s1_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CY0F_2641,
      IB => U4_ACCU_1n1s1_4_CY0F_2641,
      SEL => U4_ACCU_1n1s1_4_CYSELF_2629,
      O => U4_ACCU_1n1s1_4_CYMUXF2_2624
    );
  U4_ACCU_1n1s1_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_3_O,
      O => U4_ACCU_1n1s1_4_CYINIT_2642
    );
  U4_ACCU_1n1s1_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(4),
      O => U4_ACCU_1n1s1_4_CY0F_2641
    );
  U4_ACCU_1n1s1_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30772z1,
      O => U4_ACCU_1n1s1_4_CYSELF_2629
    );
  U4_ACCU_1n1s1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_4_XORG_2631,
      O => U4_ACCU_1n1s1(5)
    );
  U4_ACCU_1n1s1_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_4_O,
      I1 => U4_nx30773z1,
      O => U4_ACCU_1n1s1_4_XORG_2631
    );
  U4_ACCU_1n1s1_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_4_CYMUXFAST_2628,
      O => U4_ACCU_add21_1i1_muxcy_5_O
    );
  U4_ACCU_1n1s1_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_3_O,
      O => U4_ACCU_1n1s1_4_FASTCARRY_2626
    );
  U4_ACCU_1n1s1_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      I0 => U4_ACCU_1n1s1_4_CYSELG_2615,
      I1 => U4_ACCU_1n1s1_4_CYSELF_2629,
      O => U4_ACCU_1n1s1_4_CYAND_2627
    );
  U4_ACCU_1n1s1_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CYMUXG2_2625,
      IB => U4_ACCU_1n1s1_4_FASTCARRY_2626,
      SEL => U4_ACCU_1n1s1_4_CYAND_2627,
      O => U4_ACCU_1n1s1_4_CYMUXFAST_2628
    );
  U4_ACCU_1n1s1_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y2"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CY0G_2623,
      IB => U4_ACCU_1n1s1_4_CYMUXF2_2624,
      SEL => U4_ACCU_1n1s1_4_CYSELG_2615,
      O => U4_ACCU_1n1s1_4_CYMUXG2_2625
    );
  U4_ACCU_1n1s1_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(5),
      O => U4_ACCU_1n1s1_4_CY0G_2623
    );
  U4_ACCU_1n1s1_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30773z1,
      O => U4_ACCU_1n1s1_4_CYSELG_2615
    );
  U4_ix30773z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X10Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(5),
      ADR2 => VCC,
      ADR3 => Mult_out(5),
      O => U4_nx30773z1
    );
  U4_ACCU_1n1s1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_6_XORF_2682,
      O => U4_ACCU_1n1s1(6)
    );
  U4_ACCU_1n1s1_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      I0 => U4_ACCU_1n1s1_6_CYINIT_2681,
      I1 => U4_nx30774z1,
      O => U4_ACCU_1n1s1_6_XORF_2682
    );
  U4_ACCU_1n1s1_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CY0F_2680,
      IB => U4_ACCU_1n1s1_6_CYINIT_2681,
      SEL => U4_ACCU_1n1s1_6_CYSELF_2668,
      O => U4_ACCU_add21_1i1_muxcy_6_O
    );
  U4_ACCU_1n1s1_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CY0F_2680,
      IB => U4_ACCU_1n1s1_6_CY0F_2680,
      SEL => U4_ACCU_1n1s1_6_CYSELF_2668,
      O => U4_ACCU_1n1s1_6_CYMUXF2_2663
    );
  U4_ACCU_1n1s1_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_5_O,
      O => U4_ACCU_1n1s1_6_CYINIT_2681
    );
  U4_ACCU_1n1s1_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(6),
      O => U4_ACCU_1n1s1_6_CY0F_2680
    );
  U4_ACCU_1n1s1_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30774z1,
      O => U4_ACCU_1n1s1_6_CYSELF_2668
    );
  U4_ACCU_1n1s1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_6_XORG_2670,
      O => U4_ACCU_1n1s1(7)
    );
  U4_ACCU_1n1s1_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_6_O,
      I1 => U4_nx30775z1,
      O => U4_ACCU_1n1s1_6_XORG_2670
    );
  U4_ACCU_1n1s1_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_6_CYMUXFAST_2667,
      O => U4_ACCU_add21_1i1_muxcy_7_O
    );
  U4_ACCU_1n1s1_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_5_O,
      O => U4_ACCU_1n1s1_6_FASTCARRY_2665
    );
  U4_ACCU_1n1s1_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      I0 => U4_ACCU_1n1s1_6_CYSELG_2654,
      I1 => U4_ACCU_1n1s1_6_CYSELF_2668,
      O => U4_ACCU_1n1s1_6_CYAND_2666
    );
  U4_ACCU_1n1s1_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CYMUXG2_2664,
      IB => U4_ACCU_1n1s1_6_FASTCARRY_2665,
      SEL => U4_ACCU_1n1s1_6_CYAND_2666,
      O => U4_ACCU_1n1s1_6_CYMUXFAST_2667
    );
  U4_ACCU_1n1s1_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CY0G_2662,
      IB => U4_ACCU_1n1s1_6_CYMUXF2_2663,
      SEL => U4_ACCU_1n1s1_6_CYSELG_2654,
      O => U4_ACCU_1n1s1_6_CYMUXG2_2664
    );
  U4_ACCU_1n1s1_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(7),
      O => U4_ACCU_1n1s1_6_CY0G_2662
    );
  U4_ACCU_1n1s1_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30775z1,
      O => U4_ACCU_1n1s1_6_CYSELG_2654
    );
  U4_ix30775z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X10Y3"
    )
    port map (
      ADR0 => U4_Accu_out(7),
      ADR1 => VCC,
      ADR2 => Mult_out(7),
      ADR3 => VCC,
      O => U4_nx30775z1
    );
  U4_ACCU_1n1s1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_8_XORF_2721,
      O => U4_ACCU_1n1s1(8)
    );
  U4_ACCU_1n1s1_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      I0 => U4_ACCU_1n1s1_8_CYINIT_2720,
      I1 => U4_nx30776z1,
      O => U4_ACCU_1n1s1_8_XORF_2721
    );
  U4_ACCU_1n1s1_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CY0F_2719,
      IB => U4_ACCU_1n1s1_8_CYINIT_2720,
      SEL => U4_ACCU_1n1s1_8_CYSELF_2707,
      O => U4_ACCU_add21_1i1_muxcy_8_O
    );
  U4_ACCU_1n1s1_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CY0F_2719,
      IB => U4_ACCU_1n1s1_8_CY0F_2719,
      SEL => U4_ACCU_1n1s1_8_CYSELF_2707,
      O => U4_ACCU_1n1s1_8_CYMUXF2_2702
    );
  U4_ACCU_1n1s1_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_7_O,
      O => U4_ACCU_1n1s1_8_CYINIT_2720
    );
  U4_ACCU_1n1s1_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(8),
      O => U4_ACCU_1n1s1_8_CY0F_2719
    );
  U4_ACCU_1n1s1_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30776z1,
      O => U4_ACCU_1n1s1_8_CYSELF_2707
    );
  U4_ACCU_1n1s1_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_8_XORG_2709,
      O => U4_ACCU_1n1s1(9)
    );
  U4_ACCU_1n1s1_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_8_O,
      I1 => U4_nx30777z1,
      O => U4_ACCU_1n1s1_8_XORG_2709
    );
  U4_ACCU_1n1s1_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_8_CYMUXFAST_2706,
      O => U4_ACCU_add21_1i1_muxcy_9_O
    );
  U4_ACCU_1n1s1_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_7_O,
      O => U4_ACCU_1n1s1_8_FASTCARRY_2704
    );
  U4_ACCU_1n1s1_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      I0 => U4_ACCU_1n1s1_8_CYSELG_2693,
      I1 => U4_ACCU_1n1s1_8_CYSELF_2707,
      O => U4_ACCU_1n1s1_8_CYAND_2705
    );
  U4_ACCU_1n1s1_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CYMUXG2_2703,
      IB => U4_ACCU_1n1s1_8_FASTCARRY_2704,
      SEL => U4_ACCU_1n1s1_8_CYAND_2705,
      O => U4_ACCU_1n1s1_8_CYMUXFAST_2706
    );
  U4_ACCU_1n1s1_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CY0G_2701,
      IB => U4_ACCU_1n1s1_8_CYMUXF2_2702,
      SEL => U4_ACCU_1n1s1_8_CYSELG_2693,
      O => U4_ACCU_1n1s1_8_CYMUXG2_2703
    );
  U4_ACCU_1n1s1_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(9),
      O => U4_ACCU_1n1s1_8_CY0G_2701
    );
  U4_ACCU_1n1s1_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30777z1,
      O => U4_ACCU_1n1s1_8_CYSELG_2693
    );
  U4_ix30777z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X10Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(9),
      ADR2 => VCC,
      ADR3 => Mult_out(9),
      O => U4_nx30777z1
    );
  U4_ACCU_1n1s1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_10_XORF_2760,
      O => U4_ACCU_1n1s1(10)
    );
  U4_ACCU_1n1s1_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      I0 => U4_ACCU_1n1s1_10_CYINIT_2759,
      I1 => U4_nx5893z1,
      O => U4_ACCU_1n1s1_10_XORF_2760
    );
  U4_ACCU_1n1s1_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CY0F_2758,
      IB => U4_ACCU_1n1s1_10_CYINIT_2759,
      SEL => U4_ACCU_1n1s1_10_CYSELF_2746,
      O => U4_ACCU_add21_1i1_muxcy_10_O
    );
  U4_ACCU_1n1s1_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CY0F_2758,
      IB => U4_ACCU_1n1s1_10_CY0F_2758,
      SEL => U4_ACCU_1n1s1_10_CYSELF_2746,
      O => U4_ACCU_1n1s1_10_CYMUXF2_2741
    );
  U4_ACCU_1n1s1_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_9_O,
      O => U4_ACCU_1n1s1_10_CYINIT_2759
    );
  U4_ACCU_1n1s1_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(10),
      O => U4_ACCU_1n1s1_10_CY0F_2758
    );
  U4_ACCU_1n1s1_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5893z1,
      O => U4_ACCU_1n1s1_10_CYSELF_2746
    );
  U4_ACCU_1n1s1_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_10_XORG_2748,
      O => U4_ACCU_1n1s1(11)
    );
  U4_ACCU_1n1s1_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_10_O,
      I1 => U4_nx5894z1,
      O => U4_ACCU_1n1s1_10_XORG_2748
    );
  U4_ACCU_1n1s1_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_10_CYMUXFAST_2745,
      O => U4_ACCU_add21_1i1_muxcy_11_O
    );
  U4_ACCU_1n1s1_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_9_O,
      O => U4_ACCU_1n1s1_10_FASTCARRY_2743
    );
  U4_ACCU_1n1s1_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      I0 => U4_ACCU_1n1s1_10_CYSELG_2732,
      I1 => U4_ACCU_1n1s1_10_CYSELF_2746,
      O => U4_ACCU_1n1s1_10_CYAND_2744
    );
  U4_ACCU_1n1s1_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CYMUXG2_2742,
      IB => U4_ACCU_1n1s1_10_FASTCARRY_2743,
      SEL => U4_ACCU_1n1s1_10_CYAND_2744,
      O => U4_ACCU_1n1s1_10_CYMUXFAST_2745
    );
  U4_ACCU_1n1s1_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y5"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CY0G_2740,
      IB => U4_ACCU_1n1s1_10_CYMUXF2_2741,
      SEL => U4_ACCU_1n1s1_10_CYSELG_2732,
      O => U4_ACCU_1n1s1_10_CYMUXG2_2742
    );
  U4_ACCU_1n1s1_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(11),
      O => U4_ACCU_1n1s1_10_CY0G_2740
    );
  U4_ACCU_1n1s1_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5894z1,
      O => U4_ACCU_1n1s1_10_CYSELG_2732
    );
  U4_ix5894z1320 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X10Y5"
    )
    port map (
      ADR0 => U4_Accu_out(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Mult_out(11),
      O => U4_nx5894z1
    );
  U4_ACCU_1n1s1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_12_XORF_2799,
      O => U4_ACCU_1n1s1(12)
    );
  U4_ACCU_1n1s1_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      I0 => U4_ACCU_1n1s1_12_CYINIT_2798,
      I1 => U4_nx5895z1,
      O => U4_ACCU_1n1s1_12_XORF_2799
    );
  U4_ACCU_1n1s1_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CY0F_2797,
      IB => U4_ACCU_1n1s1_12_CYINIT_2798,
      SEL => U4_ACCU_1n1s1_12_CYSELF_2785,
      O => U4_ACCU_add21_1i1_muxcy_12_O
    );
  U4_ACCU_1n1s1_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CY0F_2797,
      IB => U4_ACCU_1n1s1_12_CY0F_2797,
      SEL => U4_ACCU_1n1s1_12_CYSELF_2785,
      O => U4_ACCU_1n1s1_12_CYMUXF2_2780
    );
  U4_ACCU_1n1s1_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_11_O,
      O => U4_ACCU_1n1s1_12_CYINIT_2798
    );
  U4_ACCU_1n1s1_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(12),
      O => U4_ACCU_1n1s1_12_CY0F_2797
    );
  U4_ACCU_1n1s1_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5895z1,
      O => U4_ACCU_1n1s1_12_CYSELF_2785
    );
  U4_ACCU_1n1s1_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_12_XORG_2787,
      O => U4_ACCU_1n1s1(13)
    );
  U4_ACCU_1n1s1_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_12_O,
      I1 => U4_nx5896z1,
      O => U4_ACCU_1n1s1_12_XORG_2787
    );
  U4_ACCU_1n1s1_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_12_CYMUXFAST_2784,
      O => U4_ACCU_add21_1i1_muxcy_13_O
    );
  U4_ACCU_1n1s1_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_11_O,
      O => U4_ACCU_1n1s1_12_FASTCARRY_2782
    );
  U4_ACCU_1n1s1_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      I0 => U4_ACCU_1n1s1_12_CYSELG_2771,
      I1 => U4_ACCU_1n1s1_12_CYSELF_2785,
      O => U4_ACCU_1n1s1_12_CYAND_2783
    );
  U4_ACCU_1n1s1_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CYMUXG2_2781,
      IB => U4_ACCU_1n1s1_12_FASTCARRY_2782,
      SEL => U4_ACCU_1n1s1_12_CYAND_2783,
      O => U4_ACCU_1n1s1_12_CYMUXFAST_2784
    );
  U4_ACCU_1n1s1_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y6"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CY0G_2779,
      IB => U4_ACCU_1n1s1_12_CYMUXF2_2780,
      SEL => U4_ACCU_1n1s1_12_CYSELG_2771,
      O => U4_ACCU_1n1s1_12_CYMUXG2_2781
    );
  U4_ACCU_1n1s1_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(13),
      O => U4_ACCU_1n1s1_12_CY0G_2779
    );
  U4_ACCU_1n1s1_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5896z1,
      O => U4_ACCU_1n1s1_12_CYSELG_2771
    );
  U4_ix5896z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X10Y6"
    )
    port map (
      ADR0 => Accu_out(13),
      ADR1 => VCC,
      ADR2 => Mult_out(13),
      ADR3 => VCC,
      O => U4_nx5896z1
    );
  U4_ACCU_1n1s1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_14_XORF_2838,
      O => U4_ACCU_1n1s1(14)
    );
  U4_ACCU_1n1s1_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      I0 => U4_ACCU_1n1s1_14_CYINIT_2837,
      I1 => U4_nx5897z1,
      O => U4_ACCU_1n1s1_14_XORF_2838
    );
  U4_ACCU_1n1s1_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CY0F_2836,
      IB => U4_ACCU_1n1s1_14_CYINIT_2837,
      SEL => U4_ACCU_1n1s1_14_CYSELF_2824,
      O => U4_ACCU_add21_1i1_muxcy_14_O
    );
  U4_ACCU_1n1s1_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CY0F_2836,
      IB => U4_ACCU_1n1s1_14_CY0F_2836,
      SEL => U4_ACCU_1n1s1_14_CYSELF_2824,
      O => U4_ACCU_1n1s1_14_CYMUXF2_2819
    );
  U4_ACCU_1n1s1_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_13_O,
      O => U4_ACCU_1n1s1_14_CYINIT_2837
    );
  U4_ACCU_1n1s1_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(14),
      O => U4_ACCU_1n1s1_14_CY0F_2836
    );
  U4_ACCU_1n1s1_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5897z1,
      O => U4_ACCU_1n1s1_14_CYSELF_2824
    );
  U4_ACCU_1n1s1_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_14_XORG_2826,
      O => U4_ACCU_1n1s1(15)
    );
  U4_ACCU_1n1s1_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_14_O,
      I1 => U4_nx5898z1,
      O => U4_ACCU_1n1s1_14_XORG_2826
    );
  U4_ACCU_1n1s1_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_14_CYMUXFAST_2823,
      O => U4_ACCU_add21_1i1_muxcy_15_O
    );
  U4_ACCU_1n1s1_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_13_O,
      O => U4_ACCU_1n1s1_14_FASTCARRY_2821
    );
  U4_ACCU_1n1s1_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      I0 => U4_ACCU_1n1s1_14_CYSELG_2810,
      I1 => U4_ACCU_1n1s1_14_CYSELF_2824,
      O => U4_ACCU_1n1s1_14_CYAND_2822
    );
  U4_ACCU_1n1s1_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CYMUXG2_2820,
      IB => U4_ACCU_1n1s1_14_FASTCARRY_2821,
      SEL => U4_ACCU_1n1s1_14_CYAND_2822,
      O => U4_ACCU_1n1s1_14_CYMUXFAST_2823
    );
  U4_ACCU_1n1s1_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y7"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CY0G_2818,
      IB => U4_ACCU_1n1s1_14_CYMUXF2_2819,
      SEL => U4_ACCU_1n1s1_14_CYSELG_2810,
      O => U4_ACCU_1n1s1_14_CYMUXG2_2820
    );
  U4_ACCU_1n1s1_14_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(15),
      O => U4_ACCU_1n1s1_14_CY0G_2818
    );
  U4_ACCU_1n1s1_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5898z1,
      O => U4_ACCU_1n1s1_14_CYSELG_2810
    );
  U4_ix5898z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X10Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Accu_out(15),
      ADR2 => VCC,
      ADR3 => Mult_out(15),
      O => U4_nx5898z1
    );
  Accu_out_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      O => Accu_out_16_LOGIC_ZERO_2860
    );
  Accu_out_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_XORF_2885,
      O => Accu_out_16_DXMUX_2887
    );
  Accu_out_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      I0 => Accu_out_16_CYINIT_2884,
      I1 => Accu_out_16_F,
      O => Accu_out_16_XORF_2885
    );
  Accu_out_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => Accu_out_16_LOGIC_ZERO_2860,
      IB => Accu_out_16_CYINIT_2884,
      SEL => Accu_out_16_CYSELF_2866,
      O => U4_ACCU_add21_1i1_muxcy_16_O
    );
  Accu_out_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => Accu_out_16_LOGIC_ZERO_2860,
      IB => Accu_out_16_LOGIC_ZERO_2860,
      SEL => Accu_out_16_CYSELF_2866,
      O => Accu_out_16_CYMUXF2_2861
    );
  Accu_out_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_15_O,
      O => Accu_out_16_CYINIT_2884
    );
  Accu_out_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_F,
      O => Accu_out_16_CYSELF_2866
    );
  Accu_out_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_XORG_2868,
      O => Accu_out_16_DYMUX_2870
    );
  Accu_out_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_16_O,
      I1 => Accu_out_16_G,
      O => Accu_out_16_XORG_2868
    );
  Accu_out_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_15_O,
      O => Accu_out_16_FASTCARRY_2863
    );
  Accu_out_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      I0 => Accu_out_16_CYSELG_2851,
      I1 => Accu_out_16_CYSELF_2866,
      O => Accu_out_16_CYAND_2864
    );
  Accu_out_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => Accu_out_16_CYMUXG2_2862,
      IB => Accu_out_16_FASTCARRY_2863,
      SEL => Accu_out_16_CYAND_2864,
      O => Accu_out_16_CYMUXFAST_2865
    );
  Accu_out_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y8"
    )
    port map (
      IA => Accu_out_16_LOGIC_ZERO_2860,
      IB => Accu_out_16_CYMUXF2_2861,
      SEL => Accu_out_16_CYSELG_2851,
      O => Accu_out_16_CYMUXG2_2862
    );
  Accu_out_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_G,
      O => Accu_out_16_CYSELG_2851
    );
  Accu_out_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx24035z1_0,
      O => Accu_out_16_SRINV_2849
    );
  Accu_out_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y8",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_16_CLKINV_2848
    );
  Accu_out_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X10Y9"
    )
    port map (
      O => Accu_out_18_LOGIC_ZERO_2929
    );
  Accu_out_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_18_XORF_2930,
      O => Accu_out_18_DXMUX_2932
    );
  Accu_out_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X10Y9"
    )
    port map (
      I0 => Accu_out_18_CYINIT_2928,
      I1 => Accu_out_18_F,
      O => Accu_out_18_XORF_2930
    );
  Accu_out_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X10Y9"
    )
    port map (
      IA => Accu_out_18_LOGIC_ZERO_2929,
      IB => Accu_out_18_CYINIT_2928,
      SEL => Accu_out_18_CYSELF_2919,
      O => U4_ACCU_add21_1i1_muxcy_18_O
    );
  Accu_out_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_CYMUXFAST_2865,
      O => Accu_out_18_CYINIT_2928
    );
  Accu_out_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_18_F,
      O => Accu_out_18_CYSELF_2919
    );
  Accu_out_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_18_XORG_2911,
      O => Accu_out_18_DYMUX_2913
    );
  Accu_out_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X10Y9"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_18_O,
      I1 => Accu_out_19_rt_2908,
      O => Accu_out_18_XORG_2911
    );
  Accu_out_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx24035z1_0,
      O => Accu_out_18_SRINV_2900
    );
  Accu_out_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_18_CLKINV_2899
    );
  U4_reg_ACCU_19_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => '0'
    )
    port map (
      I => Accu_out_18_DYMUX_2913,
      CE => VCC,
      CLK => Accu_out_18_CLKINV_2899,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_18_SRINV_2900,
      O => Accu_out(19)
    );
  Accu_out_19_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X10Y9"
    )
    port map (
      ADR0 => Accu_out(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Accu_out_19_rt_2908
    );
  nx36612z60_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z60,
      O => nx36612z60_0
    );
  nx36612z60_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z60_GMC15,
      O => nx36612z60_DIF_MUX_2971
    );
  nx36612z60_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z59,
      O => nx36612z59_0
    );
  nx36612z60_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_2_INBUF,
      O => nx36612z60_DIG_MUX_2958
    );
  nx36612z60_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z60_SRINV_2950
    );
  nx36612z60_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z60_CLKINV_2956
    );
  nx36612z50_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z50,
      O => nx36612z50_0
    );
  nx36612z50_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z50_GMC15,
      O => nx36612z50_DIF_MUX_3016
    );
  nx36612z50_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z49,
      O => nx36612z49_0
    );
  nx36612z50_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_4_INBUF,
      O => nx36612z50_DIG_MUX_3003
    );
  nx36612z50_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z50_SRINV_2995
    );
  nx36612z50_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z50_CLKINV_3001
    );
  nx36612z40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z40,
      O => nx36612z40_0
    );
  nx36612z40_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z40_GMC15,
      O => nx36612z40_DIF_MUX_3061
    );
  nx36612z40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z39,
      O => nx36612z39_0
    );
  nx36612z40_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_6_INBUF,
      O => nx36612z40_DIG_MUX_3048
    );
  nx36612z40_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z40_SRINV_3040
    );
  nx36612z40_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z40_CLKINV_3046
    );
  nx36612z70_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z70,
      O => nx36612z70_0
    );
  nx36612z70_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z70_GMC15,
      O => nx36612z70_DIF_MUX_3106
    );
  nx36612z70_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z69,
      O => nx36612z69_0
    );
  nx36612z70_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_0_INBUF,
      O => nx36612z70_DIG_MUX_3093
    );
  nx36612z70_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z70_SRINV_3085
    );
  nx36612z70_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z70_CLKINV_3091
    );
  nx36612z65_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z65,
      O => nx36612z65_0
    );
  nx36612z65_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z65_GMC15,
      O => nx36612z65_DIF_MUX_3151
    );
  nx36612z65_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z64,
      O => nx36612z64_0
    );
  nx36612z65_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_1_INBUF,
      O => nx36612z65_DIG_MUX_3138
    );
  nx36612z65_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z65_SRINV_3130
    );
  nx36612z65_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z65_CLKINV_3136
    );
  nx36612z55_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z55,
      O => nx36612z55_0
    );
  nx36612z55_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z55_GMC15,
      O => nx36612z55_DIF_MUX_3196
    );
  nx36612z55_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z54,
      O => nx36612z54_0
    );
  nx36612z55_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_3_INBUF,
      O => nx36612z55_DIG_MUX_3183
    );
  nx36612z55_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z55_SRINV_3175
    );
  nx36612z55_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z55_CLKINV_3181
    );
  ix36612z43706 : X_LUT4
    generic map(
      INIT => X"C338",
      LOC => "SLICE_X1Y1"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(4),
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(2),
      O => nx36612z78
    );
  nx36612z45_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z45,
      O => nx36612z45_0
    );
  nx36612z45_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z45_GMC15,
      O => nx36612z45_DIF_MUX_3241
    );
  nx36612z45_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z44,
      O => nx36612z44_0
    );
  nx36612z45_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_5_INBUF,
      O => nx36612z45_DIG_MUX_3228
    );
  nx36612z45_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z45_SRINV_3220
    );
  nx36612z45_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z45_CLKINV_3226
    );
  nx36612z35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z35,
      O => nx36612z35_0
    );
  nx36612z35_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z35_GMC15,
      O => nx36612z35_DIF_MUX_3286
    );
  nx36612z35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z34,
      O => nx36612z34_0
    );
  nx36612z35_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_7_INBUF,
      O => nx36612z35_DIG_MUX_3273
    );
  nx36612z35_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z35_SRINV_3265
    );
  nx36612z35_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z35_CLKINV_3271
    );
  Filter_In_ibuf_0_Q : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(0),
      O => Filter_In_0_INBUF
    );
  ADC_csb_obuf : X_OBUF
    generic map(
      LOC => "PAD120"
    )
    port map (
      I => ADC_csb_O,
      O => ADC_csb
    );
  Filter_In_ibuf_1_Q : X_BUF
    generic map(
      LOC => "PAD147",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(1),
      O => Filter_In_1_INBUF
    );
  Filter_In_ibuf_2_Q : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(2),
      O => Filter_In_2_INBUF
    );
  Filter_In_ibuf_3_Q : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(3),
      O => Filter_In_3_INBUF
    );
  Filter_In_ibuf_4_Q : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(4),
      O => Filter_In_4_INBUF
    );
  Filter_In_ibuf_5_Q : X_BUF
    generic map(
      LOC => "PAD148",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(5),
      O => Filter_In_5_INBUF
    );
  Filter_In_ibuf_6_Q : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(6),
      O => Filter_In_6_INBUF
    );
  Filter_In_ibuf_7_Q : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(7),
      O => Filter_In_7_INBUF
    );
  CLRB_obuf : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => CLRB_O,
      O => CLRB
    );
  LDACb_obuf : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => LDACb_O,
      O => LDACb
    );
  Filter_Out_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => Filter_Out_0_O,
      O => Filter_Out(0)
    );
  ADC_Convstb_obuf : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => ADC_Convstb_O,
      O => ADC_Convstb
    );
  Filter_Out_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => Filter_Out_1_O,
      O => Filter_Out(1)
    );
  Filter_Out_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => Filter_Out_2_O,
      O => Filter_Out(2)
    );
  Filter_Out_obuf_3_Q : X_OBUF
    generic map(
      LOC => "PAD132"
    )
    port map (
      I => Filter_Out_3_O,
      O => Filter_Out(3)
    );
  Filter_Out_obuf_4_Q : X_OBUF
    generic map(
      LOC => "PAD131"
    )
    port map (
      I => Filter_Out_4_O,
      O => Filter_Out(4)
    );
  Filter_Out_obuf_5_Q : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => Filter_Out_5_O,
      O => Filter_Out(5)
    );
  Filter_Out_obuf_6_Q : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => Filter_Out_6_O,
      O => Filter_Out(6)
    );
  Filter_Out_obuf_7_Q : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => Filter_Out_7_O,
      O => Filter_Out(7)
    );
  DAC_WRb_obuf : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => DAC_WRb_O,
      O => DAC_WRb
    );
  Reset_ibuf : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset,
      O => Reset_INBUF
    );
  Reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_INBUF,
      O => Reset_int
    );
  ADC_Rdb_obuf : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => ADC_Rdb_O,
      O => ADC_Rdb
    );
  CLK_ibuf_IBUFG : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  DAC_csb_obuf : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => DAC_csb_O,
      O => DAC_csb
    );
  CLK_ibuf_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => CLK_ibuf_BUFG_I0_INV,
      I1 => GND,
      S => CLK_ibuf_BUFG_S_INVNOT,
      O => CLK_int
    );
  CLK_ibuf_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => CLK_ibuf_BUFG_S_INVNOT
    );
  CLK_ibuf_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_ibuf_BUFG_I0_INV
    );
  U3_Mult_out_multu16_0_ix2247z10733 : X_MULT18X18
    generic map(
      LOC => "MULT18X18_X0Y0"
    )
    port map (
      A(17) => '0',
      A(16) => '0',
      A(15) => '0',
      A(14) => '0',
      A(13) => '0',
      A(12) => '0',
      A(11) => '0',
      A(10) => '0',
      A(9) => '0',
      A(8) => '0',
      A(7) => nx36612z1_0,
      A(6) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A(6),
      A(5) => nx36612z42_0,
      A(4) => nx36612z47_0,
      A(3) => nx36612z52_0,
      A(2) => nx36612z57_0,
      A(1) => nx36612z62_0,
      A(0) => nx36612z67_0,
      B(17) => '0',
      B(16) => '0',
      B(15) => '0',
      B(14) => '0',
      B(13) => '0',
      B(12) => '0',
      B(11) => '0',
      B(10) => '0',
      B(9) => '0',
      B(8) => '0',
      B(7) => nx36612z72_0,
      B(6) => nx36612z73_0,
      B(5) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_5_Q,
      B(4) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_4_Q,
      B(3) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_3_Q,
      B(2) => nx36612z83_0,
      B(1) => nx36612z86_0,
      B(0) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_0_Q,
      P(35) => U3_Mult_out_multu16_0_ix2247z10733_PROD35,
      P(34) => U3_Mult_out_multu16_0_ix2247z10733_PROD34,
      P(33) => U3_Mult_out_multu16_0_ix2247z10733_PROD33,
      P(32) => U3_Mult_out_multu16_0_ix2247z10733_PROD32,
      P(31) => U3_Mult_out_multu16_0_ix2247z10733_PROD31,
      P(30) => U3_Mult_out_multu16_0_ix2247z10733_PROD30,
      P(29) => U3_Mult_out_multu16_0_ix2247z10733_PROD29,
      P(28) => U3_Mult_out_multu16_0_ix2247z10733_PROD28,
      P(27) => U3_Mult_out_multu16_0_ix2247z10733_PROD27,
      P(26) => U3_Mult_out_multu16_0_ix2247z10733_PROD26,
      P(25) => U3_Mult_out_multu16_0_ix2247z10733_PROD25,
      P(24) => U3_Mult_out_multu16_0_ix2247z10733_PROD24,
      P(23) => U3_Mult_out_multu16_0_ix2247z10733_PROD23,
      P(22) => U3_Mult_out_multu16_0_ix2247z10733_PROD22,
      P(21) => U3_Mult_out_multu16_0_ix2247z10733_PROD21,
      P(20) => U3_Mult_out_multu16_0_ix2247z10733_PROD20,
      P(19) => U3_Mult_out_multu16_0_ix2247z10733_PROD19,
      P(18) => U3_Mult_out_multu16_0_ix2247z10733_PROD18,
      P(17) => U3_Mult_out_multu16_0_ix2247z10733_PROD17,
      P(16) => U3_Mult_out_multu16_0_ix2247z10733_PROD16,
      P(15) => Mult_out(15),
      P(14) => Mult_out(14),
      P(13) => Mult_out(13),
      P(12) => Mult_out(12),
      P(11) => Mult_out(11),
      P(10) => Mult_out(10),
      P(9) => Mult_out(9),
      P(8) => Mult_out(8),
      P(7) => Mult_out(7),
      P(6) => Mult_out(6),
      P(5) => Mult_out(5),
      P(4) => Mult_out(4),
      P(3) => Mult_out(3),
      P(2) => Mult_out(2),
      P(1) => Mult_out(1),
      P(0) => Mult_out(0)
    );
  U4_Accu_out_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(2),
      O => U4_Accu_out_2_DXMUX_3587
    );
  U4_Accu_out_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(1),
      O => U4_Accu_out_2_DYMUX_3574
    );
  U4_Accu_out_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U4_Accu_out_2_SRINV_3565
    );
  U4_Accu_out_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_2_CLKINV_3564
    );
  U4_ix7465z1530 : X_LUT4
    generic map(
      INIT => X"D8D8",
      LOC => "SLICE_X11Y1"
    )
    port map (
      ADR0 => Accu_ctrl,
      ADR1 => Mult_out(1),
      ADR2 => U4_ACCU_1n1s1(1),
      ADR3 => VCC,
      O => U4_ACCU_1n1ss1(1)
    );
  U4_Accu_out_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(4),
      O => U4_Accu_out_4_DXMUX_3625
    );
  U4_Accu_out_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(3),
      O => U4_Accu_out_4_DYMUX_3612
    );
  U4_Accu_out_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U4_Accu_out_4_SRINV_3603
    );
  U4_Accu_out_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_4_CLKINV_3602
    );
  U4_ix5471z1530 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X11Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_ACCU_1n1s1(3),
      ADR2 => Mult_out(3),
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(3)
    );
  U4_Accu_out_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(6),
      O => U4_Accu_out_6_DXMUX_3663
    );
  U4_Accu_out_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(5),
      O => U4_Accu_out_6_DYMUX_3650
    );
  U4_Accu_out_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U4_Accu_out_6_SRINV_3641
    );
  U4_Accu_out_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_6_CLKINV_3640
    );
  U4_ix3477z1530 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X9Y2"
    )
    port map (
      ADR0 => Mult_out(5),
      ADR1 => VCC,
      ADR2 => Accu_ctrl,
      ADR3 => U4_ACCU_1n1s1(5),
      O => U4_ACCU_1n1ss1(5)
    );
  U4_Accu_out_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(8),
      O => U4_Accu_out_8_DXMUX_3701
    );
  U4_Accu_out_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(7),
      O => U4_Accu_out_8_DYMUX_3688
    );
  U4_Accu_out_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U4_Accu_out_8_SRINV_3679
    );
  U4_Accu_out_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_8_CLKINV_3678
    );
  U4_ix1483z1530 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X11Y2"
    )
    port map (
      ADR0 => Accu_ctrl,
      ADR1 => U4_ACCU_1n1s1(7),
      ADR2 => VCC,
      ADR3 => Mult_out(7),
      O => U4_ACCU_1n1ss1(7)
    );
  U4_Accu_out_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(10),
      O => U4_Accu_out_10_DXMUX_3739
    );
  U4_Accu_out_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(9),
      O => U4_Accu_out_10_DYMUX_3726
    );
  U4_Accu_out_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U4_Accu_out_10_SRINV_3717
    );
  U4_Accu_out_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y5",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_10_CLKINV_3716
    );
  U4_ix65025z1530 : X_LUT4
    generic map(
      INIT => X"CACA",
      LOC => "SLICE_X11Y5"
    )
    port map (
      ADR0 => U4_ACCU_1n1s1(9),
      ADR1 => Mult_out(9),
      ADR2 => Accu_ctrl,
      ADR3 => VCC,
      O => U4_ACCU_1n1ss1(9)
    );
  Rom_Address_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx58526z1,
      O => Rom_Address_1_DXMUX_3779
    );
  Rom_Address_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx59523z1,
      O => Rom_Address_1_DYMUX_3765
    );
  Rom_Address_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Rom_Address_1_SRINV_3756
    );
  Rom_Address_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Rom_Address_1_CLKINV_3755
    );
  ix59523z1315 : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X8Y6"
    )
    port map (
      ADR0 => Delay_Line_sample_shift,
      ADR1 => VCC,
      ADR2 => U6_c_state_0_Q,
      ADR3 => Rom_Address(0),
      O => nx59523z1
    );
  U4_Accu_out_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(11),
      O => U4_Accu_out_11_DYMUX_3802
    );
  U4_Accu_out_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U4_Accu_out_11_SRINV_3793
    );
  U4_Accu_out_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y4",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_11_CLKINV_3792
    );
  Accu_out_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(13),
      O => Accu_out_13_DXMUX_3840
    );
  Accu_out_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(12),
      O => Accu_out_13_DYMUX_3827
    );
  Accu_out_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Accu_out_13_SRINV_3818
    );
  Accu_out_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_13_CLKINV_3817
    );
  U4_ix28023z1530 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X11Y7"
    )
    port map (
      ADR0 => Accu_ctrl,
      ADR1 => VCC,
      ADR2 => Mult_out(12),
      ADR3 => U4_ACCU_1n1s1(12),
      O => U4_ACCU_1n1ss1(12)
    );
  Accu_out_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(15),
      O => Accu_out_15_DXMUX_3878
    );
  Accu_out_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X11Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(14),
      O => Accu_out_15_DYMUX_3865
    );
  Accu_out_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Accu_out_15_SRINV_3856
    );
  Accu_out_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X11Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_15_CLKINV_3855
    );
  U4_ix26029z1530 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X11Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mult_out(14),
      ADR2 => U4_ACCU_1n1s1(14),
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(14)
    );
  Filter_Out_dup_0_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(13),
      O => Filter_Out_dup_0_1_DXMUX_3901
    );
  Filter_Out_dup_0_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X9Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(12),
      O => Filter_Out_dup_0_1_DYMUX_3894
    );
  Filter_Out_dup_0_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Filter_Out_dup_0_1_SRINV_3892
    );
  Filter_Out_dup_0_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_1_CLKINV_3891
    );
  Filter_Out_dup_0_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X9Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_ctrl,
      O => Filter_Out_dup_0_1_CEINV_3890
    );
  nx17366z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx53305z1,
      O => nx17366z1_DYMUX_3916
    );
  nx17366z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx17366z1_SRINV_3914
    );
  nx17366z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx17366z1_CLKINV_3913
    );
  nx17366z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X6Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx17366z1_CEINV_3912
    );
  U6_c_state_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx57609z1,
      O => U6_c_state_2_DXMUX_3960
    );
  U6_c_state_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => U6_c_state_2_Q,
      O => U6_c_state_2_DYMUX_3946
    );
  U6_c_state_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx57609z2_pack_2,
      O => nx57609z2
    );
  U6_c_state_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => U6_c_state_2_SRINV_3937
    );
  U6_c_state_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U6_c_state_2_CLKINV_3936
    );
  ix57609z17699 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X16Y1"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(1),
      ADR3 => U6_c_state_1_Q,
      O => nx57609z2_pack_2
    );
  nx36612z14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z13,
      O => nx36612z14_DXMUX_3985
    );
  nx36612z14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z6,
      O => nx36612z14_DYMUX_3978
    );
  nx36612z14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx36612z14_SRINV_3976
    );
  nx36612z14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z14_CLKINV_3975
    );
  nx36612z14_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z14_CEINV_3974
    );
  Filter_Out_dup_0_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(15),
      O => Filter_Out_dup_0_3_DXMUX_4009
    );
  Filter_Out_dup_0_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(14),
      O => Filter_Out_dup_0_3_DYMUX_4002
    );
  Filter_Out_dup_0_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Filter_Out_dup_0_3_SRINV_4000
    );
  Filter_Out_dup_0_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_3_CLKINV_3999
    );
  Filter_Out_dup_0_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_ctrl,
      O => Filter_Out_dup_0_3_CEINV_3998
    );
  nx13444z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx18579z1,
      O => nx13444z1_DYMUX_4024
    );
  nx13444z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx13444z1_SRINV_4022
    );
  nx13444z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx13444z1_CLKINV_4021
    );
  nx13444z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx13444z1_CEINV_4020
    );
  nx42426z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z14,
      O => nx42426z1_DYMUX_4039
    );
  nx42426z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx42426z1_SRINV_4037
    );
  nx42426z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx42426z1_CLKINV_4036
    );
  nx42426z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx42426z1_CEINV_4035
    );
  nx44909z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx39774z1,
      O => nx44909z1_DYMUX_4054
    );
  nx44909z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx44909z1_SRINV_4052
    );
  nx44909z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx44909z1_CLKINV_4051
    );
  nx44909z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx44909z1_CEINV_4050
    );
  nx47392z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx42257z1,
      O => nx47392z1_DYMUX_4069
    );
  nx47392z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx47392z1_SRINV_4067
    );
  nx47392z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx47392z1_CLKINV_4066
    );
  nx47392z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y6",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx47392z1_CEINV_4065
    );
  Filter_Out_dup_0_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(17),
      O => Filter_Out_dup_0_5_DXMUX_4093
    );
  Filter_Out_dup_0_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(16),
      O => Filter_Out_dup_0_5_DYMUX_4086
    );
  Filter_Out_dup_0_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Filter_Out_dup_0_5_SRINV_4084
    );
  Filter_Out_dup_0_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_5_CLKINV_4083
    );
  Filter_Out_dup_0_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_ctrl,
      O => Filter_Out_dup_0_5_CEINV_4082
    );
  Delay_Line_sample_shift_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx59603z1,
      O => Delay_Line_sample_shift_DXMUX_4127
    );
  Delay_Line_sample_shift_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx59603z2_pack_1,
      O => nx59603z2
    );
  Delay_Line_sample_shift_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Delay_Line_sample_shift_CLKINV_4110
    );
  ix59603z34083 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "SLICE_X17Y0"
    )
    port map (
      ADR0 => U6_c_state_1_Q,
      ADR1 => Rom_Address(3),
      ADR2 => Rom_Address(1),
      ADR3 => Rom_Address(4),
      O => nx59603z2_pack_1
    );
  Filter_Out_dup_0_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(19),
      O => Filter_Out_dup_0_7_DXMUX_4152
    );
  Filter_Out_dup_0_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(18),
      O => Filter_Out_dup_0_7_DYMUX_4145
    );
  Filter_Out_dup_0_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Filter_Out_dup_0_7_SRINV_4143
    );
  Filter_Out_dup_0_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_7_CLKINV_4142
    );
  Filter_Out_dup_0_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_ctrl,
      O => Filter_Out_dup_0_7_CEINV_4141
    );
  nx36612z8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z8,
      O => nx36612z8_0
    );
  nx36612z8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z10_pack_1,
      O => nx36612z10
    );
  ix36612z22841 : X_LUT4
    generic map(
      INIT => X"0E04",
      LOC => "SLICE_X7Y2"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => nx57662z1,
      ADR2 => Rom_Address(1),
      ADR3 => nx62797z1,
      O => nx36612z10_pack_1
    );
  nx22501z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx17366z1,
      O => nx22501z1_DYMUX_4191
    );
  nx22501z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => nx22501z1_SRINV_4189
    );
  nx22501z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx22501z1_CLKINV_4188
    );
  nx22501z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X4Y7",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx22501z1_CEINV_4187
    );
  nx36612z21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z21,
      O => nx36612z21_0
    );
  nx36612z21_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z23_pack_1,
      O => nx36612z23
    );
  ix36612z22851 : X_LUT4
    generic map(
      INIT => X"5044",
      LOC => "SLICE_X11Y3"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => nx18579z1,
      ADR2 => nx13444z1,
      ADR3 => Rom_Address(0),
      O => nx36612z23_pack_1
    );
  ix36612z1540 : X_LUT4
    generic map(
      INIT => X"00C8",
      LOC => "SLICE_X8Y3"
    )
    port map (
      ADR0 => nx36612z4_0,
      ADR1 => Rom_Address(3),
      ADR2 => nx36612z7,
      ADR3 => Rom_Address(2),
      O => nx36612z3
    );
  ix36612z1556 : X_LUT4
    generic map(
      INIT => X"2220",
      LOC => "SLICE_X6Y4"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(2),
      ADR2 => nx36612z25_0,
      ADR3 => nx36612z26,
      O => nx36612z24
    );
  ix36612z1444 : X_LUT4
    generic map(
      INIT => X"3F30",
      LOC => "SLICE_X3Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nx36612z88,
      ADR2 => Rom_Address(1),
      ADR3 => nx36612z87_0,
      O => nx36612z86
    );
  ix66_reg_x_2_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => '0'
    )
    port map (
      I => nx8309z1_DYMUX_1366,
      CE => nx8309z1_CEINV_1362,
      CLK => nx8309z1_CLKINV_1363,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx8309z1_SRINV_1364,
      O => nx8309z1
    );
  ix36612z44357 : X_LUT4
    generic map(
      INIT => X"E400",
      LOC => "SLICE_X12Y2"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => nx36612z5,
      ADR2 => nx36612z6,
      ADR3 => Rom_Address(1),
      O => nx36612z4
    );
  ix36612z2627 : X_LUT4
    generic map(
      INIT => X"0145",
      LOC => "SLICE_X7Y3"
    )
    port map (
      ADR0 => nx36612z38,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z20_0,
      ADR3 => nx36612z2_0,
      O => nx36612z37
    );
  ix36612z2635 : X_LUT4
    generic map(
      INIT => X"0415",
      LOC => "SLICE_X5Y2"
    )
    port map (
      ADR0 => nx36612z48,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z2_0,
      ADR3 => nx36612z20_0,
      O => nx36612z47
    );
  ix66_reg_x_31_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X2Y1",
      INIT => '0'
    )
    port map (
      I => nx36612z16_DYMUX_1453,
      CE => nx36612z16_CEINV_1449,
      CLK => nx36612z16_CLKINV_1450,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z16_SRINV_1451,
      O => nx36612z16
    );
  ix66_reg_x_23_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y3",
      INIT => '0'
    )
    port map (
      I => nx50044z1_DYMUX_1468,
      CE => nx50044z1_CEINV_1464,
      CLK => nx50044z1_CLKINV_1465,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx50044z1_SRINV_1466,
      O => nx50044z1
    );
  ix66_reg_x_15_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => '0'
    )
    port map (
      I => nx52527z1_DYMUX_1483,
      CE => nx52527z1_CEINV_1479,
      CLK => nx52527z1_CLKINV_1480,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx52527z1_SRINV_1481,
      O => nx52527z1
    );
  ix36612z4919 : X_LUT4
    generic map(
      INIT => X"4440",
      LOC => "SLICE_X9Y4"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(2),
      ADR2 => nx36612z29,
      ADR3 => nx36612z28_0,
      O => nx36612z27
    );
  ix36612z15355 : X_LUT4
    generic map(
      INIT => X"2D78",
      LOC => "SLICE_X0Y2"
    )
    port map (
      ADR0 => nx36612z76,
      ADR1 => Rom_Address(1),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(2),
      O => nx36612z75
    );
  ix36612z2597 : X_LUT4
    generic map(
      INIT => X"0027",
      LOC => "SLICE_X4Y2"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z2_0,
      ADR2 => nx36612z20_0,
      ADR3 => nx36612z33,
      O => nx36612z1
    );
  ix36612z2631 : X_LUT4
    generic map(
      INIT => X"001D",
      LOC => "SLICE_X5Y3"
    )
    port map (
      ADR0 => nx36612z20_0,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z2_0,
      ADR3 => nx36612z43,
      O => nx36612z42
    );
  ix36612z2639 : X_LUT4
    generic map(
      INIT => X"0511",
      LOC => "SLICE_X5Y1"
    )
    port map (
      ADR0 => nx36612z53,
      ADR1 => nx36612z20_0,
      ADR2 => nx36612z2_0,
      ADR3 => Rom_Address(4),
      O => nx36612z52
    );
  ix36612z2647 : X_LUT4
    generic map(
      INIT => X"0027",
      LOC => "SLICE_X7Y1"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z2_0,
      ADR2 => nx36612z20_0,
      ADR3 => nx36612z63,
      O => nx36612z62
    );
  ix36612z7163 : X_LUT4
    generic map(
      INIT => X"255A",
      LOC => "SLICE_X2Y5"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(2),
      O => nx36612z81
    );
  ix36612z2643 : X_LUT4
    generic map(
      INIT => X"001D",
      LOC => "SLICE_X6Y0"
    )
    port map (
      ADR0 => nx36612z20_0,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z2_0,
      ADR3 => nx36612z58,
      O => nx36612z57
    );
  ix36612z2651 : X_LUT4
    generic map(
      INIT => X"010B",
      LOC => "SLICE_X5Y0"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z20_0,
      ADR2 => nx36612z68,
      ADR3 => nx36612z2_0,
      O => nx36612z67
    );
  U6_reg_c_state_0_Q : X_FF
    generic map(
      LOC => "SLICE_X16Y0",
      INIT => '1'
    )
    port map (
      I => U6_c_state_1_DYMUX_1729,
      CE => VCC,
      CLK => U6_c_state_1_CLKINV_1717,
      SET => U6_c_state_1_SRINV_1718,
      RST => GND,
      O => U6_c_state_0_Q
    );
  ix56612z33877 : X_LUT4
    generic map(
      INIT => X"7F33",
      LOC => "SLICE_X16Y0"
    )
    port map (
      ADR0 => nx56612z2_0,
      ADR1 => nx56612z3,
      ADR2 => Rom_Address(1),
      ADR3 => U6_c_state_1_Q,
      O => nx56612z1
    );
  U6_reg_c_state_1_Q : X_FF
    generic map(
      LOC => "SLICE_X16Y0",
      INIT => '0'
    )
    port map (
      I => U6_c_state_1_DXMUX_1742,
      CE => VCC,
      CLK => U6_c_state_1_CLKINV_1717,
      SET => GND,
      RST => U6_c_state_1_SRINV_1718,
      O => U6_c_state_1_Q
    );
  ix66_reg_x_9_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => '0'
    )
    port map (
      I => nx43819z1_DYMUX_1758,
      CE => nx43819z1_CEINV_1754,
      CLK => nx43819z1_CLKINV_1755,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx43819z1_SRINV_1756,
      O => nx43819z1
    );
  ix36612z44360 : X_LUT4
    generic map(
      INIT => X"B800",
      LOC => "SLICE_X7Y5"
    )
    port map (
      ADR0 => nx36032z1,
      ADR1 => Rom_Address(0),
      ADR2 => nx2396z1,
      ADR3 => Rom_Address(1),
      O => nx36612z9
    );
  ix56532z14374 : X_LUT4
    generic map(
      INIT => X"5502",
      LOC => "SLICE_X14Y3"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => U6_c_state_0_Q,
      ADR2 => Delay_Line_sample_shift,
      ADR3 => nx55535z2,
      O => nx56532z1
    );
  reg_Rom_Address_3_Q : X_FF
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => '0'
    )
    port map (
      I => Rom_Address_3_DXMUX_1816,
      CE => VCC,
      CLK => Rom_Address_3_CLKINV_1800,
      SET => GND,
      RST => Rom_Address_3_FFX_RSTAND_1821,
      O => Rom_Address(3)
    );
  Rom_Address_3_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X14Y3",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Rom_Address_3_FFX_RSTAND_1821
    );
  ix66_reg_x_3_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y1",
      INIT => '0'
    )
    port map (
      I => nx3174z1_DYMUX_1832,
      CE => nx3174z1_CEINV_1828,
      CLK => nx3174z1_CLKINV_1829,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx3174z1_SRINV_1830,
      O => nx3174z1
    );
  ix66_reg_x_24_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X8Y2",
      INIT => '0'
    )
    port map (
      I => nx55179z1_DYMUX_1847,
      CE => nx55179z1_CEINV_1843,
      CLK => nx55179z1_CLKINV_1844,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx55179z1_SRINV_1845,
      O => nx55179z1
    );
  ix66_reg_x_16_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X5Y7",
      INIT => '0'
    )
    port map (
      I => nx57662z1_DYMUX_1862,
      CE => nx57662z1_CEINV_1858,
      CLK => nx57662z1_CLKINV_1859,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx57662z1_SRINV_1860,
      O => nx57662z1
    );
  U6_reg_c_state_5_Q : X_FF
    generic map(
      LOC => "SLICE_X18Y0",
      INIT => '0'
    )
    port map (
      I => Accu_ctrl_DYMUX_1875,
      CE => VCC,
      CLK => Accu_ctrl_CLKINV_1872,
      SET => GND,
      RST => Accu_ctrl_FFY_RSTAND_1880,
      O => Accu_ctrl
    );
  Accu_ctrl_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Accu_ctrl_FFY_RSTAND_1880
    );
  U6_reg_c_state_6_Q : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => U6_c_state_7_DYMUX_1891,
      CE => VCC,
      CLK => U6_c_state_7_CLKINV_1888,
      SET => GND,
      RST => U6_c_state_7_SRINV_1889,
      O => U6_c_state_6_Q
    );
  U6_reg_c_state_7_Q : X_FF
    generic map(
      LOC => "SLICE_X20Y0",
      INIT => '0'
    )
    port map (
      I => U6_c_state_7_DXMUX_1899,
      CE => VCC,
      CLK => U6_c_state_7_CLKINV_1888,
      SET => GND,
      RST => U6_c_state_7_SRINV_1889,
      O => U6_c_state_7_Q
    );
  ix36612z1435 : X_LUT4
    generic map(
      INIT => X"2E2E",
      LOC => "SLICE_X1Y0"
    )
    port map (
      ADR0 => nx36612z78_0,
      ADR1 => Rom_Address(1),
      ADR2 => nx36612z79,
      ADR3 => VCC,
      O => nx36612z77
    );
  ix66_reg_x_10_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X7Y4",
      INIT => '0'
    )
    port map (
      I => nx38684z1_DYMUX_1939,
      CE => nx38684z1_CEINV_1935,
      CLK => nx38684z1_CLKINV_1936,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx38684z1_SRINV_1937,
      O => nx38684z1
    );
  ix36612z58641 : X_LUT4
    generic map(
      INIT => X"FC6D",
      LOC => "SLICE_X3Y3"
    )
    port map (
      ADR0 => Rom_Address(2),
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(3),
      O => nx36612z84
    );
  ix36612z22843 : X_LUT4
    generic map(
      INIT => X"0C0A",
      LOC => "SLICE_X13Y0"
    )
    port map (
      ADR0 => nx36612z13,
      ADR1 => nx36612z14,
      ADR2 => Rom_Address(1),
      ADR3 => Rom_Address(0),
      O => nx36612z12
    );
  ix36612z58666 : X_LUT4
    generic map(
      INIT => X"A800",
      LOC => "SLICE_X6Y1"
    )
    port map (
      ADR0 => Rom_Address(2),
      ADR1 => nx36612z15,
      ADR2 => nx36612z12_0,
      ADR3 => Rom_Address(3),
      O => nx36612z11
    );
  ix36612z44366 : X_LUT4
    generic map(
      INIT => X"C808",
      LOC => "SLICE_X6Y5"
    )
    port map (
      ADR0 => nx44909z1,
      ADR1 => Rom_Address(1),
      ADR2 => Rom_Address(0),
      ADR3 => nx50044z1,
      O => nx36612z18
    );
  ix36612z1546 : X_LUT4
    generic map(
      INIT => X"D1D1",
      LOC => "SLICE_X3Y0"
    )
    port map (
      ADR0 => nx36612z85,
      ADR1 => Rom_Address(1),
      ADR2 => nx36612z84_0,
      ADR3 => VCC,
      O => nx36612z83
    );
  ix36612z1329 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X6Y3"
    )
    port map (
      ADR0 => nx36612z27_0,
      ADR1 => nx36612z24_0,
      ADR2 => nx36612z30,
      ADR3 => nx36612z21_0,
      O => nx36612z20
    );
  ix36612z1463 : X_LUT4
    generic map(
      INIT => X"303F",
      LOC => "SLICE_X2Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nx36612z81_0,
      ADR2 => Rom_Address(1),
      ADR3 => nx36612z82,
      O => nx36612z80
    );
  ix66_reg_x_4_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      I => nx63575z1_DYMUX_2122,
      CE => nx63575z1_CEINV_2118,
      CLK => nx63575z1_CLKINV_2119,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx63575z1_SRINV_2120,
      O => nx63575z1
    );
  ix36612z1989 : X_LUT4
    generic map(
      INIT => X"2070",
      LOC => "SLICE_X7Y6"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => nx52527z1,
      ADR2 => Rom_Address(1),
      ADR3 => nx47392z1,
      O => nx36612z31
    );
  ix66_reg_x_25_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => '0'
    )
    port map (
      I => nx60314z1_DYMUX_2161,
      CE => nx60314z1_CEINV_2157,
      CLK => nx60314z1_CLKINV_2158,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx60314z1_SRINV_2159,
      O => nx60314z1
    );
  ix66_reg_x_17_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => '0'
    )
    port map (
      I => nx62797z1_DYMUX_2176,
      CE => nx62797z1_CEINV_2172,
      CLK => nx62797z1_CLKINV_2173,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx62797z1_SRINV_2174,
      O => nx62797z1
    );
  ix57529z11690 : X_LUT4
    generic map(
      INIT => X"48C0",
      LOC => "SLICE_X17Y1"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => nx55535z3,
      ADR2 => Rom_Address(2),
      ADR3 => Rom_Address(1),
      O => nx57529z1
    );
  reg_Rom_Address_2_Q : X_FF
    generic map(
      LOC => "SLICE_X17Y1",
      INIT => '0'
    )
    port map (
      I => Rom_Address_2_DXMUX_2210,
      CE => VCC,
      CLK => Rom_Address_2_CLKINV_2194,
      SET => GND,
      RST => Rom_Address_2_FFX_RSTAND_2215,
      O => Rom_Address(2)
    );
  Rom_Address_2_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X17Y1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Rom_Address_2_FFX_RSTAND_2215
    );
  ix66_reg_x_11_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X4Y4",
      INIT => '0'
    )
    port map (
      I => nx31987z1_DYMUX_2226,
      CE => nx31987z1_CEINV_2222,
      CLK => nx31987z1_CLKINV_2223,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx31987z1_SRINV_2224,
      O => nx31987z1
    );
  ix36612z1316 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X7Y0"
    )
    port map (
      ADR0 => nx36612z8_0,
      ADR1 => nx36612z3_0,
      ADR2 => nx36612z17,
      ADR3 => nx36612z11_0,
      O => nx36612z2
    );
  ix66_reg_x_5_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X9Y5",
      INIT => '0'
    )
    port map (
      I => nx58440z1_DYMUX_2265,
      CE => nx58440z1_CEINV_2261,
      CLK => nx58440z1_CLKINV_2262,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx58440z1_SRINV_2263,
      O => nx58440z1
    );
  ix36612z1447 : X_LUT4
    generic map(
      INIT => X"0AFA",
      LOC => "SLICE_X0Y0"
    )
    port map (
      ADR0 => nx36612z90_0,
      ADR1 => VCC,
      ADR2 => Rom_Address(1),
      ADR3 => nx36612z91,
      O => nx36612z89
    );
  ix66_reg_x_26_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      I => nx36612z6_DYMUX_2306,
      CE => nx36612z6_CEINV_2302,
      CLK => nx36612z6_CLKINV_2303,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z6_SRINV_2304,
      O => nx36612z5
    );
  ix66_reg_x_27_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => '0'
    )
    port map (
      I => nx36612z6_DXMUX_2313,
      CE => nx36612z6_CEINV_2302,
      CLK => nx36612z6_CLKINV_2303,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z6_SRINV_2304,
      O => nx36612z6
    );
  ix66_reg_x_18_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      I => nx2396z1_DYMUX_2328,
      CE => nx2396z1_CEINV_2324,
      CLK => nx2396z1_CLKINV_2325,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx2396z1_SRINV_2326,
      O => nx2396z1
    );
  ix55535z28642 : X_LUT4
    generic map(
      INIT => X"6CA0",
      LOC => "SLICE_X15Y2"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx55535z2,
      ADR2 => nx55535z3,
      ADR3 => Rom_Address(3),
      O => nx55535z1
    );
  reg_Rom_Address_4_Q : X_FF
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => '0'
    )
    port map (
      I => Rom_Address_4_DXMUX_2362,
      CE => VCC,
      CLK => Rom_Address_4_CLKINV_2344,
      SET => GND,
      RST => Rom_Address_4_FFX_RSTAND_2367,
      O => Rom_Address(4)
    );
  Rom_Address_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X15Y2",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Rom_Address_4_FFX_RSTAND_2367
    );
  ix66_reg_x_20_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => '0'
    )
    port map (
      I => nx34639z1_DYMUX_2378,
      CE => nx34639z1_CEINV_2374,
      CLK => nx34639z1_CLKINV_2375,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx34639z1_SRINV_2376,
      O => nx34639z1
    );
  ix66_reg_x_12_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X7Y7",
      INIT => '0'
    )
    port map (
      I => nx37122z1_DYMUX_2393,
      CE => nx37122z1_CEINV_2389,
      CLK => nx37122z1_CLKINV_2390,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx37122z1_SRINV_2391,
      O => nx37122z1
    );
  U4_ix30772z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X10Y2"
    )
    port map (
      ADR0 => U4_Accu_out(4),
      ADR1 => VCC,
      ADR2 => Mult_out(4),
      ADR3 => VCC,
      O => U4_nx30772z1
    );
  U4_ix30774z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X10Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(6),
      ADR2 => VCC,
      ADR3 => Mult_out(6),
      O => U4_nx30774z1
    );
  U4_ix30776z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X10Y4"
    )
    port map (
      ADR0 => U4_Accu_out(8),
      ADR1 => VCC,
      ADR2 => Mult_out(8),
      ADR3 => VCC,
      O => U4_nx30776z1
    );
  U4_ix5893z1320 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X10Y5"
    )
    port map (
      ADR0 => U4_Accu_out(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Mult_out(10),
      O => U4_nx5893z1
    );
  ix36612z1379 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X2Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(4),
      ADR2 => VCC,
      ADR3 => nx36612z74,
      O => nx36612z73
    );
  ix66_reg_x_6_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => '0'
    )
    port map (
      I => nx53305z1_DYMUX_2432,
      CE => nx53305z1_CEINV_2428,
      CLK => nx53305z1_CLKINV_2429,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx53305z1_SRINV_2430,
      O => nx53305z1
    );
  ix66_reg_x_19_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => '0'
    )
    port map (
      I => nx36032z1_DYMUX_2447,
      CE => nx36032z1_CEINV_2443,
      CLK => nx36032z1_CLKINV_2444,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36032z1_SRINV_2445,
      O => nx36032z1
    );
  ix66_reg_x_0_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X3Y2",
      INIT => '0'
    )
    port map (
      I => nx18579z1_DYMUX_2462,
      CE => nx18579z1_CEINV_2458,
      CLK => nx18579z1_CLKINV_2459,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx18579z1_SRINV_2460,
      O => nx18579z1
    );
  U4_ix8462z1530 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X9Y0"
    )
    port map (
      ADR0 => Mult_out(0),
      ADR1 => U4_ACCU_1n1s1(0),
      ADR2 => VCC,
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(0)
    );
  U4_reg_ACCU_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X9Y0",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_dup_0_0_DXMUX_2496,
      CE => VCC,
      CLK => U4_Accu_out_dup_0_0_CLKINV_2477,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_dup_0_0_SRINV_2478,
      O => U4_Accu_out_dup_0(0)
    );
  ix66_reg_x_21_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      I => nx39774z1_DYMUX_2510,
      CE => nx39774z1_CEINV_2506,
      CLK => nx39774z1_CLKINV_2507,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx39774z1_SRINV_2508,
      O => nx39774z1
    );
  ix66_reg_x_13_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => '0'
    )
    port map (
      I => nx42257z1_DYMUX_2525,
      CE => nx42257z1_CEINV_2521,
      CLK => nx42257z1_CLKINV_2522,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx42257z1_SRINV_2523,
      O => nx42257z1
    );
  U4_ix30768z1320 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X10Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out_dup_0(0),
      ADR2 => Mult_out(0),
      ADR3 => VCC,
      O => U4_nx30768z1
    );
  U4_ix30770z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X10Y1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(2),
      ADR2 => VCC,
      ADR3 => Mult_out(2),
      O => U4_nx30770z1
    );
  U4_ix5895z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X10Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Accu_out(12),
      ADR2 => VCC,
      ADR3 => Mult_out(12),
      O => U4_nx5895z1
    );
  U4_ix5897z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X10Y7"
    )
    port map (
      ADR0 => Accu_out(14),
      ADR1 => VCC,
      ADR2 => Mult_out(14),
      ADR3 => VCC,
      O => U4_nx5897z1
    );
  U4_reg_ACCU_17_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => '0'
    )
    port map (
      I => Accu_out_16_DYMUX_2870,
      CE => VCC,
      CLK => Accu_out_16_CLKINV_2848,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_16_SRINV_2849,
      O => Accu_out(17)
    );
  U4_reg_ACCU_16_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y8",
      INIT => '0'
    )
    port map (
      I => Accu_out_16_DXMUX_2887,
      CE => VCC,
      CLK => Accu_out_16_CLKINV_2848,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_16_SRINV_2849,
      O => Accu_out(16)
    );
  U4_reg_ACCU_18_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => '0'
    )
    port map (
      I => Accu_out_18_DXMUX_2932,
      CE => VCC,
      CLK => Accu_out_18_CLKINV_2899,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_18_SRINV_2900,
      O => Accu_out(18)
    );
  ix36612z15061 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y0"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z60_DIG_MUX_2958,
      CE => nx36612z60_SRINV_2950,
      CLK => nx36612z60_CLKINV_2956,
      Q => nx36612z59,
      Q15 => nx36612z60_GMC15
    );
  ix36612z15062 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y0"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z60_DIF_MUX_2971,
      CE => nx36612z60_SRINV_2950,
      CLK => nx36612z60_CLKINV_2956,
      Q => nx36612z60,
      Q15 => NLW_ix36612z15062_Q15_UNCONNECTED
    );
  U4_reg_ACCU_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y1",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_2_DYMUX_3574,
      CE => VCC,
      CLK => U4_Accu_out_2_CLKINV_3564,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_2_SRINV_3565,
      O => U4_Accu_out(1)
    );
  U4_ix6468z1530 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X11Y1"
    )
    port map (
      ADR0 => Mult_out(2),
      ADR1 => VCC,
      ADR2 => U4_ACCU_1n1s1(2),
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(2)
    );
  U4_reg_ACCU_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y1",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_2_DXMUX_3587,
      CE => VCC,
      CLK => U4_Accu_out_2_CLKINV_3564,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_2_SRINV_3565,
      O => U4_Accu_out(2)
    );
  U4_reg_ACCU_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y0",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_4_DYMUX_3612,
      CE => VCC,
      CLK => U4_Accu_out_4_CLKINV_3602,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_4_SRINV_3603,
      O => U4_Accu_out(3)
    );
  U4_ix4474z1530 : X_LUT4
    generic map(
      INIT => X"FA50",
      LOC => "SLICE_X11Y0"
    )
    port map (
      ADR0 => Accu_ctrl,
      ADR1 => VCC,
      ADR2 => U4_ACCU_1n1s1(4),
      ADR3 => Mult_out(4),
      O => U4_ACCU_1n1ss1(4)
    );
  U4_reg_ACCU_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y0",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_4_DXMUX_3625,
      CE => VCC,
      CLK => U4_Accu_out_4_CLKINV_3602,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_4_SRINV_3603,
      O => U4_Accu_out(4)
    );
  U4_reg_ACCU_5_Q : X_SFF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_6_DYMUX_3650,
      CE => VCC,
      CLK => U4_Accu_out_6_CLKINV_3640,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_6_SRINV_3641,
      O => U4_Accu_out(5)
    );
  U4_ix2480z1530 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X9Y2"
    )
    port map (
      ADR0 => U4_ACCU_1n1s1(6),
      ADR1 => VCC,
      ADR2 => Mult_out(6),
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(6)
    );
  U4_reg_ACCU_6_Q : X_SFF
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_6_DXMUX_3663,
      CE => VCC,
      CLK => U4_Accu_out_6_CLKINV_3640,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_6_SRINV_3641,
      O => U4_Accu_out(6)
    );
  U4_reg_ACCU_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_8_DYMUX_3688,
      CE => VCC,
      CLK => U4_Accu_out_8_CLKINV_3678,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_8_SRINV_3679,
      O => U4_Accu_out(7)
    );
  U4_ix486z1530 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X11Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mult_out(8),
      ADR2 => Accu_ctrl,
      ADR3 => U4_ACCU_1n1s1(8),
      O => U4_ACCU_1n1ss1(8)
    );
  U4_reg_ACCU_8_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_8_DXMUX_3701,
      CE => VCC,
      CLK => U4_Accu_out_8_CLKINV_3678,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_8_SRINV_3679,
      O => U4_Accu_out(8)
    );
  ix36612z15053 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X2Y3"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z50_DIG_MUX_3003,
      CE => nx36612z50_SRINV_2995,
      CLK => nx36612z50_CLKINV_3001,
      Q => nx36612z49,
      Q15 => nx36612z50_GMC15
    );
  ix36612z15054 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X2Y3"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z50_DIF_MUX_3016,
      CE => nx36612z50_SRINV_2995,
      CLK => nx36612z50_CLKINV_3001,
      Q => nx36612z50,
      Q15 => NLW_ix36612z15054_Q15_UNCONNECTED
    );
  ix36612z15045 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y1"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z40_DIG_MUX_3048,
      CE => nx36612z40_SRINV_3040,
      CLK => nx36612z40_CLKINV_3046,
      Q => nx36612z39,
      Q15 => nx36612z40_GMC15
    );
  ix36612z15046 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y1"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z40_DIF_MUX_3061,
      CE => nx36612z40_SRINV_3040,
      CLK => nx36612z40_CLKINV_3046,
      Q => nx36612z40,
      Q15 => NLW_ix36612z15046_Q15_UNCONNECTED
    );
  ix36612z15069 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X4Y1"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z70_DIG_MUX_3093,
      CE => nx36612z70_SRINV_3085,
      CLK => nx36612z70_CLKINV_3091,
      Q => nx36612z69,
      Q15 => nx36612z70_GMC15
    );
  ix36612z15070 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X4Y1"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z70_DIF_MUX_3106,
      CE => nx36612z70_SRINV_3085,
      CLK => nx36612z70_CLKINV_3091,
      Q => nx36612z70,
      Q15 => NLW_ix36612z15070_Q15_UNCONNECTED
    );
  ix36612z15065 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X0Y1"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z65_DIG_MUX_3138,
      CE => nx36612z65_SRINV_3130,
      CLK => nx36612z65_CLKINV_3136,
      Q => nx36612z64,
      Q15 => nx36612z65_GMC15
    );
  ix36612z15066 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X0Y1"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z65_DIF_MUX_3151,
      CE => nx36612z65_SRINV_3130,
      CLK => nx36612z65_CLKINV_3136,
      Q => nx36612z65,
      Q15 => NLW_ix36612z15066_Q15_UNCONNECTED
    );
  ix36612z15057 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X4Y0"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z55_DIG_MUX_3183,
      CE => nx36612z55_SRINV_3175,
      CLK => nx36612z55_CLKINV_3181,
      Q => nx36612z54,
      Q15 => nx36612z55_GMC15
    );
  ix36612z15058 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X4Y0"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z55_DIF_MUX_3196,
      CE => nx36612z55_SRINV_3175,
      CLK => nx36612z55_CLKINV_3181,
      Q => nx36612z55,
      Q15 => NLW_ix36612z15058_Q15_UNCONNECTED
    );
  ix36612z15049 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X4Y3"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z45_DIG_MUX_3228,
      CE => nx36612z45_SRINV_3220,
      CLK => nx36612z45_CLKINV_3226,
      Q => nx36612z44,
      Q15 => nx36612z45_GMC15
    );
  ix36612z15050 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X4Y3"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z45_DIF_MUX_3241,
      CE => nx36612z45_SRINV_3220,
      CLK => nx36612z45_CLKINV_3226,
      Q => nx36612z45,
      Q15 => NLW_ix36612z15050_Q15_UNCONNECTED
    );
  ix36612z15041 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y2"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z35_DIG_MUX_3273,
      CE => nx36612z35_SRINV_3265,
      CLK => nx36612z35_CLKINV_3271,
      Q => nx36612z34,
      Q15 => nx36612z35_GMC15
    );
  ix36612z15042 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X6Y2"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z35_DIF_MUX_3286,
      CE => nx36612z35_SRINV_3265,
      CLK => nx36612z35_CLKINV_3271,
      Q => nx36612z35,
      Q15 => NLW_ix36612z15042_Q15_UNCONNECTED
    );
  U4_reg_ACCU_9_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_10_DYMUX_3726,
      CE => VCC,
      CLK => U4_Accu_out_10_CLKINV_3716,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_10_SRINV_3717,
      O => U4_Accu_out(9)
    );
  U4_ix30017z1530 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X11Y5"
    )
    port map (
      ADR0 => Mult_out(10),
      ADR1 => VCC,
      ADR2 => U4_ACCU_1n1s1(10),
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(10)
    );
  U4_reg_ACCU_10_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y5",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_10_DXMUX_3739,
      CE => VCC,
      CLK => U4_Accu_out_10_CLKINV_3716,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_10_SRINV_3717,
      O => U4_Accu_out(10)
    );
  reg_Rom_Address_0_Q : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      I => Rom_Address_1_DYMUX_3765,
      CE => VCC,
      CLK => Rom_Address_1_CLKINV_3755,
      SET => GND,
      RST => Rom_Address_1_SRINV_3756,
      O => Rom_Address(0)
    );
  ix58526z1334 : X_LUT4
    generic map(
      INIT => X"0104",
      LOC => "SLICE_X8Y6"
    )
    port map (
      ADR0 => Delay_Line_sample_shift,
      ADR1 => Rom_Address(1),
      ADR2 => U6_c_state_0_Q,
      ADR3 => Rom_Address(0),
      O => nx58526z1
    );
  reg_Rom_Address_1_Q : X_FF
    generic map(
      LOC => "SLICE_X8Y6",
      INIT => '0'
    )
    port map (
      I => Rom_Address_1_DXMUX_3779,
      CE => VCC,
      CLK => Rom_Address_1_CLKINV_3755,
      SET => GND,
      RST => Rom_Address_1_SRINV_3756,
      O => Rom_Address(1)
    );
  U4_ix29020z1530 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X11Y4"
    )
    port map (
      ADR0 => Mult_out(11),
      ADR1 => U4_ACCU_1n1s1(11),
      ADR2 => VCC,
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(11)
    );
  U4_reg_ACCU_11_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_11_DYMUX_3802,
      CE => VCC,
      CLK => U4_Accu_out_11_CLKINV_3792,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_11_SRINV_3793,
      O => U4_Accu_out(11)
    );
  U4_reg_ACCU_12_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      I => Accu_out_13_DYMUX_3827,
      CE => VCC,
      CLK => Accu_out_13_CLKINV_3817,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_13_SRINV_3818,
      O => Accu_out(12)
    );
  U4_ix27026z1530 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X11Y7"
    )
    port map (
      ADR0 => U4_ACCU_1n1s1(13),
      ADR1 => Mult_out(13),
      ADR2 => VCC,
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(13)
    );
  U4_reg_ACCU_13_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y7",
      INIT => '0'
    )
    port map (
      I => Accu_out_13_DXMUX_3840,
      CE => VCC,
      CLK => Accu_out_13_CLKINV_3817,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_13_SRINV_3818,
      O => Accu_out(13)
    );
  U4_reg_ACCU_14_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      I => Accu_out_15_DYMUX_3865,
      CE => VCC,
      CLK => Accu_out_15_CLKINV_3855,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_15_SRINV_3856,
      O => Accu_out(14)
    );
  U4_ix25032z1530 : X_LUT4
    generic map(
      INIT => X"AACC",
      LOC => "SLICE_X11Y6"
    )
    port map (
      ADR0 => Mult_out(15),
      ADR1 => U4_ACCU_1n1s1(15),
      ADR2 => VCC,
      ADR3 => Accu_ctrl,
      O => U4_ACCU_1n1ss1(15)
    );
  U4_reg_ACCU_15_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y6",
      INIT => '0'
    )
    port map (
      I => Accu_out_15_DXMUX_3878,
      CE => VCC,
      CLK => Accu_out_15_CLKINV_3855,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_15_SRINV_3856,
      O => Accu_out(15)
    );
  U5_reg_Buff_out_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X9Y1",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_1_DYMUX_3894,
      CE => Filter_Out_dup_0_1_CEINV_3890,
      CLK => Filter_Out_dup_0_1_CLKINV_3891,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_1_SRINV_3892,
      O => Filter_Out_dup_0(0)
    );
  U5_reg_Buff_out_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X9Y1",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_1_DXMUX_3901,
      CE => Filter_Out_dup_0_1_CEINV_3890,
      CLK => Filter_Out_dup_0_1_CLKINV_3891,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_1_SRINV_3892,
      O => Filter_Out_dup_0(1)
    );
  ix66_reg_x_7_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X6Y7",
      INIT => '0'
    )
    port map (
      I => nx17366z1_DYMUX_3916,
      CE => nx17366z1_CEINV_3912,
      CLK => nx17366z1_CLKINV_3913,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx17366z1_SRINV_3914,
      O => nx17366z1
    );
  U6_reg_c_state_3_Q : X_FF
    generic map(
      LOC => "SLICE_X16Y1",
      INIT => '0'
    )
    port map (
      I => U6_c_state_2_DYMUX_3946,
      CE => VCC,
      CLK => U6_c_state_2_CLKINV_3936,
      SET => GND,
      RST => U6_c_state_2_SRINV_3937,
      O => U6_c_state_3_Q
    );
  ix57609z1060 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X16Y1"
    )
    port map (
      ADR0 => nx57609z2,
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(3),
      ADR3 => U6_c_state_7_Q,
      O => nx57609z1
    );
  U6_reg_c_state_2_Q : X_FF
    generic map(
      LOC => "SLICE_X16Y1",
      INIT => '0'
    )
    port map (
      I => U6_c_state_2_DXMUX_3960,
      CE => VCC,
      CLK => U6_c_state_2_CLKINV_3936,
      SET => GND,
      RST => U6_c_state_2_SRINV_3937,
      O => U6_c_state_2_Q
    );
  ix66_reg_x_28_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y0",
      INIT => '0'
    )
    port map (
      I => nx36612z14_DYMUX_3978,
      CE => nx36612z14_CEINV_3974,
      CLK => nx36612z14_CLKINV_3975,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z14_SRINV_3976,
      O => nx36612z13
    );
  ix66_reg_x_29_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y0",
      INIT => '0'
    )
    port map (
      I => nx36612z14_DXMUX_3985,
      CE => nx36612z14_CEINV_3974,
      CLK => nx36612z14_CLKINV_3975,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z14_SRINV_3976,
      O => nx36612z14
    );
  U5_reg_Buff_out_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_3_DYMUX_4002,
      CE => Filter_Out_dup_0_3_CEINV_3998,
      CLK => Filter_Out_dup_0_3_CLKINV_3999,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_3_SRINV_4000,
      O => Filter_Out_dup_0(2)
    );
  U5_reg_Buff_out_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_3_DXMUX_4009,
      CE => Filter_Out_dup_0_3_CEINV_3998,
      CLK => Filter_Out_dup_0_3_CLKINV_3999,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_3_SRINV_4000,
      O => Filter_Out_dup_0(3)
    );
  ix66_reg_x_1_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y0",
      INIT => '0'
    )
    port map (
      I => nx13444z1_DYMUX_4024,
      CE => nx13444z1_CEINV_4020,
      CLK => nx13444z1_CLKINV_4021,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx13444z1_SRINV_4022,
      O => nx13444z1
    );
  ix66_reg_x_30_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X2Y0",
      INIT => '0'
    )
    port map (
      I => nx42426z1_DYMUX_4039,
      CE => nx42426z1_CEINV_4035,
      CLK => nx42426z1_CLKINV_4036,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx42426z1_SRINV_4037,
      O => nx42426z1
    );
  ix66_reg_x_22_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => '0'
    )
    port map (
      I => nx44909z1_DYMUX_4054,
      CE => nx44909z1_CEINV_4050,
      CLK => nx44909z1_CLKINV_4051,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx44909z1_SRINV_4052,
      O => nx44909z1
    );
  ix66_reg_x_14_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => '0'
    )
    port map (
      I => nx47392z1_DYMUX_4069,
      CE => nx47392z1_CEINV_4065,
      CLK => nx47392z1_CLKINV_4066,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx47392z1_SRINV_4067,
      O => nx47392z1
    );
  U5_reg_Buff_out_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y0",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_5_DYMUX_4086,
      CE => Filter_Out_dup_0_5_CEINV_4082,
      CLK => Filter_Out_dup_0_5_CLKINV_4083,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_5_SRINV_4084,
      O => Filter_Out_dup_0(4)
    );
  U5_reg_Buff_out_5_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y0",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_5_DXMUX_4093,
      CE => Filter_Out_dup_0_5_CEINV_4082,
      CLK => Filter_Out_dup_0_5_CLKINV_4083,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_5_SRINV_4084,
      O => Filter_Out_dup_0(5)
    );
  ix59603z1322 : X_LUT4
    generic map(
      INIT => X"5000",
      LOC => "SLICE_X17Y0"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => VCC,
      ADR2 => nx59603z2,
      ADR3 => Rom_Address(2),
      O => nx59603z1
    );
  U6_reg_c_state_4_Q : X_FF
    generic map(
      LOC => "SLICE_X17Y0",
      INIT => '0'
    )
    port map (
      I => Delay_Line_sample_shift_DXMUX_4127,
      CE => VCC,
      CLK => Delay_Line_sample_shift_CLKINV_4110,
      SET => GND,
      RST => Delay_Line_sample_shift_FFX_RSTAND_4132,
      O => Delay_Line_sample_shift
    );
  Delay_Line_sample_shift_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X17Y0",
      PATHPULSE => 526 ps
    )
    port map (
      I => Reset_int,
      O => Delay_Line_sample_shift_FFX_RSTAND_4132
    );
  U5_reg_Buff_out_6_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y1",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_7_DYMUX_4145,
      CE => Filter_Out_dup_0_7_CEINV_4141,
      CLK => Filter_Out_dup_0_7_CLKINV_4142,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_7_SRINV_4143,
      O => Filter_Out_dup_0(6)
    );
  U5_reg_Buff_out_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y1",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_7_DXMUX_4152,
      CE => Filter_Out_dup_0_7_CEINV_4141,
      CLK => Filter_Out_dup_0_7_CLKINV_4142,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_7_SRINV_4143,
      O => Filter_Out_dup_0(7)
    );
  ix36612z1333 : X_LUT4
    generic map(
      INIT => X"0054",
      LOC => "SLICE_X7Y2"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => nx36612z9_0,
      ADR2 => nx36612z10,
      ADR3 => Rom_Address(2),
      O => nx36612z8
    );
  ix66_reg_x_8_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      I => nx22501z1_DYMUX_4191,
      CE => nx22501z1_CEINV_4187,
      CLK => nx22501z1_CLKINV_4188,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx22501z1_SRINV_4189,
      O => nx22501z1
    );
  ix36612z1343 : X_LUT4
    generic map(
      INIT => X"1110",
      LOC => "SLICE_X11Y3"
    )
    port map (
      ADR0 => Rom_Address(2),
      ADR1 => Rom_Address(3),
      ADR2 => nx36612z22_0,
      ADR3 => nx36612z23,
      O => nx36612z21
    );
  Accu_out_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X10Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Accu_out(16),
      O => Accu_out_16_F
    );
  Accu_out_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X10Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Accu_out(17),
      ADR3 => VCC,
      O => Accu_out_16_G
    );
  Accu_out_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X10Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Accu_out(18),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Accu_out_18_F
    );
  ADC_csb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 526 ps
    )
    port map (
      I => ADC_csb_OUTPUT_OFF_O1INV_3310,
      O => ADC_csb_O
    );
  ADC_csb_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => ADC_csb_OUTPUT_OFF_O1INV_3310
    );
  CLRB_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD127",
      PATHPULSE => 526 ps
    )
    port map (
      I => U6_c_state_0_Q,
      O => CLRB_O
    );
  LDACb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 526 ps
    )
    port map (
      I => LDACb_OUTPUT_OFF_O1INV_3368,
      O => LDACb_O
    );
  LDACb_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD125",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => LDACb_OUTPUT_OFF_O1INV_3368
    );
  Filter_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(0),
      O => Filter_Out_0_O
    );
  ADC_Convstb_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD126",
      PATHPULSE => 526 ps
    )
    port map (
      I => U6_c_state_2_Q,
      O => ADC_Convstb_O
    );
  Filter_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(1),
      O => Filter_Out_1_O
    );
  Filter_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(2),
      O => Filter_Out_2_O
    );
  Filter_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(3),
      O => Filter_Out_3_O
    );
  Filter_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(4),
      O => Filter_Out_4_O
    );
  Filter_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(5),
      O => Filter_Out_5_O
    );
  Filter_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(6),
      O => Filter_Out_6_O
    );
  Filter_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD128",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(7),
      O => Filter_Out_7_O
    );
  DAC_WRb_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD122",
      PATHPULSE => 526 ps
    )
    port map (
      I => U6_c_state_7_Q,
      O => DAC_WRb_O
    );
  ADC_Rdb_OUTPUT_OFF_OMUX : X_INV
    generic map(
      LOC => "PAD124",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => ADC_Rdb_O
    );
  DAC_csb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 526 ps
    )
    port map (
      I => DAC_csb_OUTPUT_OFF_O1INV_3476,
      O => DAC_csb_O
    );
  DAC_csb_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD119",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => DAC_csb_OUTPUT_OFF_O1INV_3476
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z37_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A(6)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z75_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_5_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z77_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_4_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z80_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_3_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z89_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B_0_Q
    );
  NlwBlock_FILTER_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_FILTER_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

