----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:05 11/08/2018 
-- Design Name: 
-- Module Name:    controleur_jeu - Behavioral 
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

entity controleur_jeu is
    Port ( CLK : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC:='1';
           BTN1 : in  STD_LOGIC='1';
           BTN2 : in  STD_LOGIC='1';
           BTN3 : in  STD_LOGIC='1';
           YG : inout  STD_LOGIC_VECTOR (9 downto 0);
           YD : inout  STD_LOGIC_VECTOR (9 downto 0);
           XB : inout  STD_LOGIC_VECTOR (9 downto 0);
           YB : inout  STD_LOGIC_VECTOR (9 downto 0);
			  FRAME : in STD_LOGIC );
end controleur_jeu;

architecture Behavioral of controleur_jeu is

begin
XB<=(others=>'0');
YB<=(others=>'0');
YG<=(others=>'0');
YD<=(others=>'0');
--process(FRAME,clk,YG,YD)
--if rising_edge(clk) and FRAME<='1' -- sauvegarde les boutons des joueurs
--then
	--if BTN0<='0' -- raquette droite et gauche
	--then
		--YG<=YG+1;
	--end if;
	--if BTN1<='0'
	--then
		--YG<=YG-1;
	--end if;
	--if BTN2<='0'
	--then
		--YD<=YD+1;
	--end if;
	--if BTN3<='0'
	--then
		--YD<=YD-1;
	--end if;
--else
	--YG<=(others=>'0');
	--YD<=(others=>'0'); --avec retour à 0 pour faire les cas limites des positions haut et bas en vue_jeu
						--Balle qui bouge vers la droite(-1) si ...ou vers la gauche(+1) si ...
						--pas de retour à 0
--end if;

end Behavioral;

