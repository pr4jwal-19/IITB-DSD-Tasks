library ieee;
 use ieee.std_logic_1164.all;
 
 entity ALU_Logic is
 port (
 A: in std_logic_vector(3 downto 0);
 B: in std_logic_vector(3 downto 0);
 sel: in std_logic_vector(1 downto 0);
 op: out std_logic_vector(7 downto 0)
 );
 
 end ALU_Logic;
 
 architecture a1 of ALU_Logic is
 
	function concat ( A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0) )
		
		return std_logic_vector is
		
		variable concatedOp : std_logic_vector(7 downto 0):=(others => '0');
		
		begin
		
		concatedOp := A & B;
		
		return concatedOp;
		
	end concat;
	
	function sub(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
	
		return std_logic_vector is-- declaring and initializing variables using aggregates
		
			variable diff : std_logic_vector(7 downto 0):=(others =>'0');
			variable carry: std_logic_vector(8 downto 0):=(others =>'0');
			variable a_8bit , b_8bit: std_logic_vector(7 downto 0);
			variable temp_diff : std_logic_vector(7 downto 0):=(others => '0');
			
			begin-- Hint: Use for loop to calculate value of "diff" and "carry" variable-- Use aggregates to assign values to multiple bits
			
			a_8bit := "0000" & A;
			b_8bit := "0000" & B;
			
			carry(0) := '0';
			
			for i in 0 to 7 loop
			
				temp_diff(i) := a_8bit(i) xor b_8bit(i) xor carry(i);
				carry(i+1) := ( not a_8bit(i) and carry(i) ) or ( not a_8bit(i) and b_8bit(i) ) or ( b_8bit(i) and carry(i) );

			end loop;
			
			diff := temp_diff;
			
			return diff;
			
	end sub;
	
	function XOR_AB(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
		
		return std_logic_vector is
			
			variable xoredOp : std_logic_vector(7 downto 0):=(others => '0');
			
			begin
				
				xoredOp := "0000" & (A xor B);
				
				return xoredOp;
				
	end XOR_AB;
	
	function shift(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
		
		return std_logic_vector is
			
			variable shiftedOp : std_logic_vector(3 downto 0):=(others => '0');
			
			begin 
				
				if ( B(3) = '0' ) then
					if( B (1 downto 0) = "00" ) then
						shiftedOp := A(3 downto 0);
					elsif( B (1 downto 0) = "01" ) then
						shiftedOp := A(2 downto 0) & '0';
					elsif( B (1 downto 0) = "10" ) then
						shiftedOp := A(1 downto 0) & "00";
					elsif( B (1 downto 0) = "11" ) then
						shiftedOp := A(0 downto 0) & "000";
					end if;
				
				elsif ( B(3) = '1' ) then
					if( B (1 downto 0) = "00" ) then
						shiftedOp := A(3 downto 0);
					elsif( B (1 downto 0) = "01" ) then
						shiftedOp := "0" & A(3 downto 1);
					elsif( B (1 downto 0) = "10" ) then
						shiftedOp := "00" & A(3 downto 2);
					elsif( B (1 downto 0) = "11" ) then
						shiftedOp := "000" & A(3);
					end if;
					
				end if;
			
			return shiftedOp;
				
			
	end shift;
 
 begin
 
 alu : process( A, B, sel )
		
		begin-- complete VHDL code for various outputs of ALU based on select lines-- Hint: use if/else statement---- sub function usage :-- signal_name <= sub(A,B)-- variable_name := sub(A,B)---- concatenate operator usage:--
 
 
		case sel is
		
			when "00" => 
				
				op <= concat(A, B);
				
			when "01" =>
				
				op <= sub(A,B);
			
			when "10" =>
			
				op <= XOR_AB(A,B);
			
			when "11" =>
				
				op <= "0000" & shift(A,B);
				
			when others =>
				
				op <= "00000000";
				
			end case;
 
 
		end process ;--alu
		
		
 end a1 ;