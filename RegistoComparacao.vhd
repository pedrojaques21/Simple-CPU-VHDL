library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RegistoComparacao is
    Port ( clk : in  STD_LOGIC;
           COMP_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_F : in  STD_LOGIC;
           R_FLAG : out  STD_LOGIC_VECTOR (4 downto 0));
end RegistoComparacao;

architecture Behavioral of RegistoComparacao is

begin
	process(clk, COMP_FLAG, ESCR_F)
	
	variable registo : STD_LOGIC_VECTOR (4 downto 0);
	
		begin
			if ESCR_F = '1' then
				if rising_edge (clk) then
					registo := COMP_FLAG;
				end if;
			end if;
			R_FLAG <= registo;
	end process;
end Behavioral;

