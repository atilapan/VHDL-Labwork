----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:46 03/08/2023 
-- Design Name: 
-- Module Name:    Register - Behavioral 
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

entity Regi is
    Port  (Input  : in  STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Clk    : in  STD_LOGIC;
			  Reset  : in  STD_LOGIC;
           Load   : in  STD_LOGIC);
end Register;

architecture Behavioral of Regi is
signal Internal : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

begin

process(Clk)
begin
	if(Clk'event and Clk = '0') then
		Internal <= Internal (6 downto 0);
	end if
end process

process(Reset, Load)
begin
	if(Reset = '0') then
		Internal <= "0000";
	elsif(Load = '0') then
		Internal <= Input;
	end if
end process

Output <= not Internal;

end Behavioral;

