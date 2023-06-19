library ieee;
use ieee.std_logic_1164.all;

entity Aula15 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 S_ULA: out std_logic_vector(31 downto 0);
	 S_PC: out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of Aula15 is

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

begin


CLK <= CLOCK_50;


-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.ROMMIPS   generic map (dataWidth => 32, addrWidth => 32)
          port map (Endereco => Saida_PC, Dado => Banco_regs);
			 
										  

PC : entity work.registradorGenerico   generic map (larguraDados => 32)
          port map (DIN => Saida_MUX5, DOUT => Saida_PC, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 32, constante => 4)
        port map( entrada => Saida_PC, saida => Saida_incrementa);
		  
		  
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 32)
          port map (entradaA => Reg1, entradaB =>  Saida_MUX3, saida => Saida_ULA, seletor => Sinais_controle(4));
			 
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
							

NOR_ULA <= not(Saida_ULA(0) or Saida_ULA(1) or Saida_ULA(2) or Saida_ULA(3) or Saida_ULA(4) or Saida_ULA(5) 
			or Saida_ULA(6) or Saida_ULA(7) or Saida_ULA(8) or Saida_ULA(9) or Saida_ULA(10) or Saida_ULA(11) or Saida_ULA(12) 
			or Saida_ULA(13) or Saida_ULA(14) or Saida_ULA(15) or Saida_ULA(16) or Saida_ULA(17) or Saida_ULA(18) or Saida_ULA(19) 
			or Saida_ULA(20) or Saida_ULA(21) or Saida_ULA(22) or Saida_ULA(23) or Saida_ULA(24) or Saida_ULA(25) or Saida_ULA(26) 
			or Saida_ULA(27) or Saida_ULA(28) or Saida_ULA(29) or Saida_ULA(30) or Saida_ULA(31));		
			
Sinais_controle(8) <= '1' when Banco_regs(31 downto 26) = "000010" else '0';
Sinais_controle(7) <= '1' when Banco_regs(31 downto 26) = "000000" else '0';					
Sinais_controle(6) <= '1' when Banco_regs(31 downto 26) = "000000" or Banco_regs(31 downto 26) = "100011" else '0';
Sinais_controle(5) <= '1' when Banco_regs(31 downto 26) = "100011" or Banco_regs(31 downto 26) = "101011" else '0';
Sinais_controle(4) <= '1' when Banco_regs(5 downto 0) = "100000" or Banco_regs(31 downto 26) = "100011" or Banco_regs(31 downto 26) = "101011" else '0';
Sinais_controle(3) <= '1' when Banco_regs(31 downto 26) = "100011" else '0'; 
Sinais_controle(2) <= '1' when Banco_regs(31 downto 26) = "000100" else '0';
Sinais_controle(1) <= '1' when Banco_regs(31 downto 26) = "100011" else '0';
Sinais_controle(0) <= '1' when Banco_regs(31 downto 26) = "101011" else '0';

S_ULA <= Saida_ULA;	
S_PC<=Saida_PC;			
				
end architecture;