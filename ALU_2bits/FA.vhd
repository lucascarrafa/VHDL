library IEEE;
use IEEE.Std_Logic_1164.all;

entity FA is
port(
	x : in std_logic;
	y : in std_logic;
	c_in : in std_logic;
	c_out : out std_logic;
	s_out : out std_logic
	);
end FA;

architecture fa_stru of FA is
	signal aux, aux1, aux2 : std_logic;
begin
	aux <= x xor y;
	aux1 <= x and y;
	s_out <= aux xor c_in;
	aux2 <= aux and c_in;
	c_out <= aux2 or aux1;
end fa_stru;
	
	