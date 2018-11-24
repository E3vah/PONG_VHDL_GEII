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
-- déclaration des raquettes 
	--Largeur
	--constant raquette_gauche_x : integer :=20;
	--constant raquette_droite_x : integer :=610;
	-- constant demi_raquette_x : integer := 5;
	-- constant raquette_droite_largeur_avant: integer := raquette_droite_x+demi_raquette_x;
	-- constant raquette_droite_largeur_arriere: integer := raquette_droite_x-demi_raquette_x;
	-- constant raquette_gauche_largueur_avant : integer :=raquette_gauche_x+demi_raquette_x
	-- constant raquette_gauche_largueur_arriere : integer :=raquette_gauche_x-demi_raquette_x;

	--Hauteur
	--signal raquette_gauche_y : integer range 0 to 480 := 240;
	--signal raquette_droite_y : integer range 0 to 480 : = 240;
	--constant demi_raquette_y : integer :=30;
	-- constant limite_basse : integer :=475;
	-- constant limite_haute : integer :=5;

--déclaration de la balle constante
	--signal balle_x : integer range 0 to 640 := 320;
	--signal balle_y : integer range 0 to 480 := 240;

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
-- énumération des cas dans lesquels des pixels seront allumés en jaune
	--allumage des pixels des raquettes
		--allumage de l'axe x constant délimité par l'allumage de l'axe y gauche/droit mouvant
	--allumage des pixels de la balle selon une trajectoire
	
		end if;		
	end process;
end Behavioral;
