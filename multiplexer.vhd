----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:25 11/01/2017 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
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

entity multiplexer is
    Port ( clk : in  STD_LOGIC;
           in1, in2, in3, in4, in5, in6 : in  STD_LOGIC_VECTOR (3 downto 0);
           segments : out  STD_LOGIC_VECTOR (6 downto 0);
           bits : out  STD_LOGIC_VECTOR (2 downto 0);
           SegmentEnable : out  STD_LOGIC);
end multiplexer;

architecture Behavioral of multiplexer is

signal cnt:STD_LOGIC_VECTOR(2 downto 0):="000";
signal data:STD_LOGIC_VECTOR(3 downto 0);

begin

	Scan:PROCESS(clk)
	 begin
	     if clk'event and clk = '1' then
		     if cnt="101" then 
			     cnt<="000";
				  else
				  cnt<=cnt+1;
			  end if;
		  end if;
	  end process;
	  
	  MUXE:process(cnt,in1,in2,in3,in4,in5,in6)
	  begin
	      case cnt is
			    when "000"=>data<=in1;
				 when "001"=>data<=in2;
				 when "010"=>data<=in3;
				 when "011"=>data<=in4;
				 when "100"=>data<=in5;
				 when others=>data<=in6;
			 end case;
		end process;
		
		BCD2LED:process(data)
		begin
		    segments<="1111111";
		    case data is
			     when "0000"=>segments<="1000000";
				  when "0001"=>segments<="1111001";
				  when "0010"=>segments<="0100100";
				  when "0011"=>segments<="0110000";
				  when "0100"=>segments<="0011001";
				  when "0101"=>segments<="0010010";
				  when "0110"=>segments<="0000010";
				  when "0111"=>segments<="1111000";
				  when "1000"=>segments<="0000000";
				  when "1001"=>segments<="0010000";
				  when others => null;
			  end case;
		 end process;
		 
		 SegmentEnable <= '0';
		 bits <= cnt;
		 
end Behavioral;