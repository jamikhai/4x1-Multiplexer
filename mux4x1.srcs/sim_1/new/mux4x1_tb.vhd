----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/07/2022 06:11:16 PM
-- Design Name: 
-- Module Name: mux4x1_tb - Behavioral
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

entity mux4x1_tb is
--  Port ( );
end mux4x1_tb;

architecture Behavioral of mux4x1_tb is


signal SEL : std_logic_vector(1 downto 0);
signal I0 : std_logic_vector(3 downto 0);
signal I1 : std_logic_vector(3 downto 0);
signal I2 : std_logic_vector(3 downto 0);
signal I3 : std_logic_vector(3 downto 0);
signal OUTP : std_logic_vector(3 downto 0);

begin

UUT : entity work.mux4x1 port map(
    SEL => SEL,
    I0 => I0,
    I1 => I1,
    I2 => I2,
    I3 => I3,
    OUTP => OUTP);

I0 <= "0001";
I1 <= "0010";
I2 <= "0100";
I3 <= "1000";

    Simulation: process
    constant period : time := 20 ns;
    begin
    
    SEL <= "00";
    wait for period;
    SEL <= "01";
    wait for period;
    SEL <= "10";
    wait for period;
    SEL <= "11";
    wait for period;
    
    end process;

end Behavioral;
