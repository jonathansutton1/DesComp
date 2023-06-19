library ieee;
use ieee.std_logic_1164.all;

entity ULA1bit is
  -- Total de bits das entradas e saidas
  port (
	 a,b,slt,inverteB,carry_in : in std_logic;
	 selecao : in std_logic_vector(1 downto 0);
	 resultado, carry_out : out std_logic
  );
end entity;

architecture comportamento of ULA1bit is
  
  signal Saida_somador : std_logic;
  signal Saida_MUX2 : std_logic;
  
    begin

	
somador : entity work.somadorULA
	port map(a => a, b=> Saida_MUX2,carry_in => carry_in,
					soma => Saida_somador, carry_out => carry_out);
					
MUX2 : entity work.mux2x1bit
	port map(entradaA_MUX => b, entradaB_MUX => not(b),
				   seletor_MUX => inverteB,saida_MUX => Saida_MUX2);
					
MUX4 : entity work.mux4x1bit
	port map(entradaA_MUX => (a and Saida_MUX2), entradaB_MUX => (a or Saida_MUX2) , 
				  entradaC_MUX => Saida_somador, entradaD_MUX => slt,
				  seletor_MUX => selecao, saida_MUX => resultado);
				  
end architecture;