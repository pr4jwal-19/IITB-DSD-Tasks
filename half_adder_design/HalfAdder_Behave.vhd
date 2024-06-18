library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity HalfAdder_Behave is
	
	port( A, B: in std_logic;
			Sum, Carry : out std_logic );
	
end entity;

architecture struct of HalfAdder_Behave is

	--signal sig1, sig2, sig3 : std_logic;
	
begin 

p1: process( A , B ) 

begin 
	
	if ( A <= '0' and B <= '0' ) then
	Sum <= '0';
	Carry <= '0';
	elsif ( A <= '0' and B <= '1' ) then 
	Sum <= '1';
	Carry <= '0';
	elsif ( A <= '1' and B <= '0' ) then 
	Sum <= '1';
	Carry <= '0';
	elsif ( A <= '1' and B <= '1' ) then
	Sum <= '0';
	Carry <= '1';
	
	end if;

end process p1;

end architecture;
