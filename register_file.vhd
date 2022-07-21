library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
    port
    ( d1,d2       : out std_logic_vector(15 downto 0);		----- Read outputs bus
      d3          : in  std_logic_vector(15 downto 0);		----- Write Input bus
      write_en 	: in  std_logic;
      read_en  	: in  std_logic;									----- is set to '1' always
      reset    	: in  std_logic;
      a1,a2,a3    : in  std_logic_vector(2 downto 0);			----- Addresses
      clk         : in  std_logic;
	   r0          : out std_logic_vector(15 downto 0);
		r1          : out std_logic_vector(15 downto 0);
		r2          : out std_logic_vector(15 downto 0);
		r3          : out std_logic_vector(15 downto 0);
		r4          : out std_logic_vector(15 downto 0);
		r5          : out std_logic_vector(15 downto 0);
		r6          : out std_logic_vector(15 downto 0);
		r7          : out std_logic_vector(15 downto 0)
		);
end register_file;

architecture behave of register_file is
	type registerFile is array(0 to 7) of std_logic_vector(15 downto 0); ----- Eight 16-bit registers
	signal registers : registerFile;

	begin

		d1 <= registers(to_integer(unsigned(a1)));
		d2 <= registers(to_integer(unsigned(a2)));

		process(clk, reset)
		begin
			if(reset = '1') then
				registers <= (others => (others => '0'));
			else
				if(clk'event and clk = '1') then
					if (write_en = '1') then
						registers(to_integer(unsigned(a3))) <= d3;
					end if;
				end if;
			end if;
		end process;
		
		r0 <= registers(0);
		r1 <= registers(1);
		r2 <= registers(2);
		r3 <= registers(3);
		r4 <= registers(4);
		r5 <= registers(5);
		r6 <= registers(6);
		r7 <= registers(7);

	end behave;
