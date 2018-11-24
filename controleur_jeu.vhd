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
           BTN0 : in  STD_LOGIC;
           BTN1 : in  STD_LOGIC;
           BTN2 : in  STD_LOGIC;
           BTN3 : in  STD_LOGIC;
           YG : inout  STD_LOGIC_VECTOR (9 downto 0);
           YD : inout  STD_LOGIC_VECTOR (9 downto 0);
           XB : inout  STD_LOGIC_VECTOR (9 downto 0);
           YB : inout  STD_LOGIC_VECTOR (9 downto 0));
end controleur_jeu;

architecture Behavioral of controleur_jeu is

begin


end Behavioral;

