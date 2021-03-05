--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
--
-- Create Date:   
-- Design Name:   
-- Module Name:  
-- Project Name:  
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: 
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY register_1b_E_tb IS
END register_1b_E_tb;
 

ARCHITECTURE behavior OF register_1b_E_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_1b_E
    Port ( clk : in  STD_LOGIC;
		   D : in  STD_LOGIC;
           CE : in  STD_LOGIC;
		   Q : out  STD_LOGIC 
		  );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal D : std_logic := '0';
   signal CE : std_logic := '0';
   

 	--Outputs
   signal Q : std_logic := '0';
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
	constant CE_1ms_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_1b_E PORT MAP (
		  clk => clk,
 		  D => D,
		  Q => Q,
		  CE => CE
        );
--Clock process definitions
clk_process:process
begin
	clk<= '0';
	wait for clk_period/2;
	clk<= '1';
	wait for clk_period/2;
end process;

CE_process:process
begin
	CE <= '0';
	wait for 90 ns;
	CE <= '1';
	wait for 10 ns;
end process;

-- [0,150ns] = cas normal, [150ns, 300ns] = cas pour le role de CE
D <= '0' after 0ns, '1' after 50ns, '0' after 150ns, '1' after 250 ns;
--CE <= '1' after 0ns, '0' after 175ns,'1' after 275ns;


END;
