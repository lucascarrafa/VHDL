library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux_0 is
port(
	i0,i1, i2, i3 : in bit;
	s0, s1 : in bit;
	ot : out bit
);
end mux_0;

architecture nivel_logico of mux_0 is
begin
	ot <= (i0 and not s1 and not s0) or (i1 and not s1 and s0) or (i2 and s1 and not s0) or (i3 and s1 and s0);
end nivel_logico;