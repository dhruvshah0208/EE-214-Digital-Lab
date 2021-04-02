library ieee;
use ieee.std_logic_1164.all;

-- Machine will output a sequence from 1 to n and again from 1 to n
--
entity sequence_generator is
	generic (n: integer := 8);
	port (clk, reset: in std_logic;
		value: out integer);
end entity sequence_generator;


architecture RtlBehavioural of sequence_generator is

	type FsmState is (RST, RUN);

	-- RTL machine control FSM state.
	signal fsm_state: FsmState;
	-- RTL machine registers.
	signal sequence_register: integer range 1 to n;

begin

	process(clk, reset,sequence_register,fsm_state)
		variable next_fsm_state_var: FsmState;
		variable value_var: std_logic;
		variable next_sequence_register_var: integer;

	begin

		-- default values of next state and register values.
		value_var := '0';
		next_fsm_state_var := fsm_state;
		next_sequence_register_var := sequence_register;

		-- next value computation for state, registers.
		case fsm_state is
			when RST =>
				next_fsm_state_var := RUN;
			when RUN =>
				if(sequence_register = n) then
					next_sequence_register_var := 1;
				else 
					next_sequence_register_var := sequence_register + 1;
				end if;
		end case;

		-- output of the state machine.
		value <= sequence_register;

		-- state and register updates.
		if(clk'event and (clk = '1')) then
			if(reset = '1') then
				fsm_state <= RST;
				sequence_register <= 1;
			else
				fsm_state <= next_fsm_state_var;
				sequence_register <= next_sequence_register_var;
			end if;
		end if;
	end process;
end RtlBehavioural;

