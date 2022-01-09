----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/07/2022 11:24:41 AM
-- Design Name: 
-- Module Name: mux2x1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux2x1 is
  Port (SEL : IN std_logic;
        I0 : IN std_logic_vector(3 downto 0);
        I1 : IN std_logic_vector(3 downto 0);
        OUTP : OUT std_logic_vector(3 downto 0)
        );
end mux2x1;

architecture Behavioral of mux2x1 is

begin

    process (SEL, I0, I1) begin

    case SEL is
        when '0' => OUTP <= I0;
        when '1' => OUTP <= I1;
        when others => OUTP <= "0000";
     end case;

    end process;

end Behavioral;
