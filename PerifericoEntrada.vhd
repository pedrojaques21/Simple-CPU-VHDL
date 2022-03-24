library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity PerifericoEntrada is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0));
end PerifericoEntrada;

architecture Behavioral of PerifericoEntrada is

begin
	process(PIN, ESCR_P)
		begin
			if ESCR_P = '1' then
				Dados_IN <= PIN;
			end if;
	end process;
end Behavioral;