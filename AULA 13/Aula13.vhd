library ieee;
use ieee.std_logic_1164.all;

entity Aula13 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 S_ULA: out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of Aula13 is

-- Faltam alguns sinais:
	signal CLK: std_logic;
	signal Saida_incrementa: std_logic_vector(31 downto 0);
	signal Saida_PC: std_logic_vector(31 downto 0);
	signal Banco_regs: std_logic_vector(31 downto 0);
	signal Reg1: std_logic_vector(31 downto 0);
	signal Reg2: std_logic_vector(31 downto 0);
	signal SaidaULA: std_logic_vector(31 downto 0);
	signal Sinais_controle: std_logic_vector (1 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.ROMMIPS   generic map (dataWidth => 32, addrWidth => 32)
          port map (Endereco => Saida_PC, Dado => Banco_regs);
			 
										  

PC : entity work.registradorGenerico   generic map (larguraDados => 32)
          port map (DIN => Saida_incrementa, DOUT => Saida_PC, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 32, constante => 4)
        port map( entrada => Saida_PC, saida => Saida_incrementa);
		  
		  
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 32)
          port map (entradaA => Reg1, entradaB =>  Reg2, saida => SaidaULA, seletor => Sinais_controle(0));
			 
banco: entity work.bancoReg generic map(larguraDados => 32,larguraEndBancoRegs => 5)
				port map(clk => CLK,
						   enderecoA => Banco_regs(25 downto 21),
							enderecoB => Banco_regs(20 downto 16),
                     enderecoC => Banco_regs(15 downto 11),
                     dadoEscritaC=> SaidaULA,
						   escreveC => Sinais_controle(1),
						   saidaA => Reg1,
							saidaB => Reg2);
							
							
Sinais_controle(0) <= '1' when Banco_regs(5 downto 0) = "100000" else '0';				
Sinais_controle(1) <= '1' when Banco_regs(31 downto 26) = "000000" else '0';
S_ULA <= SaidaULA;				
				
end architecture;