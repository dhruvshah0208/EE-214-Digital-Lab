
library ieee;
use ieee.std_logic_1164.all;
entity ripple_carry_adder is
   port(input_1: in std_logic_vector(3 downto 0);
		  input_2: in std_logic_vector(3 downto 0);
        input_carry: in std_logic;	
		  output_sum: out std_logic_vector(3 downto 0);
		  output_carry: out std_logic);
end entity;

architecture structural of ripple_carry_adder is
   component Full_Adder is
     port(A,B,Cin: in std_logic;
         	S,Cout: out std_logic);
   end component;
signal intermediate_carry : std_logic_vector (4 downto 0); -- 3 intermediate carry required
begin
   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   intermediate_carry(0) <= input_carry;
   G_1 : for i in 0 to 3 generate
         FA :
         Full_Adder port map
              (input_1(i),input_2(i),intermediate_carry(i),output_sum(i),intermediate_carry(i+1));
         end generate;
	output_carry <= intermediate_carry(4);
	
end structural;

