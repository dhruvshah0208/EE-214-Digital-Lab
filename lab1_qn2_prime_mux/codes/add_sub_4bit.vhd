-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity add_sub_4_bit is -- A+B and A-B
   port(
		input1		: in std_logic_vector(3 downto 0);	-- A
		input2		: in std_logic_vector(3 downto 0);  -- B
		input_carry : in std_logic;
		output_sum	: out std_logic_vector(3 downto 0);
		output_carry: out std_logic		
		);
end entity;

architecture struct of add_sub_4_bit is
	component Full_Adder is
	  port (A, B, Cin: in std_logic; S, Cout: out std_logic);
  end component;

signal intermediate_carry : std_logic_vector (4 downto 0); -- 3 intermediate carry required
signal intermediate_signal: std_logic_vector (3 downto 0);
begin
   intermediate_carry(0) <= input_carry;
   G_1 : for i in 0 to 3 generate
	intermediate_signal(i) <= input2(i) xor input_carry;
         FA :
         Full_Adder port map
              (input1(i),intermediate_signal(i),intermediate_carry(i),output_sum(i),intermediate_carry(i+1));
         end generate;
	output_carry <= intermediate_carry(4);
end struct;

