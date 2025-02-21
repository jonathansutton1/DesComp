library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI :  std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := LDI  & '0' & x"04";   -- salva o valor 4 no registeador
        tmp(1)  := STA  & '1' & x"01";   -- armazena valor no endereco 257
        tmp(2)  := LDI  & '0' & x"03";   -- salva o valor 3 no registeador
        tmp(3)  := STA  & '1' & x"00";   -- armazena valor no endereco 256
        tmp(4)  := SOMA & '1' & x"00";  -- soma com o endereco 256
		  tmp(5)  := SOMA & '1' & x"00";  -- soma com o endereco 256
		  tmp(6)  := SUB  & '1' & x"01";  -- subtrai com o endereco 257
		  tmp(7)  := NOP  & '0' & x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;