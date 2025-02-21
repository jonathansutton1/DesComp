library ieee;
use ieee.std_logic_1164.all;

entity Aula4b is
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
	 SAIDA_TESTE : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of Aula4b is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (5 downto 0);  --mudou
  signal Endereco : std_logic_vector (8 downto 0);  --mudou
  signal proxPC : std_logic_vector (8 downto 0);  --mudou
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);  --mudou
  signal decoderMemoria : std_logic_vector(12 downto 0);  --mudou
  signal habilitaLeitura: std_logic;  --criado agora
  signal habilitaEscrita: std_logic;  --criado agora

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
          port map (DIN => MUX_REG1, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => proxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 8)
          port map (entradaA => REG1_ULA_A, entradaB => chavesX_ULA_B, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => Endereco, Dado => decoderMemoria);

DECODER : entity work.decoderInstru
			port map(opcode => decoderMemoria(12 downto 9), saida => Sinais_Controle);
			
RAM :entity work.memoriaRAM generic map (dataWidth => 8, addrWidth => 8)
			port map(addr => decoderMemoria(7 downto 0), we => Sinais_Controle(0), re => Sinais_Controle(1),
							habilita => decoderMemoria(8), clk => clk, dado_in => REG1_ULA_A, dado_out => chavesY_MUX_A);
			
				
selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 downto 2);
habilitaLeitura <= Sinais_Controle(1);
habilitaEscrita <= Sinais_Controle(0);

SAIDA_TESTE <= REG1_ULA_A; -- o que sai do registrador
PC_OUT <= Endereco;

end architecture;