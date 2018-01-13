library IEEE;
use IEEE.Std_Logic_1164.all;

entity AE is
port(
	s2 : in std_logic;
	s1 : in std_logic;
	s0 : in std_logic;
	b : in std_logic;
	y : out std_logic
	);
end AE;

architecture ae_stru of AE is
	signal s0_not, s1_not, s_and1, s_and2, s_or : std_logic;
begin
	s0_not <= not s0;
	s1_not <= not s1;
	--para and de 4 entradas
	s_and2 <= (s2 and s1_not) and (s0_not and b);
	--para or
	s_or <= (not b) or s1;
	--para and de 3 entradas
	s_and1 <= (s2 and s0) and s_or;
	--saida
	y <= s_and1 or s_and2;
end ae_stru;
	
	