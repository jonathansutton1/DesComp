library ieee;
use ieee.std_logic_1164.all;

entity ULAMIPS is
  -- Total de bits das entradas e saidas
  port (
	 a,b : in std_logic_vector(31 downto 0);
	 inverteB : in std_logic;
	 selecao : in std_logic_vector(1 downto 0);
	 z : out std_logic;
	 resultado : out std_logic_vector(31 downto 0)
  );
end entity;

architecture comportamento of ULAMIPS is
  
  signal Carry_out0 : std_logic;
  signal Carry_out1 : std_logic;
  signal Carry_out2 : std_logic;
  signal Carry_out3 : std_logic;
  signal Carry_out4 : std_logic;
  signal Carry_out5 : std_logic;
  signal Carry_out6 : std_logic;
  signal Carry_out7 : std_logic;
  signal Carry_out8 : std_logic;
  signal Carry_out9 : std_logic;
  signal Carry_out10 : std_logic;
  signal Carry_out11 : std_logic;
  signal Carry_out12 : std_logic;
  signal Carry_out13 : std_logic;
  signal Carry_out14 : std_logic;
  signal Carry_out15 : std_logic;
  signal Carry_out16 : std_logic;
  signal Carry_out17 : std_logic;
  signal Carry_out18 : std_logic;
  signal Carry_out19 : std_logic;
  signal Carry_out20 : std_logic;
  signal Carry_out21 : std_logic;
  signal Carry_out22 : std_logic;
  signal Carry_out23 : std_logic;
  signal Carry_out24 : std_logic;
  signal Carry_out25 : std_logic;
  signal Carry_out26 : std_logic;
  signal Carry_out27 : std_logic;
  signal Carry_out28 : std_logic;
  signal Carry_out29 : std_logic;
  signal Carry_out30 : std_logic;
  signal Carry_out31 : std_logic;
  signal Saida_overflow : std_logic;
  
   begin

  
BIT0 : entity work.ULA1bit
	port map(a => a(0),b => b(0),slt =>Saida_overflow,inverteB => inverteB,
	         carry_in => inverteB, selecao => selecao,
				resultado => resultado(0), carry_out => Carry_out0);
  
BIT1 : entity work.ULA1bit
	port map(a => a(1),b => b(1),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out0, selecao => selecao,
				resultado => resultado(1), carry_out => Carry_out1);

BIT2 : entity work.ULA1bit
	port map(a => a(2),b => b(2),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out1, selecao => selecao,
				resultado => resultado(2), carry_out => Carry_out2);

BIT3 : entity work.ULA1bit
	port map(a => a(3),b => b(3),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out2, selecao => selecao,
				resultado => resultado(3), carry_out => Carry_out3);

BIT4 : entity work.ULA1bit
	port map(a => a(4),b => b(4),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out3, selecao => selecao,
				resultado => resultado(4), carry_out => Carry_out4);   

BIT5 : entity work.ULA1bit
	port map(a => a(5),b => b(5),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out4, selecao => selecao,
				resultado => resultado(5), carry_out => Carry_out5);  

BIT6 : entity work.ULA1bit
	port map(a => a(6),b => b(6),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out5, selecao => selecao,
				resultado => resultado(6), carry_out => Carry_out6);   

BIT7 : entity work.ULA1bit
	port map(a => a(7),b => b(7),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out6, selecao => selecao,
				resultado => resultado(7), carry_out => Carry_out7);

BIT8 : entity work.ULA1bit
	port map(a => a(8),b => b(8),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out7, selecao => selecao,
				resultado => resultado(8), carry_out => Carry_out8);  

BIT9 : entity work.ULA1bit
	port map(a => a(9),b => b(9),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out8, selecao => selecao,
				resultado => resultado(9), carry_out => Carry_out9);   

BIT10 : entity work.ULA1bit
	port map(a => a(10),b => b(10),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out9, selecao => selecao,
				resultado => resultado(10), carry_out => Carry_out10);     

BIT11 : entity work.ULA1bit
	port map(a => a(11),b => b(11),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out10, selecao => selecao,
				resultado => resultado(11), carry_out => Carry_out11);   

BIT12 : entity work.ULA1bit
	port map(a => a(12),b => b(12),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out11, selecao => selecao,
				resultado => resultado(12), carry_out => Carry_out12);     

