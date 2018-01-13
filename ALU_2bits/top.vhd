library IEEE;
use ieee.std_logic_1164.all;

entity top is 
port ( a0, a1, a2, a3, b0, b1, b2, b3, s0, s1, s2 : in std_logic;
		 u_o, s_o, f0, f1, f2, f3 : out std_logic
	);
end top;

architecture top_map of top is
signal x3,x2,x1,x0,y3,y2,y1,y0,c0,c1,c2,c3,c4  : std_logic;

component FA
port(
	x : in std_logic;
	y : in std_logic;
	c_in : in std_logic;
	c_out : out std_logic;
	s_out : out std_logic
	);
end component;

component LE
port(
	s0 : in std_logic;
	s1 : in std_logic;
	s2 : in std_logic;
	a : in std_logic;
	b : in std_logic;
	x : out std_logic
	);
end component;

component AE
port(
	s2 : in std_logic;
	s1 : in std_logic;
	s0 : in std_logic;
	b : in std_logic;
	y : out std_logic
	);
end component;

component CE
port(
	s0 : in std_logic;
	s1 : in std_logic;
	s2 : in std_logic;
	ce_out : out std_logic
	);
end component;

begin 
--para todos LE
L0 : LE port map (s0,s1,s2,a3,b3,x3);
L1 : LE port map (s0,s1,s2,a2,b2,x2);
L2 : LE port map (s0,s1,s2,a1,b1,x1);
L3 : LE port map (s0,s1,s2,a0,b0,x0);
--para todos AE
L4 : AE port map (s2,s1,s0,b3,y3);
L5 : AE port map (s2,s1,s0,b2,y2);
L6 : AE port map (s2,s1,s0,b1,y1);
L7 : AE port map (s2,s1,s0,b0,y0);
--para CE
L8 : CE port map (s0,s1,s2,c0);
--para todos FA
L9 : FA port map (x0,y0,c0,c1,f0);
L10 : FA port map (x1,y1,c1,c2,f1);
L11 : FA port map (x2,y2,c2,c3,f2);
L12 : FA port map (x3,y3,c3,c4,f3);
--
u_o <= c4;
s_o <= c3 xor c4;

end top_map;