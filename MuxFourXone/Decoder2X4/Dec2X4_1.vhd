
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Dec2X4_1 is
 
	port ( in1, in2, en : in std_logic;
		out1, out2, out3, out4 : out std_logic );

end entity;

architecture struct of Dec2X4_1 is 

	--signal sig1,sig2,sig3,sig4,sig5,sig6,sig7:std_logic;
	signal sig1, sig2 : std_logic;
	
begin 

		inst1: INVERTER port map (A => in1, Y => sig1);
		inst2: INVERTER port map (A => in2, Y => sig2);	
		inst3: AND_1 port map (A => sig1, B => sig2, C => en, Y => out1);
		inst4: AND_1 port map (A => sig1, B => in2, C => en, Y => out2);
		inst5: AND_1 port map (A => in1, B => sig2, C => en, Y => out3);
		inst6: AND_1 port map (A => in1, B => in2, C => en, Y => out4);
		

end architecture ;