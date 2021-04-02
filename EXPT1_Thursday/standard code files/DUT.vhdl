-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(4 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is

component decimal_adjust is
   port(
		inputs	: in std_logic_vector(3 downto 0);
		carry_in	: in std_logic;
		outputs	: out std_logic_vector(3 downto 0);
		carry_out: out std_logic
		);
end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: decimal_adjust 
			port map (					
					inputs		=> input_vector(3 downto 0),
					carry_in		=> input_vector(4),
					outputs		=> output_vector(3 downto 0),
					carry_out	=> output_vector(4)
					);
					
end DutWrap;

