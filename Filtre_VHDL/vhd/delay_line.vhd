-----------------------------REGDEC.vhd----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DELAY_LINE is
  port(Delay_Line_in            : in  std_logic_vector(7 downto 0);
        Delay_Line_address      : in  std_logic_vector(4 downto 0);
        Delay_Line_sample_shift : in  std_logic;
        RESET                   : in  std_logic;
        CLK                     : in  std_logic;
        Delay_Line_out          : out std_logic_vector(7 downto 0)) ;
end DELAY_LINE;

architecture A of DELAY_LINE is
  type   delay_line is array (0 to 31) of std_logic_vector(7 downto 0);
  signal x : delay_line;
-- x est un vecteur de 32 nombres sur 8 bits.
-- Si reset on met tout le vecteur x à 0.
-- Si Delay_Line_sample_shift on enregistre + décalage
-- Delay_Line_out c'est la valeur de x à l'adresse voulue.
begin
  P_DL : process(CLK)
  begin

    if (CLK'event and CLK = '1') then
      if (RESET = '1') then
        for i in x'range loop
          x(i) <= (others => '0');
        end loop;
      elsif (Delay_Line_sample_shift = '1') then
        x(0) <= Delay_Line_in;
        for i in x'low to (x'high - 1) loop
          x(i+1) <= x(i);
        end loop;
      end if;
    end if;
  end process P_DL;

  Delay_Line_out <= x(to_integer(unsigned(Delay_Line_address)));
end A;
