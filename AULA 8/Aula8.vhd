library ieee;
use ieee.std_logic_1164.all;

entity Aula8 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Aula8 is

	signal Saida_ROM : std_logic_vector(12 downto 0);
	signal Entrada_ROM : std_logic_vector(8 downto 0);
	signal RD : std_logic;
	signal WR : std_logic;
	signal Saida_RAM : std_logic_vector(7 downto 0);
	signal Entrada_RAM : std_logic_vector(7 downto 0);
	signal dataAdress : std_logic_vector(8 downto 0);
	signal clk : std_logic;
	signal Saida_decoder1 : std_logic_vector(7 downto 0);
	signal Saida_decoder2 : std_logic_vector(7 downto 0);
	signal Saida_FF1 : std_logic;
	signal Saida_FF2 : std_logic;
	signal HabFF1 :  std_logic;
	signal HabFF2 : std_logic;
	signal Saida_REG8 : std_logic_vector(7 downto 0);
	signal HabREG8 : std_logic;
	
	------
	signal HabREG4_0 : std_logic;
	signal HabREG4_1 : std_logic;
	signal HabREG4_2 : std_logic;
	signal HabREG4_3 : std_logic;
	signal HabREG4_4 : std_logic;
	signal HabREG4_5 : std_logic;
	signal SaidaREG4_0 : std_logic_vector(3 downto 0);
	signal SaidaREG4_1 : std_logic_vector(3 downto 0);
	signal SaidaREG4_2 : std_logic_vector(3 downto 0);
	signal SaidaREG4_3 : std_logic_vector(3 downto 0);
	signal SaidaREG4_4 : std_logic_vector(3 downto 0);
	signal SaidaREG4_5 : std_logic_vector(3 downto 0);
	signal Saida_display0 : std_logic_vector(6 downto 0);
	signal Saida_display1 : std_logic_vector(6 downto 0);
	signal Saida_display2 : std_logic_vector(6 downto 0);
	signal Saida_display3 : std_logic_vector(6 downto 0);
	signal Saida_display4 : std_logic_vector(6 downto 0);
	signal Saida_display5 : std_logic_vector(6 downto 0);


begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => Entrada_ROM , Dado => Saida_ROM );


RAM : entity work.memoriaRAM generic map (dataWidth => 8, addrWidth => 6)
			port map(addr => dataAdress(5 downto 0), we => WR , re => RD ,
							habilita => Saida_decoder1(0), clk => clk,dado_in => Entrada_RAM , dado_out => Saida_RAM);
							
CPU : entity work.CPU
			port map(Instruction_IN => Saida_ROM,ROM_Adress => Entrada_ROM,
							RD => RD ,WR => WR,
							Data_IN => Saida_RAM, Data_OUT => Entrada_RAM,
							Data_Adress => dataAdress , CLOCK => clk);
							
DECODER1 : entity work.decoder3x8
			port map( entrada => dataAdress(8 downto 6),
                saida => Saida_decoder1);

DECODER2 : entity work.decoder3x8
			port map( entrada => dataAdress(2 downto 0),
                saida => Saida_decoder2);
					 
FF1 : entity work.flipFlop 
			port map(DIN => Entrada_RAM(0), DOUT => Saida_FF1,ENABLE => HabFF1, CLK => clk, RST => '0');

FF2 : entity work.flipFlop 
			port map(DIN => Entrada_RAM(0), DOUT => Saida_FF2,ENABLE => HabFF2, CLK => clk, RST => '0');


REG8 : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => Entrada_RAM, DOUT => Saida_REG8, ENABLE => HabREG8, CLK => clk, RST => '0'); 
			 
					  
REG4_0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Entrada_RAM(3 downto 0), DOUT => SaidaREG4_0, ENABLE => HabREG4_0, CLK => clk, RST => '0');

REG4_1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Entrada_RAM(3 downto 0), DOUT => SaidaREG4_1, ENABLE => HabREG4_1, CLK => clk, RST => '0'); 
			 
REG4_2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Entrada_RAM(3 downto 0), DOUT => SaidaREG4_2, ENABLE => HabREG4_2, CLK => clk, RST => '0');
			 
REG4_3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Entrada_RAM(3 downto 0), DOUT => SaidaREG4_3, ENABLE => HabREG4_3, CLK => clk, RST => '0'); 
			 
REG4_4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Entrada_RAM(3 downto 0), DOUT => SaidaREG4_4, ENABLE => HabREG4_4, CLK => clk, RST => '0'); 
			 
REG4_5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Entrada_RAM(3 downto 0), DOUT => SaidaREG4_5, ENABLE => HabREG4_5, CLK => clk, RST => '0');
			 
DISPLAY0 :  entity work.conversorHex7Seg
					port map(dadoHex => SaidaREG4_0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_display0);
					  
DISPLAY1 :  entity work.conversorHex7Seg
					port map(dadoHex => SaidaREG4_1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_display1);
			 
DISPLAY2 :  entity work.conversorHex7Seg
					port map(dadoHex => SaidaREG4_2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_display2); 
			 
DISPLAY3 :  entity work.conversorHex7Seg
					port map(dadoHex => SaidaREG4_3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_display3);
			 
DISPLAY4 :  entity work.conversorHex7Seg
					port map(dadoHex => SaidaREG4_4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_display4);
			 
DISPLAY5 :  entity work.conversorHex7Seg
					port map(dadoHex => SaidaREG4_5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => Saida_display5);
			 

HabFF1 <= WR and Saida_decoder1(4) and Saida_decoder2(2) and dataAdress(5);
HabFF2 <= WR and Saida_decoder1(4) and Saida_decoder2(1) and dataAdress(5);
HabREG8 <= WR and Saida_decoder1(4) and Saida_decoder2(0) and dataAdress(5);

HabREG4_0 <= WR and Saida_decoder1(4) and Saida_decoder2(0) and  dataAdress(5);
HabREG4_1 <= WR and Saida_decoder1(4) and Saida_decoder2(1) and  dataAdress(5);
HabREG4_2 <= WR and Saida_decoder1(4) and Saida_decoder2(2) and  dataAdress(5);
HabREG4_3 <= WR and Saida_decoder1(4) and Saida_decoder2(3) and  dataAdress(5);
HabREG4_4 <= WR and Saida_decoder1(4) and Saida_decoder2(4) and  dataAdress(5);
HabREG4_5 <= WR and Saida_decoder1(4) and Saida_decoder2(5) and dataAdress(5);

HEX0 <= Saida_display0;
HEX1 <= Saida_display1;
HEX2 <= Saida_display2;
HEX3 <= Saida_display3;
HEX4 <= Saida_display4;
HEX5 <= Saida_display5;


LEDR(9) <= Saida_FF1;
LEDR(8) <= Saida_FF2;
LEDR(7 downto 0) <= Saida_REG8;
	
end architecture;