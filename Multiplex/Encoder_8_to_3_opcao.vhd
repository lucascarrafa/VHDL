library IEEE;
use IEEE.Std_Logic_1164.all;

entity Encoder_8_to_3_opcao is
port (
	I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
);
end Encoder_8_to_3_opcao;

architecture teste of Encoder_8_to_3_opcao is
begin
	Y(0) <= I(1) OR I(3) OR I(5) OR I(7);
	Y(1) <= I(2) OR I(3) OR I(6) OR I(7);
	Y(2) <= I(4) OR I(5) OR I(6) OR I(7);
end teste;
