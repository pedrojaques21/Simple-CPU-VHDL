library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end PC;

architecture Behavioral of PC is

begin
	process(clk, reset, ESCR_PC, Constante)
	
		variable contador : STD_LOGIC_VECTOR (7 downto 0);
		
		begin
			if rising_edge(clk) then
				if reset = '0' then
					if ESCR_PC = '0' then
						contador := contador + 1;
					else
						contador := Constante;
					end if;
				else
					contador := "00000000";
				end if;
			end if;
			Endereco <= contador;
	end process;
end Behavioral;

