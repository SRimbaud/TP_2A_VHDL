
-- 
-- Definition of  FILTER
-- 
--      Tue Feb 14 09:35:06 2017
--      
--      Precision RTL Synthesis, 2014a.1_64-bit
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity ACCU is 
   port (
      Accu_in : IN std_logic_vector (15 DOWNTO 0) ;
      Accu_ctrl : IN std_logic ;
      CLK : IN std_logic ;
      Reset : IN std_logic ;
      Accu_out : OUT std_logic_vector (20 DOWNTO 0)) ;
end ACCU ;

architecture A_unfold_494 of ACCU is 
   signal Accu_out_19_EXMPLR27, Accu_out_18_EXMPLR28, Accu_out_17_EXMPLR29, 
      Accu_out_16_EXMPLR30, Accu_out_15_EXMPLR31, Accu_out_14_EXMPLR32, 
      Accu_out_13_EXMPLR33, Accu_out_12_EXMPLR34, Accu_out_11_EXMPLR35, 
      Accu_out_10_EXMPLR36, Accu_out_9_EXMPLR37, Accu_out_8_EXMPLR38, 
      Accu_out_7_EXMPLR39, Accu_out_6_EXMPLR40, Accu_out_5_EXMPLR41, 
      Accu_out_4_EXMPLR42, Accu_out_3_EXMPLR43, Accu_out_2_EXMPLR44, 
      Accu_out_1_EXMPLR45, Accu_out_dup_0_0: std_logic ;
   
   signal ACCU_1n1s1: std_logic_vector (19 DOWNTO 0) ;
   
   signal nx40142z1, nx40141z1, nx40140z1, nx40139z1, nx40138z1, nx40137z1, 
      nx40136z1, nx40135z1, nx40134z1, nx20970z1, nx20971z1, nx20972z1, 
      nx20973z1, nx20974z1, nx20975z1, nx20976z1, nx20977z1, nx20978z1, 
      nx5902z1, Accu_out_0_EXMPLR46: std_logic ;
   
   signal ACCU_1n1ss1: std_logic_vector (15 DOWNTO 0) ;
   
   signal nx24035z1, nx30768z1, nx30769z1, nx30770z1, nx30771z1, nx30772z1, 
      nx30773z1, nx30774z1, nx30775z1, nx30776z1, nx30777z1, nx5893z1, 
      nx5894z1, nx5895z1, nx5896z1, nx5897z1, nx5898z1: std_logic ;

