library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


library work;
use work.Gates.all;

entity DEC3X8_Behave is
	
	port( D : in std_logic_vector(2 downto 0);
			E : in std_logic;
			Y : out std_logic_vector(7 downto 0)
	);
	
end entity;

architecture struct of DEC3X8_Behave is
	
begin

	process ( D, E )
	
	variable checkDigit : unsigned(2 downto 0);
		
		begin
		
		checkDigit := unsigned(D);
		
		if ( E = '1' and checkDigit = 0 ) then
		Y <= "00000001";
		elsif ( E = '1' and checkDigit = 1 ) then
		Y <= "00000010";
		elsif ( E = '1' and checkDigit = 2 ) then
		Y <= "00000100";
		elsif ( E = '1' and checkDigit = 3 ) then
		Y <= "00001000";
		elsif ( E = '1' and checkDigit = 4 ) then
		Y <= "00010000";
		elsif ( E = '1' and checkDigit = 5 ) then
		Y <= "00100000";
		elsif ( E = '1' and checkDigit = 6 ) then
		Y <= "01000000";
		elsif ( E = '1' and checkDigit = 7 ) then
		Y <= "10000000";
		elsif ( E = '0' ) then
		Y <= "00000000";
		
		end if;
	
	end process;

end architecture;