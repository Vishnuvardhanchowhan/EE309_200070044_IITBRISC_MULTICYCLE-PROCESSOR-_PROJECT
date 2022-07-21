-- author: Aksh Garg
-- eq check with three outputs.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eq_check is
  generic (
    nbits : integer := 16);
  port (
    a      : in  std_logic_vector(nbits-1 downto 0);
    b      : in  std_logic_vector(nbits-1 downto 0);
    a_eq_b : out std_logic);
end eq_check;

architecture behave  of eq_check is
signal final : std_logic_vector(nbits-1 downto 0);
begin  -- behave 
  process(a,b)
      
    begin 
    
      for i  in nbits-1 downto 0 loop
           final(i) <= a(i) xor b(i);
      end loop;  -- i
      if (final = "0000000000000000") then
	a_eq_b <= '1';
      else 
	a_eq_b <= '0';
      end if;
	
   end process;
end behave ;