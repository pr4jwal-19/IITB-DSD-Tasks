-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component MUX4X1_Behave is
port( D0, D1, D2, D3, S0, S1 : in std_logic;
			Y : out std_logic );
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX4X1_Behave port map (D0 => input_vector(2), D1 => input_vector(3),
												D2 => input_vector(4), D3 => input_vector(5),
												S0 => input_vector(1), S1 => input_vector(0),
											Y => output_vector(0));

end DutWrap;

