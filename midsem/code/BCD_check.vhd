-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity BCD_check is
   port(
		inputs: in std_logic_vector(4 downto 1);
		output: out std_logic
		);
end entity;

architecture structural of BCD_check is
begin
output <= (not inputs(4)) or ((not inputs(3)) and (not inputs(2)));
end structural;

