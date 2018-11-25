--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:32:44 11/15/2018
-- Design Name:   
-- Module Name:   Z:/Documents/fichier_etude/SIN1/Jeu_Pong/vue_jeu_tb.vhd
-- Project Name:  JeuPONG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vue_jeu
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
 
ENTITY vue_jeu_tb IS
END vue_jeu_tb;
 
ARCHITECTURE behavior OF vue_jeu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vue_jeu
    PORT(
         X : IN  std_logic_vector(9 downto 0);
         Y : IN  std_logic_vector(9 downto 0);
         CLK : IN  std_logic;
         YG : IN  std_logic_vector(9 downto 0);
         YD : IN  std_logic_vector(9 downto 0);
         XB : IN  std_logic_vector(9 downto 0);
         YB : IN  std_logic_vector(9 downto 0);
         R : OUT  std_logic_vector(2 downto 0);
         G : OUT  std_logic_vector(2 downto 0);
         B : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(9 downto 0) := (others => '0');
   signal Y : std_logic_vector(9 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal YG : std_logic_vector(9 downto 0) := (others => '0');
   signal YD : std_logic_vector(9 downto 0) := (others => '0');
   signal XB : std_logic_vector(9 downto 0) := (others => '0');
   signal YB : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal R : std_logic_vector(2 downto 0);
   signal G : std_logic_vector(2 downto 0);
   signal B : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vue_jeu PORT MAP (
          X => X,
          Y => Y,
          CLK => CLK,
          YG => YG,
          YD => YD,
          XB => XB,
          YB => YB,
          R => R,
          G => G,
          B => B
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
