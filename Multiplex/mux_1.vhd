library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux_1 is
port (
	i0, i1, i2, i3 : in bit;
	s0, s1 : in bit;
	ot : out bit
);
end mux_1;

architecture teste of mux_1 is
	signal int0, int1, int2, int3 : bit;
begin

ot <= i0 when s1='0' and s0='0' else
		i0 when s1='0' and s0='1' else
		i0 when s1='1' and s0='0' else
		i3;
end teste;