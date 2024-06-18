library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity FA_Behave is
	
	port ( A , B , Cin : in std_logic;
			 S , Cout : out std_logic );

end entity;

architecture struct of FA_Behave is
	
begin
	
	process ( A, B , Cin ) 
	
		begin
		
			if ( A <= '0' and B <= '0' and Cin <= '0' ) then
			S <= '0';
			Cout <= '0';
			elsif ( A <= '0' and B <= '0' and Cin <= '1' ) then
			S <= '1';
			Cout <= '0';
			elsif ( A <= '0' and B <= '1' and Cin <= '0' ) then
			S <= '1';
			Cout <= '0';
			elsif ( A <= '0' and B <= '1' and Cin <= '1' ) then
			S <= '0';
			Cout <= '1';
			elsif ( A <= '1' and B <= '0' and Cin <= '0' ) then
			S <= '1';
			Cout <= '0';
			elsif ( A <= '1' and B <= '0' and Cin <= '1' ) then
			S <= '0';
			Cout <= '1';
			elsif ( A <= '1' and B <= '1' and Cin <= '0' ) then
			S <= '0';
			Cout <= '1';
			elsif ( A <= '1' and B <= '1' and Cin <= '1' ) then
			S <= '1';
			Cout <= '1';
	
			end if;
			
		end process;

end architecture;