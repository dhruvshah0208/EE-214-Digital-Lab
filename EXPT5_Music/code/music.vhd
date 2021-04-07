LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity music is
generic(
	n:integer range 0 to 100 := 16);
port (toneOut : out std_logic;
	clk_50, resetn : in std_logic;
	LED : out std_logic_vector(7 downto 0));
	
end entity music;

architecture RtlBehavioural of music is

type FsmState is (RST, RUN);

-- RTL machine control FSM state.
signal fsm_state: FsmState;
-- RTL machine registers.
signal index_register: integer range 0 to n-1;

type note_sequence is array (0 to n-1) of std_logic_vector(7 downto 0);
signal note_code : std_logic_vector(7 downto 0);
signal clock_music : std_logic := '1';

component toneGenerator2 is
port (
toneOut : out std_logic; --this pin will give your notes output
clk : in std_logic;
LED : out std_logic_vector(7 downto 0);
switch : in std_logic_vector(7 downto 0));
end component;


begin
-- component instantiate
	tone_generator: toneGenerator2
	port map (			
			clk => clk_50,
			LED => LED,
			switch => note_code,
			toneOut  => toneOut 	
			);
			
	process(clk_50, resetn,index_register,fsm_state,note_code,clock_music)
		variable next_fsm_state_var: FsmState;
		variable next_index_register_var: integer;
		variable ni1:std_logic_vector(7 downto 0);
		variable sa	:std_logic_vector(7 downto 0);
		variable re	:std_logic_vector(7 downto 0);
		variable ga	:std_logic_vector(7 downto 0);
		variable ma	:std_logic_vector(7 downto 0);
		variable pa	:std_logic_vector(7 downto 0);
		variable dha:std_logic_vector(7 downto 0);
		variable ni2:std_logic_vector(7 downto 0);
		variable sequence : note_sequence; -- test sequence of 4 notes
		variable note_code_var: std_logic_vector(7 downto 0);
		variable timecounter : integer range 0 to 1E8 := 1;
		variable clk_c : std_logic := '1';	

	begin

		-- default values of next state and register values.
		next_fsm_state_var := fsm_state;
		next_index_register_var := index_register;
		ni1 := "00000001";
		sa  := "00000010";
		re  := "00000100";
		ga  := "00001000";
		ma  := "00010000";
		pa  := "00100000";
		dha := "01000000";
		ni2 := "10000000";
		sequence := (ni1,sa,re,ma,pa,dha,pa,pa,ma,ga,re,ni1,sa,sa,sa,sa);
		--sequence := (sa,sa,ga,ga,sa,sa,ga,ga,ma,ga,re,sa,
		--					ni1,ni1,re,re,ni,ni1,re,re,ga,re,sa,ni1);

		-- next value computation for state, registers.
		case fsm_state is
			when RST =>
				next_fsm_state_var := RUN;
				note_code_var := "00000000";
				next_index_register_var := 0;
			when RUN =>
				if(index_register = n-1) then
					next_index_register_var := 0;
					note_code_var := sequence(index_register);
				else
					note_code_var := sequence(index_register);
					next_index_register_var := index_register + 1;
				end if;
		end case;

		-- output of the state machine.
		note_code <= note_code_var;
		
		-- state and register updates.
		-- generate4 hz clock
		if (clk_50 = '1' and clk_50' event) then
			if (resetn = '0') then
				if timecounter = 125E5 then -- The cycles in which clk is 1 or 0
					timecounter := 1;			-- When it reaches max count i.e. 25x10^6 (half a second) it will be 0 again 
					clk_c := not clk_c;		-- this variable will toggle
					fsm_state <= next_fsm_state_var;
					index_register<= next_index_register_var;
				else
					timecounter := timecounter + 1;	-- Counter will be incremented till it reaches max count
					
				end if;
			elsif resetn = '1' then
				fsm_state <= RST;
				timecounter := 1;
				clk_c := '0';
			end if;
		end if;
		clock_music <= clk_c;		
		end process;
end RtlBehavioural;
