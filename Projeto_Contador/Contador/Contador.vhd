library ieee;
use ieee.std_logic_1164.all;

entity Contador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in std_logic;
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Contador is

-- Faltam alguns sinais:
	signal wr: std_logic;
	signal rd: std_logic;
	signal pc_rom: std_logic_vector(8 downto 0);
	signal saida_rom: std_logic_vector(12 downto 0);
	signal dataIn: std_logic_vector(7 downto 0);
	signal saida_reg: std_logic_vector(7 downto 0);
	signal Data_Address: std_logic_vector(8 downto 0);
	signal saida_decoder1: std_logic_vector(7 downto 0);
	signal saida_decoder2: std_logic_vector(7 downto 0);
	signal saida_FF1: std_logic;
	signal saida_FF2: std_logic;
	signal habFF1: std_logic;
	signal habFF2: std_logic;
	signal habReg8: std_logic;
	signal saida_REG8: std_logic_vector(7 downto 0);
	signal CLK: std_logic;
	signal dis0: std_logic_vector(6 downto 0);
	signal dis1: std_logic_vector(6 downto 0);
	signal dis2: std_logic_vector(6 downto 0);
	signal dis3: std_logic_vector(6 downto 0);
	signal dis4: std_logic_vector(6 downto 0);
	signal dis5: std_logic_vector(6 downto 0);
	signal REG4_Out0: std_logic_vector(3 downto 0);
	signal REG4_Out1: std_logic_vector(3 downto 0);
	signal REG4_Out2: std_logic_vector(3 downto 0);
	signal REG4_Out3: std_logic_vector(3 downto 0);
	signal REG4_Out4: std_logic_vector(3 downto 0);
	signal REG4_Out5: std_logic_vector(3 downto 0);
	signal habReg4_0: std_logic;
	signal habReg4_1: std_logic;
	signal habReg4_2: std_logic;
	signal habReg4_3: std_logic;
	signal habReg4_4: std_logic;
	signal habReg4_5: std_logic;
	signal habTS8: std_logic;
	signal habTS10: std_logic;
	signal habTS11: std_logic;
	signal habTS12: std_logic;
	signal habTS13: std_logic;
	signal habTS14: std_logic;
	signal habTS15: std_logic;
	signal habTS16: std_logic;
	signal TS8_out: std_logic_vector(7 downto 0);
	signal TS10_out: std_logic;
	signal TS11_out: std_logic;
	signal TS12_out: std_logic;
	signal TS13_out: std_logic;
	signal TS14_out: std_logic;
	signal TS15_out: std_logic;
	signal TS16_out: std_logic;
	signal saidaEdge0: std_logic;
	signal saidaEdge1: std_logic;
	signal saidaEdge2: std_logic;
	signal saida_FFKEY0: std_logic;
	signal saida_FFKEY1: std_logic;
	signal saida_FFRe: std_logic;
	signal saidaLimpaKEY0: std_logic;
	signal saidaLimpaKEY1: std_logic;
	signal saidaLimpaRe: std_logic;
  

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
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => pc_rom, Dado => saida_rom);
			 

RAM : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 6)
          port map (addr => Data_address(5 downto 0),  we => wr, 
						  re => rd,
						  habilita => saida_decoder1(0),
						  clk => CLK,
						  dado_in => saida_reg,
						  dado_out => dataIn);
						  
CPU : entity work.CPU port map (Wr => wr,
										  Rd => rd,
										  ROM_Address => pc_rom,
										  Instruction_IN => saida_rom,
										  Data_IN => dataIn,
										  Data_OUT => saida_reg,
										  Data_Address => Data_Address,
										  Clock => CLK);
										  

										  
DECO1 : entity work.decoder3x8 port map( entrada => Data_Address (8 downto 6),
													  saida => saida_decoder1);
													  
DECO2 : entity work.decoder3x8 port map( entrada => Data_Address (2 downto 0),
													  saida => saida_decoder2);
													  
FF1: entity work.FlipFlop port map (DIN => saida_reg(0),
												DOUT => saida_FF1,
												ENABLE => habFF1,
											   CLK => CLK,
												RST => '0');
												
FF2: entity work.FlipFlop port map (DIN => saida_reg(0),
												DOUT => saida_FF2,
												ENABLE => habFF2,
											   CLK => CLK,
												RST => '0');
												
REG8 : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => saida_reg(7 downto 0), DOUT => saida_REG8, ENABLE => habReg8, CLK => CLK, RST => '0');
			 
REG4_0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => saida_reg(3 downto 0), DOUT => REG4_Out0, ENABLE => habReg4_0, CLK => CLK, RST => '0');
	
REG4_1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => saida_reg(3 downto 0), DOUT => REG4_Out1, ENABLE => habReg4_1, CLK => CLK, RST => '0');

REG4_2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => saida_reg(3 downto 0), DOUT => REG4_Out2, ENABLE => habReg4_2, CLK => CLK, RST => '0');
			 
REG4_3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => saida_reg(3 downto 0), DOUT => REG4_Out3, ENABLE => habReg4_3, CLK => CLK, RST => '0');

REG4_4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => saida_reg(3 downto 0), DOUT => REG4_Out4, ENABLE => habReg4_4, CLK => CLK, RST => '0');
			 
