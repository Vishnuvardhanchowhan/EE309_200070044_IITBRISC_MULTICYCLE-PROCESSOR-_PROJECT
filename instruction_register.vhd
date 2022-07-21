library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
library work;
use work.basic.all;

entity instruction_register is
     port(
	    din     : in std_logic_vector(15 downto 0);
            en_ir   : in std_logic;
            clk,reset : in std_logic;
	    dout: out std_logic_vector(15 downto 0) 	
	 );
end instruction_register;

architecture behavior of instruction_register is
begin
	next_instruction1:dregister
		generic map(16)
		port map(reset => reset,din => din,dout => dout,enable => en_ir,clk=>clk);
end behavior;
	
