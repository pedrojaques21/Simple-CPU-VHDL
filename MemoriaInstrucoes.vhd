library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoriaInstrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Registo_1 : out  STD_LOGIC_VECTOR (2 downto 0);
           Registo_2 : out  STD_LOGIC_VECTOR (2 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0));
end MemoriaInstrucoes;

architecture Behavioral of MemoriaInstrucoes is

begin
	process(Endereco)
	
		type rom_type is array (0 to 25) of STD_LOGIC_VECTOR (18 downto 0);		
		constant rom : rom_type := ("00010000XXX00011110", "00010001XXX11111111", "00010010XXX00010001", "00010011XXX00000101",
											 "00000100XXXXXXXXXXX", "00010101XXX00000000", "00101101100XXXXXXXX", "10100100XXX00010011",
											 "10101100XXX00010101", "01101100000XXXXXXXX", "10001XXXXXX00001111", "00101101100XXXXXXXX",
											 "00101011001XXXXXXXX", "10100011XXX00001111", "10011XXXXXX00001011", "00110101010XXXXXXXX",
											 "00100101XXX00000111", "00011100XXX00000111", "10011XXXXXX00011000", "00101100001XXXXXXXX",
											 "10011XXXXXX00011000", "01011100001XXXXXXXX", "00110100001XXXXXXXX", "00110100000XXXXXXXX",
											 "00001100XXXXXXXXXXX", "10011XXXXXX00011001");
--		variable rom : rom_type := ("00000000XXXXXXXXXXX", "00001000XXXXXXXXXXX", "10011XXXXXX00000010");
		
		begin
			opcode <= rom(TO_INTEGER(unsigned(Endereco)))(18 downto 14);
			Registo_1 <= rom(TO_INTEGER(unsigned(Endereco)))(13 downto 11);
			Registo_2 <= rom(TO_INTEGER(unsigned(Endereco)))(10 downto 8);
			Constante <= rom(TO_INTEGER(unsigned(Endereco)))(7 downto 0);
	end process;
end Behavioral;

