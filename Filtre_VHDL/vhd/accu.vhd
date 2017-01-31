------------------------------ACCU.vhd-----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity ACCU is
  port(Accu_in    : in  std_logic_vector(15 downto 0);
        Accu_ctrl : in  std_logic;
        CLK       : in  std_logic;
        Reset     : in  std_logic;
        Accu_out  : out std_logic_vector(20 downto 0)) ;

end ACCU;
-- Si reset ==> ACCU (accu_out) mis à 0.
-- Si Accu_ctrl ==> on lit accu_in et concaténe avec 6 '0'.
-- Sinon on ajoute Accu_in avec la valeur déjà présente dans l'accu.
architecture A of ACCU is
  signal ACCU : unsigned(20 downto 0);
begin
  
  P_ACCU : process (CLK)
  begin
    if (CLK'event and CLK = '1') then
      if Reset = '1' then
        ACCU <= (others => '0');
      elsif Accu_ctrl = '1' then
        ACCU <= "00000" & unsigned(Accu_in);
      else
        ACCU <= ACCU +("00000" & unsigned(Accu_in));
      end if;
    end if;
  end process P_ACCU;

  Accu_out <= std_logic_vector(ACCU);

end A;
