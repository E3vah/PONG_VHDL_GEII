----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:27 11/15/2018 
-- Design Name: 
-- Module Name:    diviseur_2Hz - Behavioral 
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


entity diviseur_2Hz is
    Port ( mclk : in  STD_LOGIC:='0';
           CLK : inout  STD_LOGIC:='0');
			  
end diviseur_2Hz;
		
		
	
architecture Behavioral of diviseur_2Hz is
	signal compteur : integer := 0;
begin
	process(mclk,CLK)
	begin 
		if rising_edge(mclk) -- lecture d'un front montant ou descendant
		then

				CLK<=not(CLK);

		end if;
	end process;
end Behavioral;			
			
			
			
			-- à chaque lecture d'un front montant, on incrémente de 1					
			--if compteur = 2
			--then
				--compteur <= 0;
				--CLK <= not(CLK); 
			--end if;
	--	end if;
	--end process;




