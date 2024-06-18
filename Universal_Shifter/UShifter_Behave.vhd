library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.Gates.all;

entity UShifter_Behave is
	
	port ( A : in std_logic_vector(7 downto 0);
			 B : in std_logic_vector(2 downto 0);
			 L : in std_logic;
			 S : out std_logic_vector(7 downto 0)
	);
	
end entity;

architecture behave of UShifter_Behave is
	
	begin 
		
		process(A, B, L)
		
		variable tempB : unsigned(7 downto 0):=(others => '0');
		variable shiftedOp : std_logic_vector(7 downto 0):=(others => '0');
		
			begin

				tempB := to_integer(unsigned(B));
				
				shiftedOp := A;
				
				-- no shift
				if tempB = 0 then 
					
					S <= shiftedOp;
				
				end if;
				
				for i in 1 to 7 loop
				
				-- rigth shift
				if L = '0' then
					
					
					
					
					
					
				