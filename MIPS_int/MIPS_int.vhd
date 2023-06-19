library ieee;
use ieee.std_logic_1164.all;

entity MIPS_int is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 LEDR  : out std_logic_vector(7 downto 0);
	 SW : in std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of MIPS_int is

-- Faltam alguns sinais:
	signal CLK: std_logic;
	signal Saida_incrementa: std_logic_vector(31 downto 0);
	signal Saida_PC: std_logic_vector(31 downto 0);
	signal Banco_regs: std_logic_vector(31 downto 0);
	signal Reg1: std_logic_vector(31 downto 0);
	signal Reg2: std_logic_vector(31 downto 0);
	signal Saida_ULA: std_logic_vector(31 downto 0);
	signal Saida_incrementa2: std_logic_vector(31 downto 0);
	signal Sinais_controle: std_logic_vector(8 downto 0);
	signal Saida_MUX1: std_logic_vector(31 downto 0);
	signal Saida_MUX2: std_logic_vector(4 downto 0);
	signal Saida_MUX3: std_logic_vector(31 downto 0);
	signal Saida_MUX4: std_logic_vector(31 downto 0);
	signal Saida_MUX5: std_logic_vector(31 downto 0);
	signal Saida_estende: std_logic_vector(31 downto 0);
	signal Saida_RAM: std_logic_vector(31 downto 0);
	signal NOR_ULA: std_logic;
	signal Saida_UC_ULA : std_logic_vector(2 downto 0);
	signal Saida_MUXFPGA : std_logic_vector(31 downto 0);
	signal Dis0 : std_logic_vector(6 downto 0);
	signal Dis1 : std_logic_vector(6 downto 0);
	signal Dis2 : std_logic_vector(6 downto 0);
	signal Dis3 : std_logic_vector(6 downto 0);
	signal Dis4 : std_logic_vector(6 downto 0);
	signal Dis5 : std_logic_vector(6 downto 0);

begin


gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.ROMMIPS   generic map (dataWidth => 32, addrWidth => 32)
          port map (Endereco => Saida_PC, Dado => Banco_regs);
			 
										  

PC : entity work.registradorGenerico   generic map (larguraDados => 32)
          port map (DIN => Saida_MUX5, DOUT => Saida_PC, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 32, constante => 4)
        port map( entrada => Saida_PC, saida => Saida_incrementa);
		  
		  
ULA1 : entity work.ULAMIPS
          port map (inverteB => Saida_UC_ULA(2), 
					  a => Reg1,
					  b => Saida_MUX3,
					  selecao => Saida_UC_ULA(1 downto 0), 
					  resultado => Saida_ULA,  
					  z => NOR_ULA);

			 
banco: entity work.bancoReg generic map(larguraDados => 32,larguraEndBancoRegs => 5)
				port map(clk => CLK,
						   enderecoA => Banco_regs(25 downto 21),
							enderecoB => Banco_regs(20 downto 16),
                     enderecoC => Saida_MUX2,
                     dadoEscritaC=> Saida_MUX4 ,
						   escreveC => Sinais_controle(6),
						   saidaA => Reg1,
							saidaB => Reg2);
							
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => 32)
        port map( entradaA_MUX => Saida_incrementa,
                 entradaB_MUX =>  Saida_incrementa2,
                 seletor_MUX => NOR_ULA and Sinais_controle(2) ,
                 saida_MUX => Saida_MUX1);
					  
MUX2 :  entity work.muxGenerico2x1  generic map (larguraDados => 5)
        port map( entradaA_MUX => Banco_regs(20 downto 16),
                 entradaB_MUX =>  Banco_regs(15 downto 11),
                 seletor_MUX => Sinais_controle(6),
                 saida_MUX => Saida_MUX2);
					  
MUX3 :  entity work.muxGenerico2x1  generic map (larguraDados => 32)
        port map( entradaA_MUX => Reg2,
                 entradaB_MUX => Saida_estende ,
                 seletor_MUX => Sinais_controle(5),
                 saida_MUX => Saida_MUX3);

