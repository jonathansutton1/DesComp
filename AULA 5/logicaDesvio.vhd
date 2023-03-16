library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( JMP : in std_logic;
			JEQ : in std_logic;
			flagEqual : in std_logic;
         saida   : out std_logic
  );
end entity;

architecture comportamento of logicaDesvio is

  begin
	saida <=  '1' when (JMP = '1') or (JEQ = '1' and flagEqual = '1') 
				else '0';
end architecture;