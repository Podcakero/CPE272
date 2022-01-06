library ieee;
use ieee.std_logic_1164.all;

entity Mealy_Machine is
	port
	(
		clk: in std_logic;
		reset: in std_logic;
		input1: in std_logic;
		output1: out std_logic
	);
end Mealy_Machine;

architecture rtl of Mealy_Machine is
type state_type is (state0, state1, state2, state3);
signal state: state_type;

begin

process (clk, reset)
begin

	if reset = '1' then
		state <= state0;
	elsif clk'event and clk = '1' then
		case state is
			when state0 =>
				if input1 = '1' then
					state <= state1;
					output1 <= '0';
				else
					state <= state0;
					output1 <= '0';
				end if;
				
			when state1 => 
				if input1 = '1' then
					state <= state2;
					output1 <= '0';
				else
					state <= state0;
					output1 <= '0';
				end if;
			
			when state2 =>
				if input1 = '0' then
					state <= state3;
					output1 <= '0';
				else
					state <= state2;
					output1 <= '0';
				end if;
			
			when state3 => 
				if input1 = '1' then
					state <= state1;
					output1 <= '1';
				else
					state <= state0;
					output1 <= '0';
				end if;
		end case;
	end if;
end process;
end rtl;		