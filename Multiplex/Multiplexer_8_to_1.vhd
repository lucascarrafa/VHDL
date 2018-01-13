library IEEE;
use IEEE.std_logic_1164.all;

entity Multiplexer_8_to_1 is 
port(
	S : in std_logic_vector(2 downto 0);
	D0, D1, D2, D3, D4, D5, D6, D7 : in std_logic_vector(3 downto 0);
	Y : out std_logic_vector(3 downto 0)
);
end Multiplexer_8_to_1;

architecture Behavioral of Multiplexer_8_to_1 is
begin
	process(S, D0, D1, D2, D3, D4, D5, D6, D7)
	begin
		case S is
			when "000" => Y <= D0;
			when "001" => Y <= D1;
			when "010" => Y <= D2;
			when "011" => Y <= D3;
			when "100" => Y <= D4;
			when "101" => Y <= D5;
			when "110" => Y <= D6;
			when "111" => Y <= D7;
			when others => Y <= (others => 'U');
		end case;
	end process;
end Behavioral;