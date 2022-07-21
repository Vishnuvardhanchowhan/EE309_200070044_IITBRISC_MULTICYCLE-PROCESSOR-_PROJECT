library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity left1_shifter is
	generic(input_width: integer := 16;
		output_width: integer := 16);
	port(
		inp: in std_logic_vector(input_width-1 downto 0);
		outp: out std_logic_vector(output_width-1 downto 0));
end entity;

architecture shift of left1_shifter is
begin
	outp(output_width-1 downto 1) <= inp(14 downto 0);
	outp(0) <= '0';
	
end architecture;