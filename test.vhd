----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:30:02 09/01/2024 
-- Design Name: 
-- Module Name:    test - Behavioral 
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

entity test is
    Port ( a,b,c : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end test;

architecture Behavioral of test is
--usando seniales
signal and_1, and_2, and_3, or_1 : std_logic;

begin

and_1 <= a and b;
and_2 <= a and c;
and_3 <= b and c;
or_1 <= and_1 or and_2;
salida <= and_3 or or_1;

--salida <= ((a and b) or (a and c)) or (c and b);

end Behavioral;