MUX4 :  entity work.muxGenerico2x1  generic map (larguraDados => 32)
        port map( entradaA_MUX => Saida_ULA,
                 entradaB_MUX => Saida_RAM ,
                 seletor_MUX => Sinais_controle(3),
                 saida_MUX => Saida_MUX4);	
	
MUX5 :  entity work.muxGenerico2x1  generic map (larguraDados => 32)
        port map( entradaA_MUX => Saida_MUX1,
                 entradaB_MUX => Saida_incrementa(31 downto 28) & Banco_regs(25 downto 0) & "00",
                 seletor_MUX => Sinais_controle(8),
                 saida_MUX => Saida_MUX5);		
					  
incrementaPC2 :  entity work.somador  generic map (larguraDados => 32)
        port map( entradaA => Saida_incrementa , entradaB=> Saida_estende(29 downto 0) & "00" ,saida => Saida_incrementa2);
		  
estendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => Banco_regs(15 downto 0), estendeSinal_OUT => Saida_estende);
	
RAM : entity work.RAMMIPS  generic map (dataWidth => 32, addrWidth => 32)
          port map (Endereco => Saida_ULA, we => Sinais_controle(0), re => Sinais_controle(1),
			 dado_in => Reg2, dado_out => Saida_RAM, clk => CLK);	
			 
CONTROLE : entity work.uniContULA 
			 port map(opcode => Banco_regs(31 downto 26),funct =>Banco_regs(5 downto 0) ,r => Sinais_controle(7),
					 saida =>Saida_UC_ULA);
		
MUX_FPGA :  entity work.muxGenerico2x1  generic map (larguraDados => 32)
        port map( entradaA_MUX => Saida_PC,
                 entradaB_MUX => Saida_ULA,
                 seletor_MUX => SW(0),
                 saida_MUX => Saida_MUXFPGA);	
					
Display0 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUXFPGA(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Dis0);
					
Display1 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUXFPGA(7 downto 4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Dis1);	
					
Display2 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUXFPGA(11 downto 8),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Dis2);	
					
			
Display3 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUXFPGA(15 downto 12),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Dis3);	
					
			
Display4 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUXFPGA(19 downto 16),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Dis4);	
					
			
Display5 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUXFPGA(23 downto 20),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Dis5);		
			
Sinais_controle(8) <= '1' when Banco_regs(31 downto 26) = "000010" else '0';
Sinais_controle(7) <= '1' when Banco_regs(31 downto 26) = "000000" else '0';					
Sinais_controle(6) <= '1' when Banco_regs(31 downto 26) = "000000" or Banco_regs(31 downto 26) = "100011" else '0';
Sinais_controle(5) <= '1' when Banco_regs(31 downto 26) = "100011" or Banco_regs(31 downto 26) = "101011" else '0';
Sinais_controle(4) <= '1' when Banco_regs(5 downto 0) = "100000" or Banco_regs(31 downto 26) = "100011" or Banco_regs(31 downto 26) = "101011" else '0';
Sinais_controle(3) <= '1' when Banco_regs(31 downto 26) = "100011" else '0'; 
Sinais_controle(2) <= '1' when Banco_regs(31 downto 26) = "000100" else '0';
Sinais_controle(1) <= '1' when Banco_regs(31 downto 26) = "100011" else '0';
Sinais_controle(0) <= '1' when Banco_regs(31 downto 26) = "101011" else '0';

LEDR(3 downto 0) <= Saida_MUXFPGA(27 downto 24);
LEDR(7 downto 4) <= Saida_MUXFPGA(31 downto 28);

HEX0 <= Dis0;
HEX1 <= Dis1;
HEX2 <= Dis2;
HEX3 <= Dis3;
HEX4 <= Dis4;
HEX5 <= Dis5;


end architecture;