begin
   Accu_out(19) <= Accu_out_19_EXMPLR27 ;
   Accu_out(18) <= Accu_out_18_EXMPLR28 ;
   Accu_out(17) <= Accu_out_17_EXMPLR29 ;
   Accu_out(16) <= Accu_out_16_EXMPLR30 ;
   Accu_out(15) <= Accu_out_15_EXMPLR31 ;
   Accu_out(14) <= Accu_out_14_EXMPLR32 ;
   Accu_out(13) <= Accu_out_13_EXMPLR33 ;
   Accu_out(12) <= Accu_out_12_EXMPLR34 ;
   ACCU_add21_1i1_xorcy_0 : XORCY port map ( O=>ACCU_1n1s1(0), CI=>
      Accu_out_0_EXMPLR46, LI=>nx30768z1);
   ACCU_add21_1i1_muxcy_0 : MUXCY_L port map ( LO=>nx40142z1, CI=>
      Accu_out_0_EXMPLR46, DI=>Accu_out_dup_0_0, S=>nx30768z1);
   ACCU_add21_1i1_xorcy_1 : XORCY port map ( O=>ACCU_1n1s1(1), CI=>nx40142z1, 
      LI=>nx30769z1);
   ACCU_add21_1i1_muxcy_1 : MUXCY_L port map ( LO=>nx40141z1, CI=>nx40142z1, 
      DI=>Accu_out_1_EXMPLR45, S=>nx30769z1);
   ACCU_add21_1i1_xorcy_2 : XORCY port map ( O=>ACCU_1n1s1(2), CI=>nx40141z1, 
      LI=>nx30770z1);
   ACCU_add21_1i1_muxcy_2 : MUXCY_L port map ( LO=>nx40140z1, CI=>nx40141z1, 
      DI=>Accu_out_2_EXMPLR44, S=>nx30770z1);
   ACCU_add21_1i1_xorcy_3 : XORCY port map ( O=>ACCU_1n1s1(3), CI=>nx40140z1, 
      LI=>nx30771z1);
   ACCU_add21_1i1_muxcy_3 : MUXCY_L port map ( LO=>nx40139z1, CI=>nx40140z1, 
      DI=>Accu_out_3_EXMPLR43, S=>nx30771z1);
   ACCU_add21_1i1_xorcy_4 : XORCY port map ( O=>ACCU_1n1s1(4), CI=>nx40139z1, 
      LI=>nx30772z1);
   ACCU_add21_1i1_muxcy_4 : MUXCY_L port map ( LO=>nx40138z1, CI=>nx40139z1, 
      DI=>Accu_out_4_EXMPLR42, S=>nx30772z1);
   ACCU_add21_1i1_xorcy_5 : XORCY port map ( O=>ACCU_1n1s1(5), CI=>nx40138z1, 
      LI=>nx30773z1);
   ACCU_add21_1i1_muxcy_5 : MUXCY_L port map ( LO=>nx40137z1, CI=>nx40138z1, 
      DI=>Accu_out_5_EXMPLR41, S=>nx30773z1);
   ACCU_add21_1i1_xorcy_6 : XORCY port map ( O=>ACCU_1n1s1(6), CI=>nx40137z1, 
      LI=>nx30774z1);
   ACCU_add21_1i1_muxcy_6 : MUXCY_L port map ( LO=>nx40136z1, CI=>nx40137z1, 
      DI=>Accu_out_6_EXMPLR40, S=>nx30774z1);
   ACCU_add21_1i1_xorcy_7 : XORCY port map ( O=>ACCU_1n1s1(7), CI=>nx40136z1, 
      LI=>nx30775z1);
   ACCU_add21_1i1_muxcy_7 : MUXCY_L port map ( LO=>nx40135z1, CI=>nx40136z1, 
      DI=>Accu_out_7_EXMPLR39, S=>nx30775z1);
   ACCU_add21_1i1_xorcy_8 : XORCY port map ( O=>ACCU_1n1s1(8), CI=>nx40135z1, 
      LI=>nx30776z1);
   ACCU_add21_1i1_muxcy_8 : MUXCY_L port map ( LO=>nx40134z1, CI=>nx40135z1, 
      DI=>Accu_out_8_EXMPLR38, S=>nx30776z1);
   ACCU_add21_1i1_xorcy_9 : XORCY port map ( O=>ACCU_1n1s1(9), CI=>nx40134z1, 
      LI=>nx30777z1);
   ACCU_add21_1i1_muxcy_9 : MUXCY_L port map ( LO=>nx20970z1, CI=>nx40134z1, 
      DI=>Accu_out_9_EXMPLR37, S=>nx30777z1);
   ACCU_add21_1i1_xorcy_10 : XORCY port map ( O=>ACCU_1n1s1(10), CI=>
      nx20970z1, LI=>nx5893z1);
   ACCU_add21_1i1_muxcy_10 : MUXCY_L port map ( LO=>nx20971z1, CI=>nx20970z1, 
      DI=>Accu_out_10_EXMPLR36, S=>nx5893z1);
   ACCU_add21_1i1_xorcy_11 : XORCY port map ( O=>ACCU_1n1s1(11), CI=>
      nx20971z1, LI=>nx5894z1);
   ACCU_add21_1i1_muxcy_11 : MUXCY_L port map ( LO=>nx20972z1, CI=>nx20971z1, 
      DI=>Accu_out_11_EXMPLR35, S=>nx5894z1);
   ACCU_add21_1i1_xorcy_12 : XORCY port map ( O=>ACCU_1n1s1(12), CI=>
      nx20972z1, LI=>nx5895z1);
   ACCU_add21_1i1_muxcy_12 : MUXCY_L port map ( LO=>nx20973z1, CI=>nx20972z1, 
      DI=>Accu_out_12_EXMPLR34, S=>nx5895z1);
   ACCU_add21_1i1_xorcy_13 : XORCY port map ( O=>ACCU_1n1s1(13), CI=>
      nx20973z1, LI=>nx5896z1);
   ACCU_add21_1i1_muxcy_13 : MUXCY_L port map ( LO=>nx20974z1, CI=>nx20973z1, 
      DI=>Accu_out_13_EXMPLR33, S=>nx5896z1);
   ACCU_add21_1i1_xorcy_14 : XORCY port map ( O=>ACCU_1n1s1(14), CI=>
      nx20974z1, LI=>nx5897z1);
   ACCU_add21_1i1_muxcy_14 : MUXCY_L port map ( LO=>nx20975z1, CI=>nx20974z1, 
      DI=>Accu_out_14_EXMPLR32, S=>nx5897z1);
   ACCU_add21_1i1_xorcy_15 : XORCY port map ( O=>ACCU_1n1s1(15), CI=>
      nx20975z1, LI=>nx5898z1);
   ACCU_add21_1i1_muxcy_15 : MUXCY_L port map ( LO=>nx20976z1, CI=>nx20975z1, 
      DI=>Accu_out_15_EXMPLR31, S=>nx5898z1);
   ACCU_add21_1i1_xorcy_16 : XORCY port map ( O=>ACCU_1n1s1(16), CI=>
      nx20976z1, LI=>Accu_out_16_EXMPLR30);
   ACCU_add21_1i1_muxcy_16 : MUXCY_L port map ( LO=>nx20977z1, CI=>nx20976z1, 
      DI=>Accu_out_0_EXMPLR46, S=>Accu_out_16_EXMPLR30);
   ACCU_add21_1i1_xorcy_17 : XORCY port map ( O=>ACCU_1n1s1(17), CI=>
      nx20977z1, LI=>Accu_out_17_EXMPLR29);
   ACCU_add21_1i1_muxcy_17 : MUXCY_L port map ( LO=>nx20978z1, CI=>nx20977z1, 
      DI=>Accu_out_0_EXMPLR46, S=>Accu_out_17_EXMPLR29);
   ACCU_add21_1i1_xorcy_18 : XORCY port map ( O=>ACCU_1n1s1(18), CI=>
      nx20978z1, LI=>Accu_out_18_EXMPLR28);
   ACCU_add21_1i1_muxcy_18 : MUXCY_L port map ( LO=>nx5902z1, CI=>nx20978z1, 
      DI=>Accu_out_0_EXMPLR46, S=>Accu_out_18_EXMPLR28);
   ACCU_add21_1i1_xorcy_19 : XORCY port map ( O=>ACCU_1n1s1(19), CI=>
      nx5902z1, LI=>Accu_out_19_EXMPLR27);
   reg_ACCU_19 : FDR port map ( Q=>Accu_out_19_EXMPLR27, C=>CLK, D=>
      ACCU_1n1s1(19), R=>nx24035z1);
   reg_ACCU_18 : FDR port map ( Q=>Accu_out_18_EXMPLR28, C=>CLK, D=>
      ACCU_1n1s1(18), R=>nx24035z1);
   reg_ACCU_17 : FDR port map ( Q=>Accu_out_17_EXMPLR29, C=>CLK, D=>
      ACCU_1n1s1(17), R=>nx24035z1);
   reg_ACCU_16 : FDR port map ( Q=>Accu_out_16_EXMPLR30, C=>CLK, D=>
      ACCU_1n1s1(16), R=>nx24035z1);
   reg_ACCU_15 : FDR port map ( Q=>Accu_out_15_EXMPLR31, C=>CLK, D=>
      ACCU_1n1ss1(15), R=>Reset);
   reg_ACCU_14 : FDR port map ( Q=>Accu_out_14_EXMPLR32, C=>CLK, D=>
      ACCU_1n1ss1(14), R=>Reset);
   reg_ACCU_13 : FDR port map ( Q=>Accu_out_13_EXMPLR33, C=>CLK, D=>
      ACCU_1n1ss1(13), R=>Reset);
   reg_ACCU_12 : FDR port map ( Q=>Accu_out_12_EXMPLR34, C=>CLK, D=>
      ACCU_1n1ss1(12), R=>Reset);
   reg_ACCU_11 : FDR port map ( Q=>Accu_out_11_EXMPLR35, C=>CLK, D=>
      ACCU_1n1ss1(11), R=>Reset);
   reg_ACCU_10 : FDR port map ( Q=>Accu_out_10_EXMPLR36, C=>CLK, D=>
      ACCU_1n1ss1(10), R=>Reset);
   reg_ACCU_9 : FDR port map ( Q=>Accu_out_9_EXMPLR37, C=>CLK, D=>
      ACCU_1n1ss1(9), R=>Reset);
   reg_ACCU_8 : FDR port map ( Q=>Accu_out_8_EXMPLR38, C=>CLK, D=>
      ACCU_1n1ss1(8), R=>Reset);
   reg_ACCU_7 : FDR port map ( Q=>Accu_out_7_EXMPLR39, C=>CLK, D=>
      ACCU_1n1ss1(7), R=>Reset);
   reg_ACCU_6 : FDR port map ( Q=>Accu_out_6_EXMPLR40, C=>CLK, D=>
      ACCU_1n1ss1(6), R=>Reset);
   reg_ACCU_5 : FDR port map ( Q=>Accu_out_5_EXMPLR41, C=>CLK, D=>
      ACCU_1n1ss1(5), R=>Reset);
   reg_ACCU_4 : FDR port map ( Q=>Accu_out_4_EXMPLR42, C=>CLK, D=>
      ACCU_1n1ss1(4), R=>Reset);
   reg_ACCU_3 : FDR port map ( Q=>Accu_out_3_EXMPLR43, C=>CLK, D=>
      ACCU_1n1ss1(3), R=>Reset);
   reg_ACCU_2 : FDR port map ( Q=>Accu_out_2_EXMPLR44, C=>CLK, D=>
      ACCU_1n1ss1(2), R=>Reset);
   reg_ACCU_1 : FDR port map ( Q=>Accu_out_1_EXMPLR45, C=>CLK, D=>
      ACCU_1n1ss1(1), R=>Reset);
   reg_ACCU_0 : FDR port map ( Q=>Accu_out_dup_0_0, C=>CLK, D=>
      ACCU_1n1ss1(0), R=>Reset);
   GND_EXMPLR48 : GND port map ( G=>Accu_out_0_EXMPLR46);
   ix25032z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(15), I0=>Accu_ctrl, I1=>Accu_in(15), I2=>
      ACCU_1n1s1(15));
   ix26029z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(14), I0=>Accu_ctrl, I1=>Accu_in(14), I2=>
      ACCU_1n1s1(14));
   ix27026z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(13), I0=>Accu_ctrl, I1=>Accu_in(13), I2=>
      ACCU_1n1s1(13));
   ix28023z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(12), I0=>Accu_ctrl, I1=>Accu_in(12), I2=>
      ACCU_1n1s1(12));
   ix29020z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(11), I0=>Accu_ctrl, I1=>Accu_in(11), I2=>
      ACCU_1n1s1(11));
   ix30017z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(10), I0=>Accu_ctrl, I1=>Accu_in(10), I2=>
      ACCU_1n1s1(10));
   ix65025z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(9), I0=>Accu_ctrl, I1=>Accu_in(9), I2=>
      ACCU_1n1s1(9));
   ix486z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(8), I0=>Accu_ctrl, I1=>Accu_in(8), I2=>
      ACCU_1n1s1(8));
   ix1483z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(7), I0=>Accu_ctrl, I1=>Accu_in(7), I2=>
      ACCU_1n1s1(7));
   ix2480z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(6), I0=>Accu_ctrl, I1=>Accu_in(6), I2=>
      ACCU_1n1s1(6));
   ix3477z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(5), I0=>Accu_ctrl, I1=>Accu_in(5), I2=>
      ACCU_1n1s1(5));
   ix4474z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(4), I0=>Accu_ctrl, I1=>Accu_in(4), I2=>
      ACCU_1n1s1(4));
   ix5471z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(3), I0=>Accu_ctrl, I1=>Accu_in(3), I2=>
      ACCU_1n1s1(3));
   ix6468z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(2), I0=>Accu_ctrl, I1=>Accu_in(2), I2=>
      ACCU_1n1s1(2));
   ix7465z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(1), I0=>Accu_ctrl, I1=>Accu_in(1), I2=>
      ACCU_1n1s1(1));
   ix8462z1530 : LUT3
      generic map (INIT => X"D8") 
       port map ( O=>ACCU_1n1ss1(0), I0=>Accu_ctrl, I1=>Accu_in(0), I2=>
      ACCU_1n1s1(0));
   ix24035z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx24035z1, I0=>Accu_ctrl, I1=>Reset);
   ix30768z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30768z1, I0=>Accu_out_dup_0_0, I1=>Accu_in(0));
   ix30769z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30769z1, I0=>Accu_out_1_EXMPLR45, I1=>Accu_in(1));
   ix30770z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30770z1, I0=>Accu_out_2_EXMPLR44, I1=>Accu_in(2));
   ix30771z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30771z1, I0=>Accu_out_3_EXMPLR43, I1=>Accu_in(3));
   ix30772z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30772z1, I0=>Accu_out_4_EXMPLR42, I1=>Accu_in(4));
   ix30773z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30773z1, I0=>Accu_out_5_EXMPLR41, I1=>Accu_in(5));
   ix30774z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30774z1, I0=>Accu_out_6_EXMPLR40, I1=>Accu_in(6));
   ix30775z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30775z1, I0=>Accu_out_7_EXMPLR39, I1=>Accu_in(7));
   ix30776z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30776z1, I0=>Accu_out_8_EXMPLR38, I1=>Accu_in(8));
   ix30777z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30777z1, I0=>Accu_out_9_EXMPLR37, I1=>Accu_in(9));
   ix5893z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5893z1, I0=>Accu_out_10_EXMPLR36, I1=>Accu_in(10));
   ix5894z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5894z1, I0=>Accu_out_11_EXMPLR35, I1=>Accu_in(11));
   ix5895z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5895z1, I0=>Accu_out_12_EXMPLR34, I1=>Accu_in(12));
   ix5896z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5896z1, I0=>Accu_out_13_EXMPLR33, I1=>Accu_in(13));
   ix5897z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5897z1, I0=>Accu_out_14_EXMPLR32, I1=>Accu_in(14));
   ix5898z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5898z1, I0=>Accu_out_15_EXMPLR31, I1=>Accu_in(15));

