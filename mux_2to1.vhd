library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_2to1 is	                                        
	port(
		s0, input0, input1 : in std_logic;	        
		output : out std_logic);	                
end entity;

architecture behave of mux_2to1 is

begin
	output <= ((s0 and input1) or ((not s0) and input0));

end behave;
