library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUXPC is
    Port ( S_FLAG : in  STD_LOGIC;
			  UM : in  STD_LOGIC;
	        ZERO : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           NOROperando1 : in  STD_LOGIC;
			  bitMaiorPeso : in STD_LOGIC;
           ESCR_PC : out  STD_LOGIC );
end MUXPC;

architecture Behavioral of MUXPC is

begin
	process(S_FLAG, UM, ZERO, SEL_PC, NOROperando1, bitMaiorPeso)
		begin
			case SEL_PC is
				when "000" => ESCR_PC <= ZERO;
				when "001" => ESCR_PC <= UM;
				when "010" => ESCR_PC <= S_FLAG;
				when "011" => ESCR_PC <= NOROperando1;
				when "100" => ESCR_PC <= bitMaiorPeso;
				when others => ESCR_PC <= 'X';
			end case;
	end process;
end Behavioral;

