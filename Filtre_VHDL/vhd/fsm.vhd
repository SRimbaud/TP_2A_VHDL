------------------------------FSM.vhd----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity FSM is
  port(Clk                      : in  std_logic;
       Reset                    : in  std_logic;
       ADC_Eocb                 : in  std_logic;
       ADC_Convstb              : out std_logic;
       ADC_Rdb                  : out std_logic;
       ADC_csb                  : out std_logic;
       DAC_WRb                  : out std_logic;
       DAC_csb                  : out std_logic;
       LDACb                    : out std_logic;
       CLRb                     : out std_logic;
       Rom_Address              : out std_logic_vector(4 downto 0);
       Delay_Line_Address       : out std_logic_vector(4 downto 0);
       Delay_Line_sample_shift  : out std_logic;
       Accu_ctrl                : out std_logic;
       Buff_OE                  : out std_logic) ;
end FSM;
-- Machine à états contrôlant le filtre numérique.

architecture A of FSM is
type STATE is (S0,...);
...

begin
    P_STATE: process(.	..)
    ...
    P_FSM: process(Clk)
    begin
	if (Clk'event and clk = '1') then
		if Reset = '1' then
			Rom_Adress <= (others => '0');
			Delay_Line_sample_Adresse <= (others => '0');
			Accu_ctrl = '0';
			Buff_OE = '0';
			CLRb = '0';
		else 
			
			
    
    
    end process P_FSM;
	    
end A;
