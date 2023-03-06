----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:54 03/06/2023 
-- Design Name: 
-- Module Name:    Filter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Filter is
    Port ( FilterClk : in  STD_LOGIC;
           FilterIn : in  STD_LOGIC;
           FilterOut : out  STD_LOGIC);
end Filter;

architecture Behavioral of Filter is
signal FilterCount : std_logic_vector(15 downto 0) := (others => '0');
signal FilterInPrev : std_logic := '1';
constant FILT_CONST : natural := 20000;

begin
	process (FilterClk)
	begin
		if(FilterClk'event and FilterClk = '1') then
			FilterInPrev <= FilterIn;
		end if;
	end process;
	
	process (FilterClk, FilterIn)
	begin
		if(FilterClk'event and FilterClk = '1') then
			if(FilterInPrev /= FilterIn) then
				FilterCount <= (others => '0');
			else
				FilterCount <= FilterCount + 1;
				if(FilterCount = FILT_CONST) then
					FilterOut <= FilterIn;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

