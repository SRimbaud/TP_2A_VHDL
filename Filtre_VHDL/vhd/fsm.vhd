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
	type state is (root,boucle,update_dl,l_buff,start_dac,over_dac,start_adc,over_adc);
	signal c_state,n_state : state;
	signal c_address,n_address : unsigned (4 downto 0);

begin
    P_STATE: process(clk,reset)
    begin

	    if reset = '1' then
		c_state <= root;
		c_address <= (others => '0');
	    elsif (clk'event and clk = '1') then
		c_state <= n_state; 
		c_address <= n_address;
	    end if;


    end process P_STATE;

    Rom_Address <= std_logic_vector(c_address);
    Delay_Line_Address <= std_logic_vector(c_address);

    P_FSM: process(c_state, c_address)
    begin
	    -- Init variables 

	    Delay_Line_sample_shift <= '0' ;
	    Accu_ctrl <= '0' ;
	    Buff_OE <= '0' ;
	    ADC_Convstb <= '1' ;
	    ADC_Rdb <= '1';
	    ADC_csb <= '0' ;
	    DAC_WRb <= '1';
	    DAC_csb <= '0' ;
	    LDACb <= '0' ;
	    CLRb <= '1' ;


	    case c_state is
		    when root => -- Cas du reset
			    n_address <= (others => '0' );
			    CLRb <= '0' ;
			    n_state <= boucle ;
		    when boucle =>
			    CLRb <= '1';
			    n_address <= c_address + 1 ;

			    if c_address = 3 then
				    n_state <= start_adc ;
			    elsif c_address = 30 then
				    n_state <= update_dl ;
			    else 
				    n_state <= boucle ;
			    end if;

		    when start_adc => 
			    ADC_Convstb <= '0' ;
			    DAC_WRb <= '1' ; -- Décalage d'un cycle d'horloge
			    n_address <= c_address + 1 ;
			    n_state <= over_adc ;

		    when over_adc =>
			    ADC_Convstb <= '1';
			    n_address <= c_address + 1 ;
			    n_state <= boucle ;

		    when update_dl =>
			    Delay_Line_sample_shift <= '1';
			    ADC_Rdb <= '0';
			    n_address <= (others => '0'); 
			    n_state <= l_buff ;

		    when l_buff =>
			    Delay_Line_sample_shift <= '0' ;
			    ADC_Rdb <= '1' ;
			    Accu_ctrl <= '1';
			    Buff_OE <= '1';
			    n_address <= c_address + 1;
			    n_state <= start_dac ;

		    when start_dac =>
			    n_address <= c_address + 1 ; 
			    Accu_ctrl <= '0' ;
			    Buff_OE <= '0' ;
			    n_state <= over_dac ;

		    when over_dac =>
			    DAC_WRb <= '0'; -- ne se met pas à zéro
			    n_address <= c_address + 1 ; 
			    n_state <= start_adc ;

	    end case ;



    end process P_FSM;
	    
end A;
