----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:07 11/01/2017 
-- Design Name: 
-- Module Name:    clock - Behavioral 
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

entity clock is
    Port ( clkin : in  STD_LOGIC;
           clk1k : out  STD_LOGIC;
           clk100 : out  STD_LOGIC);
end clock;

architecture Behavioral of clock is
    signal cnter0 : integer range 0 to 23999 :=0;
	 signal cnter1 : integer range 0 to 4 :=0;
	 signal clkout1k_tmp,clkout100_tmp:STD_LOGIC:='0';
begin

process(clkin) is
begin
    if clkin' event and clkin='1' then
	     if cnter0=23999 then
		     cnter0 <=0;
			  clkout1k_tmp<=not clkout1k_tmp;
		  else
		     cnter0<=cnter0+1;
		  end if;
	 end if;
end process;
clk1k<=clkout1k_tmp;

process(clkout1k_tmp)is
begin
    if clkout1k_tmp' event and clkout1k_tmp='1' then
	     if cnter1=4 then
		     cnter1<=0;
			  clkout100_tmp<=not clkout100_tmp;
		  else cnter1<=cnter1+1;
		  end if;
	 end if;
end process;
clk100<=clkout100_tmp;

end Behavioral;
