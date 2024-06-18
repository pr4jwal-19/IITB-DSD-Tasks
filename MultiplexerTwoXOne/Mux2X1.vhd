library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Mux2X1 is

	port( s,l0,l1 : in std_logic;
		y : out std_logic );

end entity;

architecture struct of Mux2X1 is

	signal sig1, sig2, sig3: std_logic;
	
begin 

	inst1: INVERTER port map(A => s, Y => sig1);
	inst2: AND_2 port map(A => l0, B => sig1, Y => sig2);
	inst3: AND_2 port map(A => s, B => l1 , Y => sig3);
	inst4: OR_2 port map(A => sig2, B => sig3, Y => y);
	
	
end architecture;