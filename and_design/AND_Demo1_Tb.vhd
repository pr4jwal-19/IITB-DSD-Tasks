library ieee;
use ieee.std_logic_1164.all;

entity AND_Demo1_Tb is
end AND_Demo1_Tb;

architecture Behavioral of AND_Demo1_Tb is
    -- Component declaration for the 4-bit Adder
    component AND_Demo1
        port (in1,in2: in std_logic;
	out1:out std_logic);
    end component;

    -- Signals to connect to the DUT (Device Under Test)
    signal sig1,sig2:std_logic;

begin
    -- Instantiate the 4-bit Adder
    dut: AND_Demo1 port map (in1 => A, in2 => B, out1 => Cout);

stim_proc: process
begin
-- Test case 1: 2 + 3 + 1
		A <= "0010"; B <= "0011"; Cin <= '1';
		wait for 10 ns;
		
		-- output is wrong
		assert (Sum = "0110" and Cout = '1') report "Test case 1 failed" severity error;
		-- output is correct 
		if (Sum = "0110" and Cout = '1') then
			assert false report "Test case 1 success" severity note;
		end if;
		

-- Test case 2: 1 + 1 + 0
		A <= "0001"; B <= "0001"; Cin <= '0';
		wait for 10 ns;
		-- output is wrong
		assert (Sum = "0010" and Cout = '0') report "Test case 2 failed" severity error;
		-- output is correct 
		if (Sum = "0010" and Cout = '0') then
			assert false report "Test case 2 success" severity note;
		end if;

-- Test case 3: 7 + 8 + 0
		A <= "0111"; B <= "1000"; Cin <= '0';
		wait for 10 ns;
		-- output is wrong
		assert (Sum = "1111" and Cout = '0') report "Test case 3 failed" severity error;
		-- output is correct 
		if (Sum = "1111" and Cout = '0') then
			assert false report "Test case 3 success" severity note;
		end if;

-- Test case 4: 15 + 1 + 0
		A <= "1111"; B <= "0001"; Cin <= '0';
		wait for 10 ns;
		-- output is wrong
		assert (Sum = "0000" and Cout = '1') report "Test case 4 failed" severity error;
		-- output is correct 
		if (Sum = "0000" and Cout = '1') then
			assert false report "Test case 4 success" severity note;
		end if;

-- Test case 5: 15 + 15 + 1
		A <= "1111"; B <= "1111"; Cin <= '1';
		wait for 10 ns;
		-- output is wrong
		assert (Sum = "1111" and Cout = '1') report "Test case 5 failed" severity error;
		-- output is correct 
		if (Sum = "1111" and Cout = '1') then
			assert false report "Test case 5 success" severity note;
		end if;

-- End of test
      wait;
   end process stim_proc;

end Behavioral;