REG4_5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => saida_reg(3 downto 0), DOUT => REG4_Out5, ENABLE => habReg4_5, CLK => CLK, RST => '0');

			 
display0 :  entity work.conversorHex7Seg
        port map(dadoHex => REG4_Out0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => dis0);
					  
display1 :  entity work.conversorHex7Seg
        port map(dadoHex => REG4_Out1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => dis1);
				
display2 :  entity work.conversorHex7Seg
        port map(dadoHex => REG4_Out2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => dis2);
				
display3 :  entity work.conversorHex7Seg
        port map(dadoHex => REG4_Out3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => dis3);
				
display4 :  entity work.conversorHex7Seg
        port map(dadoHex => REG4_Out4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => dis4);
				
display5 :  entity work.conversorHex7Seg
        port map(dadoHex => REG4_Out5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => dis5);

TST8: entity work.buffer_3_state_8portas
        port map(entrada => SW(7 downto 0), habilita =>  habTS8, saida => dataIn);
		
TST10: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & SW(8), habilita =>  habTS10, saida => dataIn);
		
TST11: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & SW(9), habilita =>  habTS11, saida => dataIn);
		 
TST12: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & saida_FFKEY0, habilita =>  habTS12, saida => dataIn);
		 
TST13: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & saida_FFKEY1, habilita =>  habTS13, saida => dataIn);
		 
TST14: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(2), habilita =>  habTS14, saida => dataIn);
		  
TST15: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(3), habilita =>  habTS15, saida => dataIn);
		  
TST16: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & saida_FFRe, habilita =>  habTS16, saida => dataIn);
		  
FFKEY0: entity work.FlipFlop port map (DIN => '1',
												DOUT => saida_FFKEY0,
												ENABLE => '1',
											   CLK => saidaEdge0,
												RST => saidaLimpaKEY0);
												
FFKEY1: entity work.FlipFlop port map (DIN => '1',
												DOUT => saida_FFKEY1,
												ENABLE => '1',
											   CLK => saidaEdge1,
												RST => saidaLimpaKEY1);
												
FFRe: entity work.FlipFlop port map (DIN => '1',
												DOUT => saida_FFRe,
												ENABLE => '1',
											   CLK => saidaEdge2,
												RST => saidaLimpaRe);
												
detectorKEY0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => saidaEdge0);

detectorKEY1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => saidaEdge1);
		  
detectorRe: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not FPGA_RESET_N), saida => saidaEdge2);




saidaLimpaKEY0 <= wr and Data_Address(8) and Data_Address(7) and Data_Address(6) and Data_Address(5) and Data_Address(4) and Data_Address(3) and Data_Address(2)
                  and Data_Address(1) and Data_Address(0);
						
saidaLimpaKEY1 <= wr and Data_Address(8) and Data_Address(7) and Data_Address(6) and Data_Address(5) and Data_Address(4) and Data_Address(3) and Data_Address(2)
                  and Data_Address(1) and (not Data_Address(0));
						
saidaLimpaRe <= wr and Data_Address(8) and Data_Address(7) and Data_Address(6) and Data_Address(5) and Data_Address(4) and Data_Address(3) and Data_Address(2)
                  and (not Data_Address(1)) and Data_Address(0);
		  
habTS8  <= rd and (not Data_Address(5)) and saida_decoder2(0) and saida_decoder1(5);
habTS10 <= rd and (not Data_Address(5)) and saida_decoder2(1) and saida_decoder1(5);
habTS11 <= rd and (not Data_Address(5)) and saida_decoder2(2) and saida_decoder1(5);

habTS12 <= rd and Data_Address(5) and saida_decoder2(0) and saida_decoder1(5);
habTS13 <= rd and Data_Address(5) and saida_decoder2(1) and saida_decoder1(5);
habTS14 <= rd and Data_Address(5) and saida_decoder2(2) and saida_decoder1(5);
habTS15 <= rd and Data_Address(5) and saida_decoder2(3) and saida_decoder1(5);
habTS16 <= rd and Data_Address(5) and saida_decoder2(4) and saida_decoder1(5);

					  
HEX0 <= dis0;
HEX1 <= dis1;
HEX2 <= dis2;
HEX3 <= dis3;
HEX4 <= dis4;
HEX5 <= dis5;

habReg4_5 <= saida_decoder2(5) and Data_Address(5) and saida_decoder1(4) and wr;
habReg4_4 <= saida_decoder2(4) and Data_Address(5) and saida_decoder1(4) and wr;
habReg4_3 <= saida_decoder2(3) and Data_Address(5) and saida_decoder1(4) and wr;
habReg4_2 <= saida_decoder2(2) and Data_Address(5) and saida_decoder1(4) and wr;
habReg4_1 <= saida_decoder2(1) and Data_Address(5) and saida_decoder1(4) and wr;
habReg4_0 <= saida_decoder2(0) and Data_Address(5) and saida_decoder1(4) and wr;
 			 
habReg8 <= saida_decoder1(4) and wr and saida_decoder2(0) and (not Data_Address(5));			 
habFF2  <= saida_decoder1(4) and wr and saida_decoder2(1) and (not Data_Address(5));			 
habFF1  <= saida_decoder1(4) and wr and saida_decoder2(2) and (not Data_Address(5));
LEDR (9) <= saida_FF1;
LEDR (8) <= saida_FF2;
LEDR (7 downto 0) <= saida_REG8;

end architecture;