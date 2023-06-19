library ieee;
use ieee.std_logic_1164.all;

entity somadorULA is
  -- Total de bits das entradas e saidas
  port (
	 a,b,carry_in : in std_logic;
	 soma, carry_out : out std_logic
  );
end entity;

architecture comportamento of somadorULA is
  begin
  
    soma <= carry_in xor (a xor b);
	 carry_out <= (a and b) or (carry_in and (a xor b));
end architecture;