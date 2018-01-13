library IEEE;
use IEEE.Std_Logic_1164.all;

entity LE is
port(
	s0 : in std_logic;
	s1 : in std_logic;
	s2 : in std_logic;
	a : in std_logic;
	b : in std_logic;
	x : out std_logic
	);
end LE;

architecture le_stru of LE is
	signal s0_not, s1_not, s2_not, s_or, s_and4, s_and3, s_and2, s_and1 : std_logic;
begin
	--barra todas as entras s
	s0_not <= not s0;
	s1_not <= not s1;
	s2_not <= not s2;
	--para or
	s_or <= s0 or b;
	--para and 4 entradas
	s_and4 <= (s2_not and s1) and (s_or and (not a));
	--para and 3 entradas
	s_and3 <= (a and b) and s1_not;
	--para and 2
	s_and2 <= a and s0_not;
	--para and 1
	s_and1 <= a and s2;
	--saida
	x <= (s_and1 or s_and2) or (s_and3 or s_and4);
end le_stru;
	