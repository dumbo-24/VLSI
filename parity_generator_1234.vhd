------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:19:31 03/26/2024 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 4 bit ALU
-- Target Devices: 
-- Tool versions: 
-- Description: Sphon
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity paritygenerator is
 Port ( sel: in  STD_LOGIC_VECTOR (2 downto 0);
          --sel : in  STD_LOGIC_VECTOR (2 downto 0);
           
           led_p : out  STD_LOGIC_VECTOR (3 downto 0);
           led_n : out  STD_LOGIC_VECTOR (3 downto 0));
end paritygenerator;

architecture Behavioral of paritygenerator is

begin


led_p(3 downto 0) <="0001";

with sel select

led_n(3 downto 0) <="1111" when "000",

 "0110" when "001",

 "0101"  when "010",

"1100" when "011", 

"0011" when "100",

"1010" when "101",

"1001" when "110",
"0000" when "111",

 "1111" when others;


end Behavioral;

