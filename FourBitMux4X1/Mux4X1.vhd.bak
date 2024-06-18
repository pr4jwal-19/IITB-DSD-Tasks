
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Mux4X1 is
 
	port ( a, b, c, d, s1, s0 : in std_logic;
		out1 : out std_logic );

end entity;

architecture struct of Mux4X1 is 

	--signal sig1,sig2,sig3,sig4,sig5,sig6,sig7:std_logic;
	signal sig1, sig2 : std_logic;
	
begin 

		inst1: MUX_2X1 port map ( l0 => a, l1 => b, s => s1, y => sig1 );
		inst2: MUX_2X1 port map ( l0 => c, l1 => d, s => s1, y => sig2 );
		inst3: MUX_2X1 port map ( l0 => sig1, l1 => sig2, s => s0, y => out1 );

end architecture ;