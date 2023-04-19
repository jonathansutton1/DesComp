library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSubPassa is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag:    out STD_LOGIC
    );
end entity;


architecture comportamento of ULASomaSubPassa is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal saida_flag : STD_LOGIC_VECTOR(7 downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		passa <= entradaB;
		
      saida_flag <= soma when (seletor = "01") else 
						  subtracao when (seletor = "00") else
						  passa;
		
		flag <= '1' when not(saida_flag(0) or saida_flag(1) or saida_flag(2) or saida_flag(3) or
									saida_flag(4) or saida_flag(5) or saida_flag(6) or saida_flag(7)) else
				   '0';
				
		saida <= saida_flag;	
									
end architecture;