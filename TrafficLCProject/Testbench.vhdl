LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_textio.all;
USE std.textio.all;

ENTITY Testbench IS
END Testbench;

architecture test of Testbench is

    signal clock : std_logic := '0';
    signal rst: std_logic;
    signal Y   : std_logic_vector(7 downto 0);

	component ControllerLC is
		port (clock, rst : in std_logic;		
		      Y : out std_logic_vector(7 downto 0));

	end component;
	
    begin

        add_instance : ControllerLC port map (clock, rst, Y);

        rst <= '1', '0' after 10 ns;
		
        process 
            begin
				
                wait for 10 ns;
						clock <= '1';
           
                wait for 10 ns;
						clock <= '0';  
        end process;

end test;