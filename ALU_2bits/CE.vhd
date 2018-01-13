library IEEE;
use IEEE.Std_Logic_1164.all;

entity CE is
port(
	s0 : in std_logic;
	s1 : in std_logic;
	s2 : in std_logic;
	ce_out : out std_logic
	);
end CE;

architecture ce_stru of CE is
begin
	ce_out <= (s0 xor s1) and s2;
end ce_stru;
	
	