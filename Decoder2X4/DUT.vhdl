-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component Dec2X4_1 is
port ( in1, in2, en : in std_logic;
		out1, out2, out3, out4 : out std_logic );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Dec2X4_1 port map (in1 => input_vector(2), in2 => input_vector(1), en => input_vector(0),
											out4 => output_vector(3), out3 => output_vector(2), out2 => output_vector(1), out1 => output_vector(0));

end DutWrap;

