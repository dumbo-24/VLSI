----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:27 02/01/2024 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           inp : in  STD_LOGIC_VECTOR (7 downto 0);
           DIS : out  STD_LOGIC_VECTOR (1 downto 0);
           led_p :out STD_LOGIC_VECTOR (3 downto 0);
           led_n :out STD_LOGIC_VECTOR (3 downto 0);
           SEG : out  STD_LOGIC_VECTOR (6 downto 0));
end mux;

architecture Behavioral of mux is

begin

led_n (3 downto 1) <= "111";

led_p(3 downto 0) <="0001";

DIS <= "10";

with sel select

led_n(0) <= (not inp(0)) when "000",

(not inp (1)) when "001",

(not inp (2)) when "010",

(not inp (3)) when "011",

(not inp(4)) when "100",

(not inp (5)) when "101",

(not inp (6)) when "110",

(not inp (7)) when "111",

'Z' when others;

--Display-- 

with sel select

SEG <=

"1000000" when "000",

"1111001" when "001",

"0100100" when "010",

"0110000" when "011",

"0011001" when "100",

"0010010" when "101",

"0000010" when "110",

"1111000" when "111",

"0000000" when others;

end Behavioral;