end A_unfold_494 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity mult_16_0 is 
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0)) ;
end mult_16_0 ;

architecture IMPLEMENTATION of mult_16_0 is 
   signal nx2247z2: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   ps_gnd : GND port map ( G=>nx2247z2);
   ix2247z10733 : MULT18X18 port map ( P(35)=>DANGLING(0,0), P(34)=>
      DANGLING(0,1), P(33)=>DANGLING(0,2), P(32)=>DANGLING(0,3), P(31)=>
      DANGLING(0,4), P(30)=>DANGLING(0,5), P(29)=>DANGLING(0,6), P(28)=>
      DANGLING(0,7), P(27)=>DANGLING(0,8), P(26)=>DANGLING(0,9), P(25)=>
      DANGLING(0,10), P(24)=>DANGLING(0,11), P(23)=>DANGLING(0,12), P(22)=>
      DANGLING(0,13), P(21)=>DANGLING(0,14), P(20)=>DANGLING(0,15), P(19)=>
      DANGLING(0,16), P(18)=>DANGLING(0,17), P(17)=>DANGLING(0,18), P(16)=>
      DANGLING(0,19), P(15)=>d(15), P(14)=>d(14), P(13)=>d(13), P(12)=>d(12), 
      P(11)=>d(11), P(10)=>d(10), P(9)=>d(9), P(8)=>d(8), P(7)=>d(7), P(6)=>
      d(6), P(5)=>d(5), P(4)=>d(4), P(3)=>d(3), P(2)=>d(2), P(1)=>d(1), P(0)
      =>d(0), A(17)=>nx2247z2, A(16)=>nx2247z2, A(15)=>nx2247z2, A(14)=>
      nx2247z2, A(13)=>nx2247z2, A(12)=>nx2247z2, A(11)=>nx2247z2, A(10)=>
      nx2247z2, A(9)=>nx2247z2, A(8)=>nx2247z2, A(7)=>a(7), A(6)=>a(6), A(5)
      =>a(5), A(4)=>a(4), A(3)=>a(3), A(2)=>a(2), A(1)=>a(1), A(0)=>a(0), 
      B(17)=>nx2247z2, B(16)=>nx2247z2, B(15)=>nx2247z2, B(14)=>nx2247z2, 
      B(13)=>nx2247z2, B(12)=>nx2247z2, B(11)=>nx2247z2, B(10)=>nx2247z2, 
      B(9)=>nx2247z2, B(8)=>nx2247z2, B(7)=>b(7), B(6)=>b(6), B(5)=>b(5), 
      B(4)=>b(4), B(3)=>b(3), B(2)=>b(2), B(1)=>b(1), B(0)=>b(0));
