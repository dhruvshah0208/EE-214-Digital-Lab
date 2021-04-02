-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity BCD_addition is
   port(
		A 	: in std_logic_vector(7 downto 0);
		B 	: in std_logic_vector(7 downto 0);
		sum: out std_logic_vector(7 downto 0);
		carry: out std_logic
		);
end entity;

architecture structural of BCD_addition is
   component BCD_check is
   port(
		inputs: in std_logic_vector(4 downto 1);
		output: out std_logic
		);
	end component;
	
begin

end structural;

