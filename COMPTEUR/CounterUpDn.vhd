library IEEE ;
use IEEE.STD_LOGIC_1164.all ;
use IEEE.NUMERIC_STD.all;

Entity CounterUpDn is
Port	(Reset	:	in STD_LOGIC ;
	 Clk		:	in STD_LOGIC ;
	 UpDn	:	in STD_LOGIC ;
	 Q		: 	out STD_LOGIC_VECTOR(2 downto 0));
End CounterUpDn; 


Architecture A of CounterUpDn is

signal counterint  : unsigned(2 downto 0) ;
Begin
	process(clk, reset)
	Begin

		if reset = '1' then 
			counterint <= "000" ;	
		elsif clk'event and clk = '1' then
			if (UpDn = '1' ) then 
				counterint <= counterint + 1 ;
			elsif ( UpDn = '0' )then 
				counterint <= counterint - 1; 
		        End if;
		End if;
	End process;

	Q <= std_logic_vector(counterint);
End;

