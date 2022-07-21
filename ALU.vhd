library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity alu is
 Port ( 
	 inp1 : in std_logic_vector(15 downto 0);
	 inp2 : in std_logic_vector(15 downto 0); 
	 op_sel : in std_logic;
	 output : out std_logic_vector(15 downto 0);
	 c : out std_logic;                             ---overflow flag
	 z : out std_logic
);
end alu;

architecture Behavioral of alu is
	signal temp_out : std_logic_vector(15 downto 0);
	signal carry : std_logic;
begin
	process(inp1,inp2,op_sel,temp_out)
		begin
			case op_sel is
				when '0' =>
				   carry <= '0';
					for i in 0 to 15 loop
                   temp_out(i) <= inp1(i) xor inp2(i) xor carry;
                   carry <= (inp1(i) and inp2(i)) or (carry and inp1(i)) or (carry and inp2(i));
               end loop;
					
					output <= temp_out;
					
					-------overflow logic------------------
					c <= carry;

					--------zero flag-----------------------
					if(temp_out = "0000000000000000") then
						z <= '1';
					else
						z <= '0';
					end if;	
					
				when '1' =>
					temp_out <= inp1 nand inp2;
					output <= temp_out;
					c <= '0';
					--------zero flag-----------------------
					if(temp_out = "0000000000000000") then
						z <= '1';
					else
						z <= '0';
					end if;	
				when others =>
					NULL;
			end case;
		end process;
 
end Behavioral;