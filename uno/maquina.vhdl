-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity maquina is

	port(
		clk		 : in	std_logic;
		input	 : in	std_logic;
		reset	 : in	std_logic;
		output	 : out	std_logic
	);

end entity;

architecture rtl of maquina is

	-- Build an enumerated type for the state machine
	type state_type is (A, B, C, D, E);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= A;
		elsif (rising_edge(clk)) then
			case state is
				when A=>
					if input = '1' then
						state <= A;
					else
						state <= B;
					end if;
				when B=>
					if input = '1' then
						state <= C;
					else
						state <= B;
					end if;
				when C=>
					if input = '1' then
						state <= A;
					else
						state <= D;
					end if;
				when D =>
					if input = '1' then
						state <= E;
					else
						state <= B;
					end if;
				when E =>
					if input = '1' then
						state <= A;
					else
						state <= D;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when A =>
				output <= '0';
			when B =>
				output <= '0';
			when C =>
				output <= '0';
			when D =>
				output <= '0';
			when E =>
				output <= '1';
		end case;
	end process;

end rtl;
