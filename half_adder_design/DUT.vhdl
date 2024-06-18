
library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
        output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
    -- Instantiate your own top Module component in place of ALU_1
    
    component Half_Adder_1 is
        port(in1: in std_logic; 
             in2: in std_logic; 
             sum: out std_logic; 
             carry: out std_logic);
    end component Half_Adder_1;

begin

    -- input/output vector element ordering is critical,
    -- and must match the ordering in the trace file!
    add_instance: Half_Adder_1 
        port map (
            in1 => input_vector(1), 
            in2 => input_vector(0),
            sum => output_vector(1), 
            carry => output_vector(0)
        );

end DutWrap;
