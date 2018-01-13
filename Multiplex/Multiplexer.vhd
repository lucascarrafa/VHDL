library IEEE;
use IEEE.std_logic_1164.all;

entity Multiplexer is 
port(
	S : in std_logic_vector(1 downto 0);
	D0, D1, D2, D3 : in std_logic_vector(7 downto 0);
	Y : out std_logic_vector(7 downto 0)
);
end Multiplexer;

architecture Behavioral of Multiplexer is
begin
	process(S, D0, D1, D2, D3)
	begin
		case S is
			when "00" => Y <= D0;
			when "01" => Y <= D1;
			when "10" => Y <= D2;
			when "11" => Y <= D3;
			when others => Y <= (others => 'U');
		end case;
	end process;
end Behavioral;