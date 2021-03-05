----------------------------------------------------------------------------------
-- Company: 
-- Engineer:
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:   
-- Project Name: Scoring 2.0
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

entity equ45min is
    Port ( min_dec : in  STD_LOGIC_VECTOR (3 downto 0);
           min_unit : in  STD_LOGIC_VECTOR (3 downto 0);
           equ : out  STD_LOGIC);
end equ45min;

architecture Behavioral of equ45min is

begin

equ <= '1' when (min_dec = "0100" AND min_unit = "0101") ELSE '0';
--equ <= 	(NOT(min_dec(3)) AND min_dec(2) AND NOT(min_dec(2)) AND NOT(min_dec(1))) AND (NOT(min_unit(3)) AND min_unit(2) AND NOT(min_unit(2)) AND min_unit(1))
end Behavioral;

