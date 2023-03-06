----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:53:01 03/06/2023 
-- Design Name: 
-- Module Name:    CustomCounter - Behavioral 
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

entity CustomCounter is
    Port ( Reset : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           Mode : in  STD_LOGIC;
           Increment : in  STD_LOGIC_VECTOR (2 downto 0));
end CustomCounter;

architecture Behavioral of CustomCounter is
signal Count : STD_LOGIC_VECTOR (3 downto 0);

begin
process(Clk, Load, Reset, D, Mode, Increment)
begin
	if (Reset = '0') then
		Count <= "0000";
	elsif (Load = '0') then
		Count <= D;
	elsif (Clk'event and Clk = '0') then
		if (Mode = '0') then
			Count <= Count + Increment;
		elsif (Mode = '1') then
			Count <= Count - Increment;
		end if;
	end if;
end process;

Q <= not Count;

end Behavioral;

