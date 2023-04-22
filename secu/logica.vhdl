library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logica is
	Port (  instruccion : in STD_LOGIC_VECTOR(1 downto 0);
			  ncc : in STD_LOGIC;
			  sel : out STD_LOGIC;
			  npl : out STD_LOGIC;
			  nmap : out STD_LOGIC;
			  nvect : out STD_LOGIC);
end logica;

architecture Behavioral of logica is
begin
	process (instruccion, ncc)
	begin
		case instruccion & ncc is
			when "000" =>
				sel <= '1';
				npl <= '1';
				nmap <= '1';
				nvect <= '1';
			when "001" =>
				sel <= '1';
				npl <= '1';
				nmap <= '1';
				nvect <= '1';
			when "010" =>
				sel <= '0';
				npl <= '0';
				nmap <= '1';
				nvect <= '1';
			when "011" =>
				sel <= '1';
				npl <= '0';
				nmap <= '1';
				nvect <= '1';
			when "100" =>
				sel <= '0';
				npl <= '1';
				nmap <= '0';
				nvect <= '1';
			when "101" =>
				sel <= '0';
				npl <= '1';
				nmap <= '0';
				nvect <= '1';
			when "110" =>
				sel <= '0';
				npl <= '1';
				nmap <= '1';
				nvect <= '0';
			when "111" =>
				sel <= '1';
				npl <= '1';
				nmap <= '1';
				nvect <= '0';
			when others =>
				sel <= '0';
				npl <= '1';
				nmap <= '1';
				nvect <= '1';
		end case;

	end process;
end Behavioral;