end IMPLEMENTATION ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity FILTER is 
   port (
      Filter_In : IN std_logic_vector (7 DOWNTO 0) ;
      CLK : IN std_logic ;
      Reset : IN std_logic ;
      ADC_Eocb : IN std_logic ;
      ADC_Convstb : OUT std_logic ;
      ADC_Rdb : OUT std_logic ;
      ADC_csb : OUT std_logic ;
      DAC_WRb : OUT std_logic ;
      DAC_csb : OUT std_logic ;
      LDACb : OUT std_logic ;
      CLRB : OUT std_logic ;
      Filter_Out : OUT std_logic_vector (7 DOWNTO 0)) ;
end FILTER ;

architecture A of FILTER is 
   component ACCU
      port (
         Accu_in : IN std_logic_vector (15 DOWNTO 0) ;
         Accu_ctrl : IN std_logic ;
         CLK : IN std_logic ;
         Reset : IN std_logic ;
         Accu_out : OUT std_logic_vector (20 DOWNTO 0)) ;
   end component ;
   component mult_16_0
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal Filter_Out_dup_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal Delay_Line_sample_shift, Accu_ctrl: std_logic ;
   
   signal Mult_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal Accu_out_19, Accu_out_18, Accu_out_17, Accu_out_16, Accu_out_15, 
      Accu_out_14, Accu_out_13, Accu_out_12: std_logic ;
   
   signal Rom_Address: std_logic_vector (4 DOWNTO 0) ;
   
   signal U6_c_state_7, U6_c_state_6, U6_c_state_3, U6_c_state_2, 
      U6_c_state_1, U6_c_state_0, nx36612z16, nx18579z1, nx13444z1, nx8309z1, 
      nx3174z1, nx63575z1, nx58440z1, nx53305z1, nx17366z1, nx22501z1, 
      nx43819z1, nx38684z1, nx31987z1, nx37122z1, nx42257z1, nx47392z1, 
      nx52527z1, nx57662z1, nx62797z1, nx2396z1, nx36032z1, nx34639z1, 
      nx39774z1, nx44909z1, nx50044z1, nx55179z1, nx60314z1, nx36612z5, 
      nx36612z6, nx36612z13, nx36612z14, nx42426z1, nx36612z36, nx36612z34, 
      nx36612z35, nx36612z41, nx36612z39, nx36612z40, nx36612z46, nx36612z44, 
      nx36612z45, nx36612z51, nx36612z49, nx36612z50, nx36612z56, nx36612z54, 
      nx36612z55, nx36612z61, nx36612z59, nx36612z60, nx36612z66, nx36612z64, 
      nx36612z65, nx36612z71, nx36612z69, nx36612z70: std_logic ;
   
   signal Filter_In_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal CLK_int, Reset_int, ADC_Convstb_dup_0, ADC_Rdb_dup_0, 
      DAC_WRb_dup_0, CLRB_dup_0, nx55615z1, nx56612z1, nx57609z1, nx58526z1, 
      nx55535z1, nx36612z89, nx36612z72, nx56612z3, nx56612z2, nx57609z2, 
      nx59603z2, nx59603z1, nx59523z1, nx57529z1, nx56532z1, nx55535z3, 
      nx55535z2, nx36612z91, nx36612z90, nx36612z88, nx36612z87, nx36612z86, 
      nx36612z85, nx36612z84, nx36612z83, nx36612z82, nx36612z81, nx36612z80, 
      nx36612z79, nx36612z78, nx36612z77, nx36612z76, nx36612z75, nx36612z74, 
      nx36612z73, nx36612z68, nx36612z67, nx36612z63, nx36612z62, nx36612z58, 
      nx36612z57, nx36612z53, nx36612z52, nx36612z48, nx36612z47, nx36612z43, 
      nx36612z42, nx36612z38, nx36612z37, nx36612z33, nx36612z32, nx36612z31, 
      nx36612z30, nx36612z29, nx36612z28, nx36612z27, nx36612z26, nx36612z25, 
      nx36612z24, nx36612z23, nx36612z22, nx36612z21, nx36612z20, nx36612z19, 
      nx36612z18, nx36612z17, nx36612z15, nx36612z12, nx36612z11, nx36612z10, 
      nx36612z9, nx36612z8, nx36612z7, nx36612z4, nx36612z3, nx36612z2, 
      nx36612z1, nx23714z1: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   U4 : ACCU port map ( Accu_in(15)=>Mult_out(15), Accu_in(14)=>Mult_out(14), 
      Accu_in(13)=>Mult_out(13), Accu_in(12)=>Mult_out(12), Accu_in(11)=>
      Mult_out(11), Accu_in(10)=>Mult_out(10), Accu_in(9)=>Mult_out(9), 
      Accu_in(8)=>Mult_out(8), Accu_in(7)=>Mult_out(7), Accu_in(6)=>
      Mult_out(6), Accu_in(5)=>Mult_out(5), Accu_in(4)=>Mult_out(4), 
      Accu_in(3)=>Mult_out(3), Accu_in(2)=>Mult_out(2), Accu_in(1)=>
      Mult_out(1), Accu_in(0)=>Mult_out(0), Accu_ctrl=>Accu_ctrl, CLK=>
      CLK_int, Reset=>Reset_int, Accu_out(20)=>DANGLING(0,0), Accu_out(19)=>
      Accu_out_19, Accu_out(18)=>Accu_out_18, Accu_out(17)=>Accu_out_17, 
      Accu_out(16)=>Accu_out_16, Accu_out(15)=>Accu_out_15, Accu_out(14)=>
      Accu_out_14, Accu_out(13)=>Accu_out_13, Accu_out(12)=>Accu_out_12, 
      Accu_out(11)=>DANGLING(0,1), Accu_out(10)=>DANGLING(0,2), Accu_out(9)
      =>DANGLING(0,3), Accu_out(8)=>DANGLING(0,4), Accu_out(7)=>
      DANGLING(0,5), Accu_out(6)=>DANGLING(0,6), Accu_out(5)=>DANGLING(0,7), 
      Accu_out(4)=>DANGLING(0,8), Accu_out(3)=>DANGLING(0,9), Accu_out(2)=>
      DANGLING(0,10), Accu_out(1)=>DANGLING(0,11), Accu_out(0)=>
      DANGLING(0,12));
   U3_Mult_out_multu16_0 : mult_16_0 port map ( a(15)=>DANGLING(0,13), a(14)
      =>DANGLING(0,14), a(13)=>DANGLING(0,15), a(12)=>DANGLING(0,16), a(11)
      =>DANGLING(0,17), a(10)=>DANGLING(0,18), a(9)=>DANGLING(0,19), a(8)=>
      DANGLING(0,20), a(7)=>nx36612z1, a(6)=>nx36612z37, a(5)=>nx36612z42, 
      a(4)=>nx36612z47, a(3)=>nx36612z52, a(2)=>nx36612z57, a(1)=>nx36612z62, 
      a(0)=>nx36612z67, b(15)=>DANGLING(0,21), b(14)=>DANGLING(0,22), b(13)
      =>DANGLING(0,23), b(12)=>DANGLING(0,24), b(11)=>DANGLING(0,25), b(10)
      =>DANGLING(0,26), b(9)=>DANGLING(0,27), b(8)=>DANGLING(0,28), b(7)=>
      nx36612z72, b(6)=>nx36612z73, b(5)=>nx36612z75, b(4)=>nx36612z77, b(3)
      =>nx36612z80, b(2)=>nx36612z83, b(1)=>nx36612z86, b(0)=>nx36612z89, 
      d(15)=>Mult_out(15), d(14)=>Mult_out(14), d(13)=>Mult_out(13), d(12)=>
      Mult_out(12), d(11)=>Mult_out(11), d(10)=>Mult_out(10), d(9)=>
      Mult_out(9), d(8)=>Mult_out(8), d(7)=>Mult_out(7), d(6)=>Mult_out(6), 
      d(5)=>Mult_out(5), d(4)=>Mult_out(4), d(3)=>Mult_out(3), d(2)=>
      Mult_out(2), d(1)=>Mult_out(1), d(0)=>Mult_out(0));
   ix36612z15041 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z34, Q15=>nx36612z36, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(7));
   ix36612z15042 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z35, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z36);
   ix36612z15045 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z39, Q15=>nx36612z41, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(6));
   ix36612z15046 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z40, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z41);
   ix36612z15049 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z44, Q15=>nx36612z46, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(5));
   ix36612z15050 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z45, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z46);
   ix36612z15053 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z49, Q15=>nx36612z51, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(4));
   ix36612z15054 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z50, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z51);
   ix36612z15057 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z54, Q15=>nx36612z56, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(3));
   ix36612z15058 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z55, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z56);
   ix36612z15061 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z59, Q15=>nx36612z61, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(2));
   ix36612z15062 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z60, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z61);
   ix36612z15065 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z64, Q15=>nx36612z66, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(1));
   ix36612z15066 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z65, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z66);
   ix36612z15069 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z69, Q15=>nx36612z71, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>Filter_In_int(0));
   ix36612z15070 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z70, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      Delay_Line_sample_shift, CLK=>CLK_int, D=>nx36612z71);
   U5_reg_Buff_out_7 : FDRE port map ( Q=>Filter_Out_dup_0(7), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_19, R=>Reset_int);
   U5_reg_Buff_out_6 : FDRE port map ( Q=>Filter_Out_dup_0(6), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_18, R=>Reset_int);
   U5_reg_Buff_out_5 : FDRE port map ( Q=>Filter_Out_dup_0(5), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_17, R=>Reset_int);
   U5_reg_Buff_out_4 : FDRE port map ( Q=>Filter_Out_dup_0(4), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_16, R=>Reset_int);
   U5_reg_Buff_out_3 : FDRE port map ( Q=>Filter_Out_dup_0(3), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_15, R=>Reset_int);
   U5_reg_Buff_out_2 : FDRE port map ( Q=>Filter_Out_dup_0(2), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_14, R=>Reset_int);
   U5_reg_Buff_out_1 : FDRE port map ( Q=>Filter_Out_dup_0(1), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_13, R=>Reset_int);
   U5_reg_Buff_out_0 : FDRE port map ( Q=>Filter_Out_dup_0(0), C=>CLK_int, 
      CE=>Accu_ctrl, D=>Accu_out_12, R=>Reset_int);
   ix66_reg_x_0_7 : FDRE port map ( Q=>nx18579z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx23714z1, R=>Reset_int);
   ix66_reg_x_1_7 : FDRE port map ( Q=>nx13444z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx18579z1, R=>Reset_int);
   ix66_reg_x_2_7 : FDRE port map ( Q=>nx8309z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx13444z1, R=>Reset_int);
   ix66_reg_x_3_7 : FDRE port map ( Q=>nx3174z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx8309z1, R=>Reset_int);
   ix66_reg_x_4_7 : FDRE port map ( Q=>nx63575z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx3174z1, R=>Reset_int);
   ix66_reg_x_5_7 : FDRE port map ( Q=>nx58440z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx63575z1, R=>Reset_int);
   ix66_reg_x_6_7 : FDRE port map ( Q=>nx53305z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx58440z1, R=>Reset_int);
   ix66_reg_x_7_7 : FDRE port map ( Q=>nx17366z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx53305z1, R=>Reset_int);
   ix66_reg_x_8_7 : FDRE port map ( Q=>nx22501z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx17366z1, R=>Reset_int);
   ix66_reg_x_9_7 : FDRE port map ( Q=>nx43819z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx22501z1, R=>Reset_int);
   ix66_reg_x_10_7 : FDRE port map ( Q=>nx38684z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx43819z1, R=>Reset_int);
   ix66_reg_x_11_7 : FDRE port map ( Q=>nx31987z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx38684z1, R=>Reset_int);
   ix66_reg_x_12_7 : FDRE port map ( Q=>nx37122z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx31987z1, R=>Reset_int);
   ix66_reg_x_13_7 : FDRE port map ( Q=>nx42257z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx37122z1, R=>Reset_int);
   ix66_reg_x_14_7 : FDRE port map ( Q=>nx47392z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx42257z1, R=>Reset_int);
   ix66_reg_x_15_7 : FDRE port map ( Q=>nx52527z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx47392z1, R=>Reset_int);
   ix66_reg_x_16_7 : FDRE port map ( Q=>nx57662z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx52527z1, R=>Reset_int);
   ix66_reg_x_17_7 : FDRE port map ( Q=>nx62797z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx57662z1, R=>Reset_int);
   ix66_reg_x_18_7 : FDRE port map ( Q=>nx2396z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx62797z1, R=>Reset_int);
   ix66_reg_x_19_7 : FDRE port map ( Q=>nx36032z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx2396z1, R=>Reset_int);
   ix66_reg_x_20_7 : FDRE port map ( Q=>nx34639z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx36032z1, R=>Reset_int);
   ix66_reg_x_21_7 : FDRE port map ( Q=>nx39774z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx34639z1, R=>Reset_int);
   ix66_reg_x_22_7 : FDRE port map ( Q=>nx44909z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx39774z1, R=>Reset_int);
   ix66_reg_x_23_7 : FDRE port map ( Q=>nx50044z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx44909z1, R=>Reset_int);
   ix66_reg_x_24_7 : FDRE port map ( Q=>nx55179z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx50044z1, R=>Reset_int);
   ix66_reg_x_25_7 : FDRE port map ( Q=>nx60314z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx55179z1, R=>Reset_int);
   ix66_reg_x_26_7 : FDRE port map ( Q=>nx36612z5, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx60314z1, R=>Reset_int);
   ix66_reg_x_27_7 : FDRE port map ( Q=>nx36612z6, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx36612z5, R=>Reset_int);
   ix66_reg_x_28_7 : FDRE port map ( Q=>nx36612z13, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx36612z6, R=>Reset_int);
   ix66_reg_x_29_7 : FDRE port map ( Q=>nx36612z14, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx36612z13, R=>Reset_int);
   ix66_reg_x_30_7 : FDRE port map ( Q=>nx42426z1, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx36612z14, R=>Reset_int);
   ix66_reg_x_31_7 : FDRE port map ( Q=>nx36612z16, C=>CLK_int, CE=>
      Delay_Line_sample_shift, D=>nx42426z1, R=>Reset_int);
   Filter_Out_obuf_0 : OBUF port map ( O=>Filter_Out(0), I=>
      Filter_Out_dup_0(0));
   Filter_Out_obuf_1 : OBUF port map ( O=>Filter_Out(1), I=>
      Filter_Out_dup_0(1));
   Filter_Out_obuf_2 : OBUF port map ( O=>Filter_Out(2), I=>
      Filter_Out_dup_0(2));
   Filter_Out_obuf_3 : OBUF port map ( O=>Filter_Out(3), I=>
      Filter_Out_dup_0(3));
   Filter_Out_obuf_4 : OBUF port map ( O=>Filter_Out(4), I=>
      Filter_Out_dup_0(4));
   Filter_Out_obuf_5 : OBUF port map ( O=>Filter_Out(5), I=>
      Filter_Out_dup_0(5));
   Filter_Out_obuf_6 : OBUF port map ( O=>Filter_Out(6), I=>
      Filter_Out_dup_0(6));
   Filter_Out_obuf_7 : OBUF port map ( O=>Filter_Out(7), I=>
      Filter_Out_dup_0(7));
   CLRB_obuf : OBUF port map ( O=>CLRB, I=>CLRB_dup_0);
   LDACb_obuf : OBUF port map ( O=>LDACb, I=>nx55615z1);
   DAC_csb_obuf : OBUF port map ( O=>DAC_csb, I=>nx55615z1);
   DAC_WRb_obuf : OBUF port map ( O=>DAC_WRb, I=>DAC_WRb_dup_0);
   ADC_csb_obuf : OBUF port map ( O=>ADC_csb, I=>nx55615z1);
   ADC_Rdb_obuf : OBUF port map ( O=>ADC_Rdb, I=>ADC_Rdb_dup_0);
   ADC_Convstb_obuf : OBUF port map ( O=>ADC_Convstb, I=>ADC_Convstb_dup_0);
   Reset_ibuf : IBUF port map ( O=>Reset_int, I=>Reset);
   Filter_In_ibuf_0 : IBUF port map ( O=>Filter_In_int(0), I=>Filter_In(0));
   Filter_In_ibuf_1 : IBUF port map ( O=>Filter_In_int(1), I=>Filter_In(1));
   Filter_In_ibuf_2 : IBUF port map ( O=>Filter_In_int(2), I=>Filter_In(2));
   Filter_In_ibuf_3 : IBUF port map ( O=>Filter_In_int(3), I=>Filter_In(3));
   Filter_In_ibuf_4 : IBUF port map ( O=>Filter_In_int(4), I=>Filter_In(4));
   Filter_In_ibuf_5 : IBUF port map ( O=>Filter_In_int(5), I=>Filter_In(5));
   Filter_In_ibuf_6 : IBUF port map ( O=>Filter_In_int(6), I=>Filter_In(6));
   Filter_In_ibuf_7 : IBUF port map ( O=>Filter_In_int(7), I=>Filter_In(7));
   reg_Rom_Address_4 : FDC port map ( Q=>Rom_Address(4), C=>CLK_int, CLR=>
      Reset_int, D=>nx55535z1);
   reg_Rom_Address_3 : FDC port map ( Q=>Rom_Address(3), C=>CLK_int, CLR=>
      Reset_int, D=>nx56532z1);
   reg_Rom_Address_2 : FDC port map ( Q=>Rom_Address(2), C=>CLK_int, CLR=>
      Reset_int, D=>nx57529z1);
   reg_Rom_Address_1 : FDC port map ( Q=>Rom_Address(1), C=>CLK_int, CLR=>
      Reset_int, D=>nx58526z1);
   reg_Rom_Address_0 : FDC port map ( Q=>Rom_Address(0), C=>CLK_int, CLR=>
      Reset_int, D=>nx59523z1);
   U6_reg_c_state_7 : FDC port map ( Q=>U6_c_state_7, C=>CLK_int, CLR=>
      Reset_int, D=>U6_c_state_6);
   U6_reg_c_state_6 : FDC port map ( Q=>U6_c_state_6, C=>CLK_int, CLR=>
      Reset_int, D=>Accu_ctrl);
   U6_reg_c_state_5 : FDC port map ( Q=>Accu_ctrl, C=>CLK_int, CLR=>
      Reset_int, D=>Delay_Line_sample_shift);
   U6_reg_c_state_4 : FDC port map ( Q=>Delay_Line_sample_shift, C=>CLK_int, 
      CLR=>Reset_int, D=>nx59603z1);
   U6_reg_c_state_3 : FDC port map ( Q=>U6_c_state_3, C=>CLK_int, CLR=>
      Reset_int, D=>U6_c_state_2);
   U6_reg_c_state_2 : FDC port map ( Q=>U6_c_state_2, C=>CLK_int, CLR=>
      Reset_int, D=>nx57609z1);
   U6_reg_c_state_1 : FDC port map ( Q=>U6_c_state_1, C=>CLK_int, CLR=>
      Reset_int, D=>nx56612z1);
   U6_reg_c_state_0 : FDP port map ( Q=>U6_c_state_0, C=>CLK_int, D=>
      nx55615z1, PRE=>Reset_int);
   ADC_Convstb_EXMPLR90 : INV port map ( O=>ADC_Convstb_dup_0, I=>
      U6_c_state_2);
   ADC_Rdb_EXMPLR91 : INV port map ( O=>ADC_Rdb_dup_0, I=>
      Delay_Line_sample_shift);
   DAC_WRb_EXMPLR92 : INV port map ( O=>DAC_WRb_dup_0, I=>U6_c_state_7);
   CLRB_EXMPLR93 : INV port map ( O=>CLRB_dup_0, I=>U6_c_state_0);
   ps_gnd : GND port map ( G=>nx55615z1);
   ix56612z33877 : LUT4
      generic map (INIT => X"7F33") 
       port map ( O=>nx56612z1, I0=>nx56612z2, I1=>nx56612z3, I2=>
      Rom_Address(1), I3=>U6_c_state_1);
   ix57609z1060 : LUT4
      generic map (INIT => X"FF02") 
       port map ( O=>nx57609z1, I0=>nx57609z2, I1=>Rom_Address(3), I2=>
      Rom_Address(2), I3=>U6_c_state_7);
   ix58526z1334 : LUT4
      generic map (INIT => X"0014") 
       port map ( O=>nx58526z1, I0=>Delay_Line_sample_shift, I1=>
      Rom_Address(1), I2=>Rom_Address(0), I3=>U6_c_state_0);
   ix55535z28642 : LUT4
      generic map (INIT => X"6AC0") 
       port map ( O=>nx55535z1, I0=>nx55535z2, I1=>nx55535z3, I2=>
      Rom_Address(4), I3=>Rom_Address(3));
   ix36612z1447 : LUT3
      generic map (INIT => X"3A") 
       port map ( O=>nx36612z89, I0=>nx36612z90, I1=>nx36612z91, I2=>
      Rom_Address(1));
   ix36612z1378 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx36612z72, I0=>Rom_Address(4), I1=>Rom_Address(3));
   ix56612z1317 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx56612z3, I0=>U6_c_state_3, I1=>U6_c_state_0);
   ix56612z1699 : LUT4
      generic map (INIT => X"0180") 
       port map ( O=>nx56612z2, I0=>Rom_Address(4), I1=>Rom_Address(3), I2=>
      Rom_Address(2), I3=>Rom_Address(0));
   ix57609z17699 : LUT4
      generic map (INIT => X"4000") 
       port map ( O=>nx57609z2, I0=>Rom_Address(4), I1=>Rom_Address(1), I2=>
      Rom_Address(0), I3=>U6_c_state_1);
   ix59603z34083 : LUT4
      generic map (INIT => X"8000") 
       port map ( O=>nx59603z2, I0=>Rom_Address(4), I1=>Rom_Address(3), I2=>
      Rom_Address(1), I3=>U6_c_state_1);
   ix59603z1322 : LUT3
      generic map (INIT => X"08") 
       port map ( O=>nx59603z1, I0=>nx59603z2, I1=>Rom_Address(2), I2=>
      Rom_Address(0));
   ix59523z1315 : LUT3
      generic map (INIT => X"01") 
       port map ( O=>nx59523z1, I0=>Delay_Line_sample_shift, I1=>
      Rom_Address(0), I2=>U6_c_state_0);
   ix57529z11690 : LUT4
      generic map (INIT => X"2888") 
       port map ( O=>nx57529z1, I0=>nx55535z3, I1=>Rom_Address(2), I2=>
      Rom_Address(1), I3=>Rom_Address(0));
   ix56532z14374 : LUT4
      generic map (INIT => X"3304") 
       port map ( O=>nx56532z1, I0=>Delay_Line_sample_shift, I1=>
      Rom_Address(3), I2=>U6_c_state_0, I3=>nx55535z2);
   ix55535z1317 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx55535z3, I0=>Delay_Line_sample_shift, I1=>
      U6_c_state_0);
   ix55535z34083 : LUT4
      generic map (INIT => X"8000") 
       port map ( O=>nx55535z2, I0=>nx55535z3, I1=>Rom_Address(2), I2=>
      Rom_Address(1), I3=>Rom_Address(0));
   ix36612z28783 : LUT4
      generic map (INIT => X"6B00") 
       port map ( O=>nx36612z91, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z1175 : LUT4
      generic map (INIT => X"FF29") 
       port map ( O=>nx36612z90, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z42310 : LUT4
      generic map (INIT => X"9FDA") 
       port map ( O=>nx36612z88, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z43377 : LUT4
      generic map (INIT => X"A406") 
       port map ( O=>nx36612z87, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z1444 : LUT3
      generic map (INIT => X"3A") 
       port map ( O=>nx36612z86, I0=>nx36612z87, I1=>nx36612z88, I2=>
      Rom_Address(1));
   ix36612z28525 : LUT4
      generic map (INIT => X"6A04") 
       port map ( O=>nx36612z85, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z58641 : LUT4
      generic map (INIT => X"DFA9") 
       port map ( O=>nx36612z84, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z1546 : LUT3
      generic map (INIT => X"A3") 
       port map ( O=>nx36612z83, I0=>nx36612z84, I1=>nx36612z85, I2=>
      Rom_Address(1));
   ix36612z28366 : LUT4
      generic map (INIT => X"6968") 
       port map ( O=>nx36612z82, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z7163 : LUT4
      generic map (INIT => X"1696") 
       port map ( O=>nx36612z81, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z1463 : LUT3
      generic map (INIT => X"53") 
       port map ( O=>nx36612z80, I0=>nx36612z81, I1=>nx36612z82, I2=>
      Rom_Address(1));
   ix36612z60093 : LUT4
      generic map (INIT => X"E55A") 
       port map ( O=>nx36612z79, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z43706 : LUT4
      generic map (INIT => X"A558") 
       port map ( O=>nx36612z78, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z1435 : LUT3
      generic map (INIT => X"3A") 
       port map ( O=>nx36612z77, I0=>nx36612z78, I1=>nx36612z79, I2=>
      Rom_Address(1));
   ix36612z1382 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx36612z76, I0=>Rom_Address(3), I1=>Rom_Address(0));
   ix36612z15355 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx36612z75, I0=>nx36612z76, I1=>Rom_Address(4), I2=>
      Rom_Address(2), I3=>Rom_Address(1));
   ix36612z61990 : LUT4
      generic map (INIT => X"ECC8") 
       port map ( O=>nx36612z74, I0=>Rom_Address(3), I1=>Rom_Address(2), I2
      =>Rom_Address(1), I3=>Rom_Address(0));
   ix36612z1379 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx36612z73, I0=>nx36612z74, I1=>Rom_Address(4));
   ix36612z1396 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z68, I0=>Rom_Address(4), I1=>nx36612z69, I2=>
      nx36612z70);
   ix36612z2651 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z67, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z68, I3=>Rom_Address(4));
   ix36612z1392 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z63, I0=>Rom_Address(4), I1=>nx36612z64, I2=>
      nx36612z65);
   ix36612z2647 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z62, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z63, I3=>Rom_Address(4));
   ix36612z1388 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z58, I0=>Rom_Address(4), I1=>nx36612z59, I2=>
      nx36612z60);
   ix36612z2643 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z57, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z58, I3=>Rom_Address(4));
   ix36612z1384 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z53, I0=>Rom_Address(4), I1=>nx36612z54, I2=>
      nx36612z55);
   ix36612z2639 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z52, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z53, I3=>Rom_Address(4));
   ix36612z1380 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z48, I0=>Rom_Address(4), I1=>nx36612z49, I2=>
      nx36612z50);
   ix36612z2635 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z47, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z48, I3=>Rom_Address(4));
   ix36612z1376 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z43, I0=>Rom_Address(4), I1=>nx36612z44, I2=>
      nx36612z45);
   ix36612z2631 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z42, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z43, I3=>Rom_Address(4));
   ix36612z1372 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z38, I0=>Rom_Address(4), I1=>nx36612z39, I2=>
      nx36612z40);
   ix36612z2627 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z37, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z38, I3=>Rom_Address(4));
   ix36612z1368 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z33, I0=>Rom_Address(4), I1=>nx36612z34, I2=>
      nx36612z35);
   ix36612z1665 : LUT4
      generic map (INIT => X"0145") 
       port map ( O=>nx36612z32, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx37122z1, I3=>nx42257z1);
   ix36612z1989 : LUT4
      generic map (INIT => X"028A") 
       port map ( O=>nx36612z31, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx47392z1, I3=>nx52527z1);
   ix36612z5434 : LUT4
      generic map (INIT => X"1000") 
       port map ( O=>nx36612z30, I0=>nx36612z31, I1=>nx36612z32, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z22857 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z29, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx63575z1, I3=>nx58440z1);
   ix36612z44376 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z28, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx53305z1, I3=>nx17366z1);
   ix36612z4919 : LUT4
      generic map (INIT => X"0E00") 
       port map ( O=>nx36612z27, I0=>nx36612z28, I1=>nx36612z29, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z22854 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z26, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx22501z1, I3=>nx43819z1);
   ix36612z44373 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z25, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx38684z1, I3=>nx31987z1);
   ix36612z1556 : LUT4
      generic map (INIT => X"00E0") 
       port map ( O=>nx36612z24, I0=>nx36612z25, I1=>nx36612z26, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z22851 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z23, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx18579z1, I3=>nx13444z1);
   ix36612z44370 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z22, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx8309z1, I3=>nx3174z1);
   ix36612z1343 : LUT4
      generic map (INIT => X"000E") 
       port map ( O=>nx36612z21, I0=>nx36612z22, I1=>nx36612z23, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z1329 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx36612z20, I0=>nx36612z21, I1=>nx36612z24, I2=>
      nx36612z27, I3=>nx36612z30);
   ix36612z22847 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z19, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx34639z1, I3=>nx39774z1);
   ix36612z44366 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z18, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx44909z1, I3=>nx50044z1);
   ix36612z4909 : LUT4
      generic map (INIT => X"0E00") 
       port map ( O=>nx36612z17, I0=>nx36612z18, I1=>nx36612z19, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z42924 : LUT4
      generic map (INIT => X"A280") 
       port map ( O=>nx36612z15, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx36612z16, I3=>nx42426z1);
   ix36612z22843 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z12, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx36612z13, I3=>nx36612z14);
   ix36612z58666 : LUT4
      generic map (INIT => X"E000") 
       port map ( O=>nx36612z11, I0=>nx36612z12, I1=>nx36612z15, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z22841 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z10, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx57662z1, I3=>nx62797z1);
   ix36612z44360 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z9, I0=>Rom_Address(1), I1=>Rom_Address(0), I2=>
      nx2396z1, I3=>nx36032z1);
   ix36612z1333 : LUT4
      generic map (INIT => X"000E") 
       port map ( O=>nx36612z8, I0=>nx36612z9, I1=>nx36612z10, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z22838 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z7, I0=>Rom_Address(1), I1=>Rom_Address(0), I2=>
      nx55179z1, I3=>nx60314z1);
   ix36612z44357 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z4, I0=>Rom_Address(1), I1=>Rom_Address(0), I2=>
      nx36612z5, I3=>nx36612z6);
   ix36612z1540 : LUT4
      generic map (INIT => X"00E0") 
       port map ( O=>nx36612z3, I0=>nx36612z4, I1=>nx36612z7, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z1316 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx36612z2, I0=>nx36612z3, I1=>nx36612z8, I2=>nx36612z11, 
      I3=>nx36612z17);
   ix36612z2597 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z1, I0=>nx36612z2, I1=>nx36612z20, I2=>
      nx36612z33, I3=>Rom_Address(4));
   ps_vcc : VCC port map ( P=>nx23714z1);
   CLK_ibuf : BUFGP port map ( O=>CLK_int, I=>CLK);
end A ;

