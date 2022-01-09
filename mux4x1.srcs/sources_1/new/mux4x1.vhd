----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/07/2022 04:19:26 PM
-- Design Name: 
-- Module Name: mux4x1 - Behavioral
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

entity mux4x1 is
  Port (SEL : IN std_logic_vector(1 downto 0);
        I0 : IN std_logic_vector(3 downto 0);
        I1 : IN std_logic_vector(3 downto 0);
        I2 : IN std_logic_vector(3 downto 0);
        I3 : IN std_logic_vector(3 downto 0);
        OUTP : OUT std_logic_vector(3 downto 0)
        );
end mux4x1;

architecture Behavioral of mux4x1 is

component mux2x1
  Port (SEL : IN std_logic;
        I0 : IN std_logic_vector(3 downto 0);
        I1 : IN std_logic_vector(3 downto 0);
        OUTP : OUT std_logic_vector(3 downto 0)
        );
end component;

signal result1 : std_logic_vector(3 downto 0);
signal result2 : std_logic_vector(3 downto 0);

begin

LAYER_0_0 : mux2x1 port map (
    SEL => SEL(0),
    I0 => I0,
    I1 => I1,
    OUTP => result1
    );
LAYER_0_1 : mux2x1 port map (
    SEL => SEL(0),
    I0 => I2,
    I1 => I3,
    OUTP => result2
    );
LAYER_1_0 : mux2x1 port map (
    SEL => SEL(1),
    I0 => result1,
    I1 => result2,
    OUTP => OUTP
    );

end Behavioral;
