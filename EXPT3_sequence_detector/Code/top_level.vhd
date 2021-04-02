
library ieee;
use ieee.std_logic_1164.all;

entity top_level is
port(	x: 	in std_logic_vector(1 downto 0);
		clk:	in std_logic;
		y:	 	out std_logic
		);
end entity top_level;

architecture struct of top_level is
	component dFlipFlop is
		port(	resetn, inp, clock : in std_logic;
				y : out std_logic);
	end component;
	component combinational_circuit is
		port(	w: in std_logic_vector(1 downto 0);
				q: in std_logic_vector(2 downto 0);
				q1: out std_logic_vector(2 downto 0);
				y:	 out std_logic
				);
end component;
signal q: std_logic_vector(2 downto 0);
signal q1: std_logic_vector(2 downto 0);
begin
   dFF2: dFlipFlop
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					resetn 	=> x(1),
					inp	=> q1(2),
					clock 	=> clk,
					y 	=>  q(2)
					);

   dFF1: dFlipFlop
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					resetn 	=> x(1),
					inp	=> q1(1),
					clock 	=> clk,
					y 	=>  q(1)
					);

   dFF0: dFlipFlop
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					resetn 	=> x(1),
					inp	=> q1(0),
					clock 	=> clk,
					y 	=>  q(0)
					);
	combo: combinational_circuit
			port map (
					-- order of inputs {input_1,input_2,input_carry}					
					w 	=> x,
					q	=> q,
					q1 => q1,
					y 	=> y
					);
	


end struct;