LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Encoder_8_to_3 IS PORT(
	E: IN STD_LOGIC; -- enable
	A: IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- 3 bit address
	Y: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)); -- data bus output
END Encoder_8_to_3;
ARCHITECTURE Behavioral OF Encoder_8_to_3 IS
BEGIN
 PROCESS (E, A)
 BEGIN
	 IF (E = '0') THEN -- disabled
		Y <= (OTHERS => '0'); -- 8-bit vector of 0
	 ELSE
		 CASE A IS -- enabled
			 WHEN "00000001" => Y <= "000";
			 WHEN "00000010" => Y <= "001";
			 WHEN "00000100" => Y <= "010";
			 WHEN "00001000" => Y <= "011";
			 WHEN "00010000" => Y <= "100";
			 WHEN "00100000" => Y <= "101";
			 WHEN "01000000" => Y <= "110";
			 WHEN "10000000" => Y <= "111";
			 WHEN OTHERS => NULL;
		 END CASE;
	 END IF;
 END PROCESS;
END Behavioral; 