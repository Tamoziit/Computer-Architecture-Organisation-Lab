----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2025 23:27:10
-- Design Name: 
-- Module Name: MUX_8_1_st - Structural
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

entity MUX_8_1_st is
    Port ( IP : in STD_LOGIC_VECTOR (7 downto 0);
           Sel : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC);
end MUX_8_1_st;

architecture Structural of MUX_8_1_st is

component MUX_4_1_df is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC);
end component;

component MUX_2_1_df is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           sel : in STD_LOGIC;
           z : out STD_LOGIC);
end component;

signal Y1 : STD_LOGIC;
signal Y2 : STD_LOGIC;

begin
L1: MUX_4_1_df Port Map(IP(7 downto 4), Sel(1 downto 0), Y1);
L2: MUX_4_1_df Port Map(IP(3 downto 0), Sel(1 downto 0), Y2);
L3: MUX_2_1_df Port Map(Y2, Y1, Sel(2), OP);
end Structural;
