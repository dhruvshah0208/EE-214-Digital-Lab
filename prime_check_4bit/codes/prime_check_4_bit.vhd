-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity prime_check_4_bit is
   port(
		inputs: in std_logic_vector(3 downto 0);
		output: out std_logic
		);
end entity;


architecture structural of prime_check_4_bit is

begin
output <=  ((not inputs(3)) and (not inputs(2)) and inputs(1) ) or 
			  ((not inputs(3)) and inputs(1) and inputs(0)) or
			  ((inputs(2)) and (not inputs(1)) and inputs(0)) or
			  (not (inputs(2)) and (inputs(1)) and inputs(0)) ;
end structural;
