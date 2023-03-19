----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:02 03/16/2023 
-- Design Name: 
-- Module Name:    FacNumberBlock - Behavioral 
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

entity FacNumberBlock is
    Port ( Clk : in  STD_LOGIC;
			  Reset : in STD_LOGIC;
           NumberIn : in  STD_LOGIC_VECTOR (3 downto 0);
           SegmentOut : out  STD_LOGIC_VECTOR (7 downto 0);
			  Enable : out STD_LOGIC);
end FacNumberBlock;

architecture Behavioral of FacNumberBlock is

type IntegerArray is array(1 to 6) of Integer;
constant FacNumber : IntegerArray := (2, 1, 3, 0, 1, 8);

begin
	process(Clk, Reset)
	begin
		if(Reset = '0') then
			SegmentOut <= "10111111";
		elsif(Clk'event and Clk = '0') then
			
			for i in 1 to 6 loop
				if(NumberIn = conv_std_logic_vector(FacNumber(i), 4)) then	
					case NumberIn is
						when "0000" => SegmentOut <= "11000000"; -- "0"
						when "0001" => SegmentOut <= "11111001"; -- "1"
						when "0010" => SegmentOut <= "10100100"; -- "2"
						when "0011" => SegmentOut <= "10110000"; -- "3"
						when "0100" => SegmentOut <= "10011001"; -- "4"
						when "0101" => SegmentOut <= "10010010"; -- "5"
						when "0110" => SegmentOut <= "10000010"; -- "6"
						when "0111" => SegmentOut <= "11111000"; -- "7"
						when "1000" => SegmentOut <= "10000000"; -- "8"
						when "1001" => SegmentOut <= "10010000"; -- "9"
						when others => SegmentOut <= "10111111"; -- "-"
					end case;
					exit;
				else
					SegmentOut <= "10111111"; -- "-"
				end if;
				
			end loop;
		end if;
	end process;
	
Enable <= '0';
end Behavioral;

