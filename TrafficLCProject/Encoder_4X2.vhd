library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Encoder_4X2 is
    port (
        Color : in std_logic_vector(3 downto 0);  -- 4-bit input representing color
        Dirn : out std_logic_vector(1 downto 0)   -- 2-bit output representing direction
    );
end Encoder_4X2;

architecture Behavioral of Encoder_4X2 is
begin

    process(Color)
	 
    begin
	 
        case Color is
            when "0001" => Dirn <= "00";  -- Red
            when "0010" => Dirn <= "01";  -- Yellow
            when "0100" => Dirn <= "10";  -- Green
				when "1000" => Dirn <= "11";
            when others => Dirn <= "XX"; -- Default (should not occur)
        end case;
		  
    end process;
	 
end Behavioral;