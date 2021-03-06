-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity mux is
   port(
		control_signals:in std_logic_vector(2 downto 1);
		inputs: in std_logic_vector(4 downto 1);
		output: out std_logic
		);
end entity;

architecture structural of mux is
signal interconnect: std_logic_vector(4 downto 1);
begin
interconnect(1) <= (not control_signals(2)) and (not control_signals(1)) and inputs(1);
interconnect(2) <= (not control_signals(2)) and (control_signals(1)) and inputs(2);
interconnect(3) <= (control_signals(2)) and (not control_signals(1)) and inputs(3);
interconnect(4) <= (control_signals(2)) and (control_signals(1)) and inputs(4);

output <= interconnect(1) or interconnect(2) or interconnect(3) or interconnect(4);
end structural;

