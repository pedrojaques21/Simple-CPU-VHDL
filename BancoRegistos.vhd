library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BancoRegistos is
    Port ( clk : in  STD_LOGIC;
           ESCR_R : in  STD_LOGIC;
           Registo_1 : in  STD_LOGIC_VECTOR (2 downto 0);
           Registo_2 : in  STD_LOGIC_VECTOR (2 downto 0);
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end BancoRegistos;

architecture Behavioral of BancoRegistos is

begin
	process(clk, ESCR_R, Registo_1, Registo_2, Dados_R)
	
	type registos is array (0 to 5) of STD_LOGIC_VECTOR (7 downto 0);
	variable endereco_registo : registos;		
	
		begin
			if ESCR_R = '1' then
				if rising_edge (clk) then
					endereco_registo(TO_INTEGER(unsigned(Registo_1))) := Dados_R;								
				end if;					
			end if;			
			Operando1 <= endereco_registo(TO_INTEGER(unsigned(Registo_1)));
			Operando2 <= endereco_registo(TO_INTEGER(unsigned(Registo_2)));
	end process;
end Behavioral;

