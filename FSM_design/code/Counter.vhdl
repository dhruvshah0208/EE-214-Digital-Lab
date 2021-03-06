library ieee;
use ieee.std_logic_1164.all;

-- A machine which toggles its output whenever
-- an internal counter reaches a specified value.
-- 
-- If you run it with up='1', then you should 
-- see a square wave at value with the specified
-- half period.
--
entity Counter is
	generic (half_period: integer := 8);
	port (clk, reset: in std_logic;
		up, down: in std_logic;
		value: out std_logic);
end entity Counter;


architecture RtlBehavioural of Counter is

	type FsmState is (RST, RUN);

	-- RTL machine control FSM state.
	signal fsm_state: FsmState;
	-- RTL machine registers.
	signal counter_register: integer range 0 to half_period-1;
	signal phase_register: std_logic;
begin

	process(clk, reset, up, down, counter_register, phase_register, fsm_state)
		variable next_fsm_state_var: FsmState;
		variable value_var: std_logic;
		variable next_counter_register_var, counter_increment_var: integer;
		variable next_phase_register_var: std_logic;
	begin

		-- default values of next state and register values.
		value_var := '0';
		next_fsm_state_var := fsm_state;
		next_counter_register_var := counter_register;
		next_phase_register_var := phase_register;


		-- next value computation for state, registers.
		case fsm_state is
			when RST =>
				next_fsm_state_var := RUN;
			when RUN =>
				if(up = '1') then
					counter_increment_var := 1;
				elsif (down = '1') then
					counter_increment_var := -1;
				end if;
		end case;

		
		next_counter_register_var := (counter_register + counter_increment_var);
		if(counter_increment_var > 0) then
			if(counter_register = (half_period-1)) then
				next_counter_register_var := 0;
				next_phase_register_var := not phase_register;
			end if;
		elsif (counter_increment_var < 0) then
			if(counter_register = 0) then
				next_counter_register_var := half_period - 1;
			end if;
		end if;


		-- output of the state machine.
		value <= phase_register;

		-- state and register updates.
		if(clk'event and (clk = '1')) then
			if(reset = '1') then
				fsm_state <= RST;
				counter_register <= 0;
				phase_register <= '0';
			else
				fsm_state <= next_fsm_state_var;
				counter_register <= next_counter_register_var;
				phase_register <= next_phase_register_var;
			end if;
		end if;
	end process;
end RtlBehavioural;

