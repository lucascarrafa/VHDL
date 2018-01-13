library IEEE;
use IEEE.Std_Logic_1164.all;

entity SO is
port (
	c3 : in std_logic;
	c4 : in std_logic;
	s_o : out std_logic
	);
end SO;

architecture so_estr of SO is
begin
	s_o <= c3 xor c4;
end so_estr;