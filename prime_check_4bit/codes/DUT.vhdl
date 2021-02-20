-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0)
			);
end entity;

architecture DutWrap of DUT is

component prime_check_4_bit is
   port(
		inputs: in std_logic_vector(3 downto 0);
		output: out std_logic
		);
end component;

	begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: prime_check_4_bit 
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					inputs(3)				=> input_vector(3),
					inputs(2)				=> input_vector(2),
					inputs(1)				=> input_vector(1),
					inputs(0)				=> input_vector(0),
					output 					=> output_vector(0));
end DutWrap;

