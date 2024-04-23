----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:29:07 02/13/2024 
-- Design Name: 
-- Module Name:    TFF_sph - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk_sph is
    Port ( inp : in  STD_LOGIC_VECTOR (1 downto 0);
	        Q:in  STD_LOGIC;
           led_n : out  STD_LOGIC_VECTOR (3 downto 0);
           led_p : out  STD_LOGIC_VECTOR (3 downto 0));
end jk_sph ;

architecture Behavioral of jk_sph is

begin

led_n (3 downto 1) <= "111";


led_p(3 downto 0) <="0001";

with  inp select


led_n(0) <= (not Q) when "00",


('0') when "01",


('1') when "10",

( Q) when "11",


'Z' when others;


end Behavioral;

