-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
        output_vector: out std_logic_vector(7 downto 0)
			);
end entity;

architecture DutWrap of DUT is

component mu1 is
port (
	A: in std_logic_vector(3 downto 0);
	B: in std_logic_vector(3 downto 0);
	M: out std_logic_vector(7 downto 0)
);
end component;

	begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: mu1  
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					A(3 downto 0)		=> input_vector(7 downto 4),					
					B(3 downto 0)		=> input_vector(3 downto 0),
					-- order of outputs {output_carry,output_sum}
					M(7 downto 0)		=> output_vector(7 downto 0)
					);
end DutWrap;

