----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:29:19 03/09/2023 
-- Design Name: 
-- Module Name:    BCDTo7Seg - Behavioral 
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

entity BCDTo7Seg is
    Port ( BCDIn : in  STD_LOGIC_VECTOR (3 downto 0);
           SegmentOut : out  STD_LOGIC_VECTOR (7 downto 0);
			  Clk : in  STD_LOGIC);
end BCDTo7Seg;

architecture Behavioral of BCDTo7Seg is

begin
	process(Clk, BCDIn)
	begin 
		if (Clk'event and Clk = '0') then
			case BCDIn is
				when "0000" => SegmentOut <= "11000000";
				when "0001" => SegmentOut <= "11111001";
				when "0010" => SegmentOut <= "10100100";
				when "0011" => SegmentOut <= "10110000";
				when "0100" => SegmentOut <= "10011001";
				when "0101" => SegmentOut <= "10010010";
				when "0110" => SegmentOut <= "10000010";
				when "0111" => SegmentOut <= "11111000";
				when "1000" => SegmentOut <= "10000000";
				when "1001" => SegmentOut <= "10010000";
				when "1010" => SegmentOut <= "10001000";
				when "1011" => SegmentOut <= "10000011";
				when "1100" => SegmentOut <= "11000110";
				when "1101" => SegmentOut <= "10100001";
				when "1110" => SegmentOut <= "10000110";
				when "1111" => SegmentOut <= "10001110";
				when others => NULL;
			end case;
		end if;
	end process;
end Behavioral;

