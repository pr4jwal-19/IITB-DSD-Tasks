library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Dec3X8_1 is
 
	port ( A1, A0, A2, EN : in std_logic;
		out1, out2, out3, out4, out5, out6, out7, out8 : out std_logic );

end entity;

architecture struct of Dec3X8_1 is 

	--signal sig1,sig2,sig3,sig4,sig5,sig6,sig7:std_logic;
	signal sig1, sig2, sig3 : std_logic;
	
begin 

		inst1: INVERTER port map (A => A2, Y => sig1);	
		inst2: AND_2 port map (A => A2, B => EN, Y => sig2);
		inst3: AND_2 port map (A => EN, B => sig1, Y => sig3);
		inst4: DEC2X4 port map ( in1 => A1, in2 => A0, EN => sig2, Y1 => out5, Y2 => out6, Y3 => out7, Y4 => out8 );
		inst5: DEC2X4 port map ( in1 => A1, in2 => A0, EN => sig3, Y1 => out1, Y2 => out2, Y3 => out3, Y4 => out4 );
		

end architecture ;