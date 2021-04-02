
library ieee;
use ieee.std_logic_1164.all;

entity combinational_circuit is
port(	w: in std_logic_vector(1 downto 0);
		q: in std_logic_vector(2 downto 0);
		q1: out std_logic_vector(2 downto 0);
		y:	 out std_logic
		);
end entity combinational_circuit;

architecture struct of combinational_circuit is
begin
q1(2) <= (not w(1)) and ((not(w(0)) and q(1)) or (w(0) and q(2) and (not q(1))) );
q1(1) <= (not w(1)) and w(0);
q1(0) <= (not w(1)) and (((not w(0)) and (not q(1))) or ((q(0)) and (not q(1))) or ((q(2)) and (not w(0))));

y 		<= (not w(1)) and ((w(0) and q(2) and (not q(1)) and q(0)) or ((not w(0)) and q(1) and q(2)));
end struct;