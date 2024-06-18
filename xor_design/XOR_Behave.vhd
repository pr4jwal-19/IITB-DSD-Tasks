library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity XOR_Behave is
	
	port( A, B: in std_logic;
			Y : out std_logic );
	
end entity;

architecture struct of XOR_Behave is

	--signal sig1, sig2, sig3 : std_logic;
	
begin 

p1: process( A , B ) 

begin 

	if ( A <= '0' and B <= '0' ) then
	Y <= '0';
	elsif ( A <= '0' and B <= '1' ) then
	Y <= '1';
	elsif ( A <= '1' and B <= '0' ) then
	Y <= '1';
	else
	Y <= '0';
	
	end if;

end process p1;

end architecture;
