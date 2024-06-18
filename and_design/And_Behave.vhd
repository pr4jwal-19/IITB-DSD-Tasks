
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity And_Behave is
	port( A, B : in std_logic;
			Y : out std_logic );
end entity;

architecture struct of And_Behave is

signal sig1 : std_logic;

begin
	
	p1: process ( A, B )
	
	begin
	
	sig1 <= not( A and B );
	Y <= not(sig1 and sig1);
	
	end process p1;
	
end architecture;