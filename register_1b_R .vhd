----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity register_1b_R is
    Port ( clk : in  STD_LOGIC;
		   D : in  STD_LOGIC;
           R : in  STD_LOGIC;
		   Q : out  STD_LOGIC 
		  );
end register_1b_R;
architecture Behavioral of register_1b_R is
signal Q_int : STD_LOGIC;
begin

	Q <= Q_int;
	process(clk,D,R)
	begin
		if(rising_edge(clk)) then 
			if R = '1' then 
				Q_int <= '0' 
			else 
				Q_int <= D;
			end if;
		end if;
	end process;
end Behavioral;

