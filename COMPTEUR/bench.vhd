library IEEE ;
use IEEE.std_logic_1164.ALL ;
use IEEE.NUMERIC_STD.ALL;

entity bench is
end bench;

architecture A of bench is

component CounterUpDn	
	-- Définition composant avec les inputs et output
port(		Reset:	in std_logic ;
		Clk :	in std_logic ;
		UpDn :	in std_logic ;
		Q :	out std_logic_vector(2 downto 0)) ;
end  component;
-- Description des signaux
signal reset	: std_logic ;
signal clk	: std_logic := '0' ;
signal updn	: std_logic := '0' ;
signal s	: std_logic_vector(2 downto 0) ;

begin

U1:	CounterUpDn port map
			(
			Reset => reset,-- décrit comment sont co les blocs
			Clk => clk,
			UpDn => updn,
			Q => s
			-- On a signal Reset co sur reset, signal clk sur Clk ...
			);

-- Generation de l'horloge
clk <= not(clk) after 250 ns;

-- Initialisation par "reset"
reset <=	'0',
		'1' after 100 ns,
		'0' after 400 ns ;

updn <=		'1',
		'0' after 1550 ns,
		'1' after 2800 ns ;

end;

