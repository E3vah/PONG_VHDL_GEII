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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.


entity controleur_VGA is
    Port ( CLK : in  STD_LOGIC:='1';
           HS : out STD_LOGIC;
           VS : out  STD_LOGIC;
           X : inout  STD_LOGIC_VECTOR (9 downto 0);
           Y : inout  STD_LOGIC_VECTOR (9 downto 0);
           FRAME : inout  STD_LOGIC;
			  reset : in STD_LOGIC:='0');
end controleur_VGA;

architecture Behavioral of controleur_VGA is
signal HS1, VS1 : STD_LOGIC;
begin
	VS <= VS1;
	HS <= HS1;
	
	process(CLK,X,Y,FRAME)
	begin
		if reset='0'
		then
			X<=(others=>'0');	-- Initialisation de la variable X à 0
			Y<=(others=>'0');	-- Initialisation de la variable Y à 0
			HS1 <= '1';			-- Initialisation de HS comme front montant
			VS1 <= '1';			-- Initialisation de VS comme front montant
			FRAME<='0';			-- Initialisation de l'action sur le controleur de jeu
		elsif rising_edge(CLK)
		then
			X<=X+1;
			FRAME <= '0'; -- attente d'une nouvelle instruction vers le controlleur de jeu
			
			if X=799 -- initialisation d'une nouvelle ligne
			then
				X<=(others=>'0');
				Y<=Y+1;

				if Y=520 -- initialisation d'une nouvelle colonne
				then
					Y<=(others=>'0');
					FRAME<='1';		-- Début d'une nouvelle action sur le contrôleur jeu ce qui équivaut au début d'un changement d'écran
				end if;

			-- VS
				if Y=489 or Y=491 -- fin de l'écran --> incrémentation d'une ligne (d'un nouvel écran)
				then
					VS1 <= not(VS1);
				end if;
				
			end if;
			
			-- HS
			if X=655 or X=751 -- fin de la ligne -- extinction temporaire de l'écran
			then
				HS1 <= not(HS1); -- front descendant
			end if;
			
		end if;
	end process;

end Behavioral;

