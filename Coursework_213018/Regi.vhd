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
    Port  (Input : in  STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
           Load : in  STD_LOGIC);
end Regi;

architecture Behavioral of Regi is
signal Internal : STD_LOGIC_VECTOR (3 downto 0) := (others  => '0');

begin

process(Clk, Reset, Load, Input, Internal)
begin
	if(Load = '0') then
		Internal <= not Input;
	elsif(Reset = '0') then
		Internal <= (others => '0');
	elsif(Clk'event and Clk = '0') then
		Internal <= Internal (2 downto 0) & '1';
	end if;
end process;

Output <= not Internal;

end Behavioral;