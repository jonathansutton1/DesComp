library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 3;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
   PC_OUT: out std_logic_vector(8 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 PALAVRA_CONTROLE : out std_logic_vector(8 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (8 downto 0);   --mudou
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal Reset_A : std_logic;
  signal decoderMemoria : std_logic_vector(12 downto 0);
  signal muxPC: std_logic_vector(8 downto 0);
  signal flagSaidaULA: std_logic;
  signal saidaFlipFlop: std_logic;
  signal saidaLogDesvio: std_logic;
  
  --sinais de controle, em ordem
	  signal habEscritaMEM: std_logic;
	  signal habLeituraMEM : std_logic;
	  signal habilitaFlag: std_logic;
	  signal Operacao_ULA : std_logic_vector(1 downto 0);
	  signal Habilita_A : std_logic;
	  signal SelMUX : std_logic;
	  signal JEQ: std_logic;
	  signal JMP: std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => chavesY_MUX_A,
                 entradaB_MUX =>  decoderMemoria(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => muxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSubPassa  generic map(larguraDados => 8)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA,flag => flagSaidaULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => Endereco, Dado => decoderMemoria);

DECODER : entity work.decoderInstru 
			port map(opcode => decoderMemoria(12 downto 9), saida => Sinais_Controle);
			
RAM : entity work.memoriaRAM generic map (dataWidth => 8, addrWidth => 8)
			port map(addr => decoderMemoria(7 downto 0), we => Sinais_Controle(0), re => Sinais_Controle(1),
							habilita => decoderMemoria(8), clk => clk, dado_in => REG1_ULA_A, dado_out => chavesY_MUX_A);
							
MUX2 :  entity work.muxGenerico2x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  decoderMemoria(8 downto 0),
                 seletor_MUX => saidaLogDesvio,
                 saida_MUX => muxPC);
					  
flipFlop : entity work.flipFlop 
			port map(DIN => flagSaidaULA, DOUT => saidaFlipFlop,ENABLE => habilitaFlag, CLK => CLK, RST => '0');
			
logicaDesvio : entity work.logicaDesvio
			port map(JMP => JMP, JEQ => JEQ, flagEqual => saidaFlipFlop,saida => saidaLogDesvio);

JMP <= Sinais_Controle(8);			
JEQ <= Sinais_Controle(7);	
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
habilitaFlag <= Sinais_Controle(2);
habLeituraMEM <= Sinais_Controle (1);
habEscritaMEM <= Sinais_Controle(0);

PALAVRA_CONTROLE <= Sinais_Controle;

PC_OUT <= Endereco;

end architecture;