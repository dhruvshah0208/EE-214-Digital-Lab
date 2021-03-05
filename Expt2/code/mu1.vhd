library ieee;
use ieee.std_logic_1164.all;
entity mu1 is
generic(
	N : integer:=4; -- operand width
	NN : integer:=8 -- result width
);
port (
	A: in std_logic_vector(N-1 downto 0);
	B: in std_logic_vector(N-1 downto 0);
	M: out std_logic_vector((NN)-1 downto 0)
);
end mu1;
architecture beh of mu1 is
	-- unbounded 1D X 1D array declaration
	type pp_type is array (N-1 downto 0) of std_logic_vector(NN-1 downto 0);
	-- adder function adds two 8-bit number. [Usage: var := adder(X,Y) where var is a variable
	-- and X,Y are two 8-bit inputs to be added]
	function adder(A: in std_logic_vector; B: in std_logic_vector)

		return std_logic_vector is
		-- variable declaration
		variable sum : std_logic_vector(NN downto 0):= (others=>'0');
		variable carry : std_logic_vector(NN downto 0):= (others=>'0');
		begin
			-- describing behaviour of adder
			for i in 0 to NN-1 loop
			sum(i) := A(i) xor B(i) xor carry(i);
			carry(i+1) := (A(i) and B(i)) or (carry(i) and (A(i) xor B(i)));
			end loop;
			sum(NN):=carry(NN);
			return sum;
			end adder;
		
	begin	
		multiplier : process(A, B)

		variable result : std_logic_vector(NN downto 0):= (others=>'0');		
		variable arr : pp_type:= (others => (others =>'0'));
		variable temp1 : std_logic_vector(NN downto 0):= (others=>'0');
		variable temp2 : std_logic_vector(NN downto 0):= (others=>'0');
		
		begin
		for i in 0 to N-1 loop
			for j in i to (i+N-1) loop
				arr(i)(j) := B(i) and A(j-i);
			end loop;
		end loop;
		temp1 := adder(arr(0),arr(1));
		temp2 := adder(temp1,arr(2));
		result:= adder(temp2,arr(3));

		M <= result(NN-1 downto 0); -- assignment of final result
		end process ; -- multiplier

end beh ; -- beh