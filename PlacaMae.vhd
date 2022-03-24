library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PlacaMae is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           PIN : in STD_LOGIC_VECTOR (7 downto 0);
           POUT : out STD_LOGIC_VECTOR (7 downto 0));
end PlacaMae;


architecture Struct of PlacaMae is

--COMPONENTS

component Processador is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           PIN : in STD_LOGIC_VECTOR (7 downto 0);
			  Dados_M : in STD_LOGIC_VECTOR (7 downto 0);
			  Constante : in STD_LOGIC_VECTOR (7 downto 0);
			  Registo_1 : in STD_LOGIC_VECTOR (2 downto 0);
			  Registo_2 : in STD_LOGIC_VECTOR (2 downto 0);
			  opcode : in STD_LOGIC_VECTOR (4 downto 0);
           POUT : out STD_LOGIC_VECTOR (7 downto 0);
			  ConstanteOut : out STD_LOGIC_VECTOR (7 downto 0);
			  Operando1 : out STD_LOGIC_VECTOR(7 downto 0);
			  Endereco : out STD_LOGIC_VECTOR (7 downto 0);
			  WR : out  STD_LOGIC);
end component;

component MemoriaDados is
    Port ( clk : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component MemoriaInstrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Registo_1 : out  STD_LOGIC_VECTOR (2 downto 0);
           Registo_2 : out  STD_LOGIC_VECTOR (2 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

--END COMPONENTS

--SIGNALS

signal sWR: STD_LOGIC;
signal sRegisto_1, sRegisto_2 : STD_LOGIC_VECTOR (2 downto 0);
signal sOpcode : STD_LOGIC_VECTOR (4 downto 0);
signal sOperando1, sDados_M, sEndereco, sConstante, sConstanteOut: STD_LOGIC_VECTOR (7 downto 0);

--END SIGNALS

begin

	ProcessadorAC : Processador port map(clk, reset, PIN, sDados_M, sConstante, sRegisto_1, sRegisto_2, sOpcode, POUT, sConstanteOut, sOperando1, sEndereco, sWR);

	MemoriaDeInstrucoes : MemoriaInstrucoes port map(sEndereco, sOpcode, sRegisto_1, sRegisto_2, sConstante);
	MemoriaDeDados : MemoriaDados port map(clk, sOperando1, sConstanteOut, sWR, sDados_M);

end Struct;

