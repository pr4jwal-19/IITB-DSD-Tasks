--MUX4X1_4BitIp
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity MUX4X1_4BitIp is
	
	port ( D : in std_logic_vector(3 downto 0);
			 C : in std_logic_vector(3 downto 0);
			 B : in std_logic_vector(3 downto 0);
			 A : in std_logic_vector(3 downto 0);
			 S : in std_logic_vector(1 downto 0);
			 Y : out std_logic_vector(3 downto 0) );

end entity;

architecture struct of MUX4X1_4BitIp is
	
begin 
	
	process ( D, C, B, A, S )
	
		begin
		
			if ( S(1) = '0' and S(0) = '0' ) then
			Y <= A(3) & A(2) & A(1) & A(0);
			elsif ( S(1) = '0' and S(0) = '1' ) then
			Y <= B(3) & B(2) & B(1) & B(0);
			elsif ( S(1) = '1' and S(0) = '0' ) then
			Y <= C(3) & C(2) & C(1) & C(0);
			elsif ( S(1) = '1' and S(0) = '1' ) then
			Y <= D(3) & D(2) & D(1) & D(0);

			
			end if;
		end process;
		
end architecture;