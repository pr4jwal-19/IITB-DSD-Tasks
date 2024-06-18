library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity PrimeDetector is
 
	port ( X3, X2, X1, X0 : in std_logic;
		out1 : out std_logic );

end entity PrimeDetector;

architecture struct of PrimeDetector is 

	--signal sig1,sig2,sig3,sig4,sig5,sig6,sig7:std_logic;
	signal sig1, sig2, sig3, sig4, sig5, sig6, sig7 : std_logic;
	
begin 

		inst1: INVERTER port map (A => X3, Y => sig1);	
		inst2: AND_2 port map (A => sig1, B => X1, Y => sig2);
		inst3: INVERTER port map (A => X2, Y => sig3);
		inst4: OR_2 port map (A => sig3, B => X0, Y => sig4);
		inst5: AND_2 port map (A => sig2, B => sig4, Y => sig5);
		inst6: XOR_2 port map (A => X2, B => X1, Y => sig6);
		inst7: AND_2 port map (A => X0, B => sig6, Y => sig7);
		inst8: OR_2 port map (A => sig5, B => sig7, Y => out1);
		

end architecture ;