library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  port   (
	Instruction_IN: in std_logic_vector (12 downto 0);
	ROM_Adress: out std_logic_vector(8 downto 0);
	RD: out std_logic;
	WR: out std_logic;
	Data_IN: in std_logic_vector(7 downto 0);
	Data_OUT: out std_logic_vector(7 downto 0);
	Data_Adress: out std_logic_vector(8 downto 0);
	CLOCK: in std_logic
	
  );
end entity;


architecture arquitetura of CPU is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (7 downto 0);
  signal chavesY_MUX_A : std_logic_vector (7 downto 0);
  signal MUX_REG1 : std_logic_vector (7 downto 0);
  signal REG1_ULA_A : std_logic_vector (7 downto 0);
  signal Saida_ULA : std_logic_vector (7 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);   --mudou
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal decoderMemoria : std_logic_vector(12 downto 0);
  signal muxPC: std_logic_vector(8 downto 0);
  signal flagSaidaULA: std_logic;
  signal saidaFlipFlop: std_logic;
  signal saidaLogDesvio: std_logic_vector (1 downto 0);
   signal saidaRetorno: std_logic_vector (8 downto 0);

  
  --sinais de controle, em ordem
	  signal habilitaFlag: std_logic;
	  signal Operacao_ULA : std_logic_vector(1 downto 0);
	  signal Habilita_A : std_logic;
	  signal SelMUX : std_logic;
	  signal JEQ: std_logic;
	  signal JSR: std_logic;
	  signal RET: std_logic;
	  signal JMP: std_logic;
	  signal habEscritaRetorno: std_logic;

begin

-- Instanciando os componentes:

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => 8)
        port map( entradaA_MUX => chavesY_MUX_A,
                 entradaB_MUX =>  decoderMemoria(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);
					  
MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  decoderMemoria(8 downto 0),
					  entradaC_MUX => saidaRetorno,
					  entradaD_MUX => "000000000",
                 seletor_MUX => saidaLogDesvio,
                 saida_MUX => muxPC);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');


ENDRET : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => proxPC, DOUT => saidaRetorno, ENABLE => habEscritaRetorno, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => muxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSubPassa  generic map(larguraDados => 8)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA,flag => flagSaidaULA);


DECODER : entity work.decoderInstru 
			port map(opcode => decoderMemoria(12 downto 9), saida => Sinais_Controle);
			
					  
flipFlop : entity work.flipFlop 
			port map(DIN => flagSaidaULA, DOUT => saidaFlipFlop,ENABLE => habilitaFlag, CLK => CLK, RST => '0');
			
logicaDesvio : entity work.logicaDesvio
			port map(JEQ => JEQ, JSR => JSR, RET => RET, JMP => JMP, flagEqual => saidaFlipFlop,saida => saidaLogDesvio);

habEscritaRetorno <= Sinais_Controle(11);			
JMP <= Sinais_Controle(10);			
RET <= Sinais_Controle(9);
JSR <= Sinais_Controle(8);			
JEQ <= Sinais_Controle(7);	
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
habilitaFlag <= Sinais_Controle(2);
RD <= Sinais_Controle (1);
WR <= Sinais_Controle(0);

CLK <= CLOCK;
decoderMemoria <= Instruction_IN;
ROM_Adress <= Endereco;
chavesY_MUX_A <= Data_IN;
Data_Adress <= decoderMemoria(8 downto 0);
Data_OUT <= REG1_ULA_A;

end architecture;