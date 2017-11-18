----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:31:29 11/01/2017 
-- Design Name: 
-- Module Name:    counter6 - Behavioral 
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

entity counter6 is
    Port ( enable : in  STD_LOGIC;
           reset, save, load : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           out6 : inout  STD_LOGIC_VECTOR (3 downto 0);
			  carry: out STD_LOGIC);

			  --in10 : in  STD_LOGIC_VECTOR (3 downto 0)
           end counter6;

architecture Behavioral of counter6 is


signal n,count6: STD_LOGIC_VECTOR (3 downto 0) := "0000";
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
n <= count6;
end if;
end process;

Count6Main: process(clk,reset,ena)
begin
if load= '0' then
count6 <= n;
else
if ena = '1' then
	if reset = '0' then
		count6 <= "0000";
		elsif (clk'event and clk = '1') then
			if count6 = "0101" then
				count6 <= "0000";
				carry <= '1';
				elsif count6 < "0101" then
					count6 <= count6+1;
					carry <= '0';
			end if;			
	end if;
end if;
end if;
end process;
out6 <= count6;
end Behavioral;
