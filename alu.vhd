----------------------------------------------------------------------------------
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

entity ALU is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           led_p : out  STD_LOGIC_VECTOR (3 downto 0);
           led_n : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
--led_n (3 downto 1) <= "111";

led_p(3 downto 0) <="0001";

with sel select

led_n <= (not (a+b) )when "000",

(not (a-b)) when "001",

(not (a and b) ) when "010",

(not (a nand b)) when "011", 

(not (a xor b)) when "100",

(not (a xnor b)) when "101",

(not (a or b)) when "110",

 (not a) when others;


end Behavioral;

