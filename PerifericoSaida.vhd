library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity PerifericoSaida is
    Port ( ESCR_P : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end PerifericoSaida;

architecture Behavioral of PerifericoSaida is

begin
	process(ESCR_P, Operando1, clk)
		begin
			if ESCR_P = '1' then
				if rising_edge (clk) then
					POUT <= Operando1;
				end if;
			end if;
	end process;
end Behavioral;