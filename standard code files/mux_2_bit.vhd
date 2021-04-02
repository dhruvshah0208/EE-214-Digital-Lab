-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity mux_2_bit is
   port(
		A: in std_logic;
		B: in std_logic;
		control:in std_logic;
		output: out std_logic
		);
end entity;

architecture structural of mux_2_bit is
begin
output <= (A and control) XOR (B) XOR (B and control);
end structural;

