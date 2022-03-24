library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoriaDados is
    Port ( clk : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end MemoriaDados;

architecture Behavioral of MemoriaDados is

begin
	process(clk, Operando1, Constante, WR)
	
		type ram is array (0 to 255) of STD_LOGIC_VECTOR (7 downto 0);		
		variable memoria_ram : ram;
		
		begin
			if WR = '1' then
				if rising_edge(clk) then
					memoria_ram(TO_INTEGER(unsigned(Constante))) := Operando1;
				end if;
			else
				Dados_M <= memoria_ram(TO_INTEGER(unsigned(Constante)));
			end if;
	end process;
end Behavioral;