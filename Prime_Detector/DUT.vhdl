-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component PrimeDetector is
port ( X3, X2, X1, X0 : in std_logic;
		out1 : out std_logic );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: PrimeDetector port map (X3 => input_vector(3), X2 => input_vector(2), X1 => input_vector(1), X0 => input_vector(0),
											out1 => output_vector(0));

end DutWrap;

