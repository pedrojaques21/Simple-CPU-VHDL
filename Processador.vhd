library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Processador is
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
end Processador;

architecture Struct of Processador is

--COMPONENTS

component ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           COMP_FLAG : out  STD_LOGIC_VECTOR (4 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0) );
end component;

component BancoRegistos is
    Port ( clk : in  STD_LOGIC;
           ESCR_R : in  STD_LOGIC;
           Registo_1 : in  STD_LOGIC_VECTOR (2 downto 0);
           Registo_2 : in  STD_LOGIC_VECTOR (2 downto 0);
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component MUXPC is
    Port ( S_FLAG : in  STD_LOGIC;
			  UM : in  STD_LOGIC;
	        ZERO : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           NOROperando1 : in  STD_LOGIC;
			  bitMaiorPeso : in STD_LOGIC;
           ESCR_PC : out  STD_LOGIC );
end component;

component MuxComp is
    Port ( R_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_F : in  STD_LOGIC_VECTOR (2 downto 0);
           S_FLAG : out  STD_LOGIC);
end component;

component MuxR is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component PerifericoEntrada is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component PerifericoSaida is
    Port ( ESCR_P : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component ROM is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
			  SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0);
			  SEL_F : out  STD_LOGIC_VECTOR (2 downto 0);
			  ESCR_F: out  STD_LOGIC;       
			  SEL_ALU : out  STD_LOGIC_VECTOR (3 downto 0);
			  ESCR_R : out  STD_LOGIC;
			  SEL_R : out  STD_LOGIC_VECTOR (1 downto 0);
			  WR : out  STD_LOGIC;
			  ESCR_P : out  STD_LOGIC);
end component;

component RegistoComparacao is
    Port ( clk : in  STD_LOGIC;
           COMP_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_F : in  STD_LOGIC;
           R_FLAG : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component inv_port is
    Port ( X : in  STD_LOGIC;
           NOTX : out  STD_LOGIC);
end component;

component nor_port is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           H : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end component;

--END COMPONENTS

--SIGNALS
signal sNOTESCR_P, sESCR_P, sESCR_F, sS_FLAG, sESCR_PC , sESCR_R, sNOROperando1: STD_LOGIC;
signal sSEL_R: STD_LOGIC_VECTOR (1 downto 0);
signal sSEL_F, sSEL_PC : STD_LOGIC_VECTOR (2 downto 0);
signal sSEL_ALU : STD_LOGIC_VECTOR (3 downto 0);
signal sCOMP_FLAG, sR_FLAG : STD_LOGIC_VECTOR (4 downto 0);
signal sDados_IN, sOperando1, sOperando2, sResultado, sDados_R : STD_LOGIC_VECTOR (7 downto 0);
--END SIGNALS

begin
	
	PortaInversora : inv_port port map(sESCR_P, sNOTESCR_P);
	
	PerifericoDeEntrada : PerifericoEntrada port map(PIN, sNOTESCR_P, sDados_IN);
	
	PerifericoDeSaida : PerifericoSaida port map(sESCR_P, sOperando1, clk, POUT);
	
	UnidadeLogicaAritmetica : ALU port map(sOperando1, sOperando2, sSEL_ALU, sCOMP_FLAG, sResultado);
	
	RegistoDeComparacao : RegistoComparacao port map(clk, sCOMP_FLAG, sESCR_F, sR_FLAG);
	
	MUXComparacao : MuxComp port map(sR_FLAG, sSEL_F, sS_FLAG);
	
	NORPORT : nor_port port map(sOperando1(7), sOperando1(6), sOperando1(5), sOperando1(4), sOperando1(3), sOperando1(2), sOperando1(1), sOperando1(0), sNOROperando1);
	
	MUXProgramCounter : MUXPC port map(sS_FLAG, '1', '0', sSEL_PC, sNOROperando1, sOperando1(7), sESCR_PC);
	
	ProgramCounter : PC port map(clk, reset, sESCR_PC, Constante, Endereco);
	
	ROMDeDescodificacao : ROM port map(opcode, sSEL_PC, sSEL_F, sESCR_F, sSEL_ALU, sESCR_R, sSEL_R, WR, sESCR_P);
	
	MUXRegistos : MUXR port map(Constante, Dados_M, sDados_IN, sResultado, sSEL_R, sDados_R);
	
	BancoDeRegistos : BancoRegistos port map(clk, sESCR_R, Registo_1, Registo_2, sDados_R, sOperando1, sOperando2);
				
	Operando1 <= sOperando1;
	
	ConstanteOut <= Constante;
	
end Struct;

