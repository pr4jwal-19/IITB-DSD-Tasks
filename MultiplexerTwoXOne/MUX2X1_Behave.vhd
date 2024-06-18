library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity MUX2X1_Behave is

	port ( D0, D1, S : in std_logic;
			 Y : out std_logic );
			 
end entity;

architecture struct of MUX2X1_Behave is
	
begin

	process( D0, D1, S )
	
		begin
			
			if ( S <= '0' ) then
			Y <= D0;
			elsif ( S <= '1' ) then
			Y <= D1;
			
			end if;
		
		end process;

end architecture;