BIT13 : entity work.ULA1bit
	port map(a => a(13),b => b(13),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out12, selecao => selecao,
				resultado => resultado(13), carry_out => Carry_out13);     

BIT14 : entity work.ULA1bit
	port map(a => a(14),b => b(14),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out13, selecao => selecao,
				resultado => resultado(14), carry_out => Carry_out14);     

BIT15 : entity work.ULA1bit
	port map(a => a(15),b => b(15),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out14, selecao => selecao,
				resultado => resultado(15), carry_out => Carry_out15);  

BIT16 : entity work.ULA1bit
	port map(a => a(16),b => b(16),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out15, selecao => selecao,
				resultado => resultado(16), carry_out => Carry_out16);    

BIT17 : entity work.ULA1bit
	port map(a => a(17),b => b(17),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out16, selecao => selecao,
				resultado => resultado(17), carry_out => Carry_out17);    

BIT18 : entity work.ULA1bit
	port map(a => a(18),b => b(18),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out17, selecao => selecao,
				resultado => resultado(18), carry_out => Carry_out18);

BIT19 : entity work.ULA1bit
	port map(a => a(19),b => b(19),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out18, selecao => selecao,
				resultado => resultado(19), carry_out => Carry_out19);

BIT20 : entity work.ULA1bit
	port map(a => a(20),b => b(20),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out19, selecao => selecao,
				resultado => resultado(20), carry_out => Carry_out20); 

BIT21 : entity work.ULA1bit
	port map(a => a(21),b => b(21),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out20, selecao => selecao,
				resultado => resultado(21), carry_out => Carry_out21);

BIT22 : entity work.ULA1bit
	port map(a => a(22),b => b(22),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out21, selecao => selecao,
				resultado => resultado(22), carry_out => Carry_out22); 

BIT23 : entity work.ULA1bit
	port map(a => a(23),b => b(23),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out22, selecao => selecao,
				resultado => resultado(23), carry_out => Carry_out23);

BIT24 : entity work.ULA1bit
	port map(a => a(24),b => b(24),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out23, selecao => selecao,
				resultado => resultado(24), carry_out => Carry_out24); 

BIT25 : entity work.ULA1bit
	port map(a => a(25),b => b(25),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out24, selecao => selecao,
				resultado => resultado(25), carry_out => Carry_out25); 

BIT26 : entity work.ULA1bit
	port map(a => a(26),b => b(26),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out25, selecao => selecao,
				resultado => resultado(26), carry_out => Carry_out26); 

BIT27 : entity work.ULA1bit
	port map(a => a(27),b => b(27),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out26, selecao => selecao,
				resultado => resultado(27), carry_out => Carry_out27); 

BIT28 : entity work.ULA1bit
	port map(a => a(28),b => b(28),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out27, selecao => selecao,
				resultado => resultado(28), carry_out => Carry_out28);

BIT29 : entity work.ULA1bit
	port map(a => a(29),b => b(29),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out28, selecao => selecao,
				resultado => resultado(29), carry_out => Carry_out29); 

BIT30 : entity work.ULA1bit
	port map(a => a(30),b => b(30),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out29, selecao => selecao,
				resultado => resultado(30), carry_out => Carry_out30);  
  
BIT31 : entity work.ULA31bit
	port map(a => a(31),b => b(31),slt =>'0',inverteB => inverteB,
	         carry_in => Carry_out30, selecao => selecao,
				resultado => resultado(31), carry_out => Carry_out31,
				Saida_overflow =>Saida_overflow);
				  
				  
z <= not(resultado(0) or resultado(1) or resultado(2) or 
	resultado(3) or resultado(4) or resultado(5) or resultado(6) 
	or resultado(7) or resultado(8) or resultado(9) or resultado(10) 
	or resultado(11) or resultado(12) or resultado(13) or resultado(14) 
	or resultado(15) or resultado(16) or resultado(17) or resultado(18) 
	or resultado(19) or resultado(20) or resultado(21) or resultado(22) 
	or resultado(23) or resultado(24) or resultado(25) or resultado(26) 
	or resultado(27) or resultado(28) or resultado(29) or resultado(30) 
	or resultado(31));
end architecture;