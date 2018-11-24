----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:56 11/08/2018 
-- Design Name: 
-- Module Name:    controleur_VGA - Behavioral 
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
--signal compteur : integer := 0;
entity controleur_VGA is
    Port ( CLK : in  STD_LOGIC:='1';
           HS : inout  STD_LOGIC;
           VS : inout  STD_LOGIC;
           X : inout  STD_LOGIC_VECTOR (9 downto 0):="1111";
           Y : inout  STD_LOGIC_VECTOR (9 downto 0)="111";
           FRAME : inout  STD_LOGIC);
end controleur_VGA;

architecture Behavioral of controleur_VGA is

begin
	process(CLK,compteur_X,compteur_Y)
	begin
		if rising_edge(CLK)
		
			if compteur_X=639 -- fin de la ligne --> incrémentation d'une colonne
			then
				CLK<=not(CLK); -- front descendant
			elsif compteur_X=799
			then
			CLK<=not(CLK)
			if compteur_Y<=479 -- fin de l'écran --> incrémentation d'une ligne (d'un nouvel écran)
			then
				CLK<=not(CLK);
				--compteur_Y<=Y+1;
				-- départ d'une nouvelle colonne avec Y= 520
			end if
		end if
	end process

end Behavioral;

