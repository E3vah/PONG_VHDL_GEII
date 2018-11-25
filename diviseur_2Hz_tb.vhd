--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:36:07 11/15/2018
-- Design Name:   
-- Module Name:   Z:/Documents/fichier_etude/SIN1/Jeu_Pong/diviseur_2Hz_tb.vhd
-- Project Name:  JeuPONG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: diviseur_2Hz
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
 
ENTITY diviseur_2Hz_tb IS
END diviseur_2Hz_tb;
 
ARCHITECTURE behavior OF diviseur_2Hz_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT diviseur_2Hz
    PORT(
         mclk : IN  std_logic;
         CLK : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal mclk : std_logic := '0';

	--BiDirs
   signal CLK : std_logic;

   -- Clock period definitions
   constant mclk_period : time := 20 ns;
   constant CLK_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: diviseur_2Hz PORT MAP (
          mclk => mclk,
          CLK => CLK
        );

   -- Clock process definitions
   mclk_process :process
   begin
		mclk <= '0';
		wait for mclk_period/2;
		mclk <= '1';
		wait for mclk_period/2;
   end process;
END;
