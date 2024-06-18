library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_2 is

	port ( A : in std_logic_vector(3 downto 0);
			 B : in std_logic_vector(3 downto 0);
			 Y : out std_logic_vector(5 downto 0)
			);
			
end entity;

architecture behave of ALU_2 is

	signal sel : std_logic_vector(1 downto 0);

	function max ( A : in std_logic_vector(3 downto 0); B : in std_logic_vector(3 downto 0) )
	
	return std_logic_vector is
		
		variable numA, numB : integer;
		variable maxNum : std_logic_vector(3 downto 0):=(others => '0');
		
		begin
		
		numA := to_integer(unsigned(A));
		numB := to_integer(unsigned(B));
		
		if( numA > numB ) then
			maxNum := std_logic_vector(to_unsigned(numA,A'length));
		elsif ( numB > numA ) then
			maxNum := std_logic_vector(to_unsigned(numB,B'length));
		else maxNum := "0000";
		
		end if;
		
		return maxNum;
		
	end max;
	
	function and_fn ( A : in std_logic_vector(3 downto 0); B : std_logic_vector(3 downto 0) )
	
	return std_logic_vector is
		
		variable and_op : std_logic_vector(3 downto 0);
		
		begin
			
			and_op := A and B;
			
		return and_op;
	
	end and_fn;
	
	function rotate ( A : in std_logic_vector(3 downto 0); B : std_logic_vector(3 downto 0) )
	
	return std_logic_vector is
		
		variable rotatedOp : std_logic_vector(3 downto 0):=(others => '0');
		
		begin
		
			if ( B(3) = '0' ) then
				
				if ( B(1 downto 0) = "00" ) then
					
					rotatedOp := A(3 downto 0);
					
				elsif ( B(1 downto 0) = "01" ) then
			
					rotatedOp := A(2 downto 0) & A(3);
				
				elsif ( B(1 downto 0) = "10" ) then
					
					rotatedOp := A(1 downto 0) & A(3 downto 2);
				
				elsif ( B(1 downto 0) = "11" ) then
					
					rotatedOp := A(0) &  A(3 downto 1);
					
				end if;
			
			else
				
				if ( B(1 downto 0) = "00" ) then
					
					rotatedOp := A(3 downto 0);
					
				elsif ( B(1 downto 0) = "01" ) then
			
					rotatedOp := A(0) & A(3 downto 1);
				
				elsif ( B(1 downto 0) = "10" ) then
					
					rotatedOp := A(1 downto 0) & A(3 downto 2);
				
				elsif ( B(1 downto 0) = "11" ) then
					
					rotatedOp := A(2 downto 0) & A(3);
					
				end if;
			
			end if;
		
		return rotatedOp;
	
	end rotate;
	
	function Equivalent ( A : in std_logic_vector(3 downto 0); B : std_logic_vector(3 downto 0) )
	
	return std_logic_vector is
		
		variable EquiOp : std_logic_vector(3 downto 0):=(others => '0');
		
		begin
		
			if ( A = B ) then
				
				EquiOp := A;
			
			else EquiOp := "0000";
			
			end if;
			
		return EquiOp;
		
	end Equivalent;
	
	begin
		
		ALU1: process(A , B, sel)
			
			begin
				
				sel <= B(3)&A(3) ;
				
				case (sel) is
					
					when "00" =>
						
						Y <= "00" & max(A,B);
						
					when "01" =>
						
						Y <= "00" & and_fn(A,B);
						
					when "10" =>
						
						Y <= "00" & rotate(A,B);
						
					when "11" =>
						
						Y <= "00" & Equivalent(A,B);
						
					when others =>
						
						Y <= "000000";
				
				end case;
			
		end process;
			
end architecture;
			
			