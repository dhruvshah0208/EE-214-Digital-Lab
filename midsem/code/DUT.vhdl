-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(5 downto 0));
end entity;

architecture DutWrap of DUT is
component toplevel is
   port(
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0); 
		Y : out std_logic_vector(5 downto 0)
		);
end component;
begin
	add_instance: toplevel 
			port map (
					A			=> input_vector(7 downto 4),
					B			=> input_vector(3 downto 0),
					Y		 	=> output_vector(5 downto 0)
					);
end DutWrap;

