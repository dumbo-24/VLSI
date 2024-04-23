----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:32:50 04/13/2024 
-- Design Name: 
-- Module Name:    DFF_1234 - Behavioral 
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

entity DFF_1234 is
    Port ( d : in  STD_LOGIC;
           led_n : out  STD_LOGIC_VECTOR (3 downto 0);
           led_p : out  STD_LOGIC_VECTOR (3 downto 0));
end DFF_1234;

architecture Behavioral of DFF_1234 is

begin




led_n (3 downto 1) <= "111";


led_p(3 downto 0) <="0001";



led_n(0) <=  d;





end Behavioral;


