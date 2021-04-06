-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   
component music is
generic(
	n:integer range 0 to 100 := 4);
port (toneOut : out std_logic;
	clk_50, resetn : in std_logic;
	LED : out std_logic_vector(7 downto 0));
	
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   instance: music
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					x0		=> input_vector(0),
					x1		=> input_vector(1),
					x2		=> input_vector(2),
					x3		=> input_vector(3),
					x4		=> input_vector(4),
					x5		=> input_vector(5),
					x6		=> input_vector(6),
					x7		=> input_vector(7),
					-- order of outputs {output_carry,output_sum}
					y0 	=> output_vector(0),
					y1 	=> output_vector(1),
					y2 	=> output_vector(2),
					y3 	=> output_vector(3));
end DutWrap;

