----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:51 11/08/2018 
-- Design Name: 
-- Module Name:    vue_jeu - Behavioral 
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

-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
--use IEEE.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;


entity vue_jeu is
    Port ( X : in  STD_LOGIC_VECTOR (9 downto 0);
           Y : in  STD_LOGIC_VECTOR (9 downto 0);
           CLK : in  STD_LOGIC;
           YG : in  STD_LOGIC_VECTOR (9 downto 0);
           YD : in  STD_LOGIC_VECTOR (9 downto 0);
           XB : in  STD_LOGIC_VECTOR (9 downto 0);
           YB : in  STD_LOGIC_VECTOR (9 downto 0);
           R : out  STD_LOGIC_VECTOR (2 downto 0);
           G : out  STD_LOGIC_VECTOR (2 downto 0);
           B : out  STD_LOGIC_VECTOR (1 downto 0));
end vue_jeu;

architecture Behavioral of vue_jeu is

begin
	process(X, Y)
	begin
		R<="000";
		G<="000";
		B<="00";
		if(X=200 and Y=200)
		then
			R<="100";
			G<="100";
			B<="00";
		end if;		
	end process;
end Behavioral;