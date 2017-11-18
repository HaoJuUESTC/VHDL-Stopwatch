----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:05 11/01/2017 
-- Design Name: 
-- Module Name:    counter10 - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter10 is
    Port ( enable : in  STD_LOGIC;
           reset, save, load : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           out10 : inout  STD_LOGIC_VECTOR (3 downto 0);
			  carry: out STD_LOGIC);

			  --in10 : in  STD_LOGIC_VECTOR (3 downto 0)
           end counter10;

architecture Behavioral of counter10 is


signal n,count10: STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal SaveCurrent,ena: STD_LOGIC := '0';

begin

EnableOrDisable: process(enable)
begin
if (enable'event and enable = '1')then
ena <= not ena;
end if;
end process;

SaveCurrentData: process(save)
begin
if (save'event and save = '1')then
SaveCurrent <= not SaveCurrent;
end if;
end process;

SaveCurrentToMemory: process(SaveCurrent)
begin
if SaveCurrent = '1' then
n <= count10;
end if;
end process;

Count6Main: process(clk,reset,ena)
begin
if load= '0' then
count10 <= n;
else
if ena = '1' then
	if reset = '0' then
		count10 <= "0000";
		elsif (clk'event and clk = '1') then
			if count10 = "1001" then
				count10 <= "0000";
				carry <= '1';
				elsif count10 < "1001" then
					count10 <= count10+1;
					carry <= '0';
			end if;			
	end if;
end if;
end if;
end process;
out10 <= count10;
end Behavioral;


