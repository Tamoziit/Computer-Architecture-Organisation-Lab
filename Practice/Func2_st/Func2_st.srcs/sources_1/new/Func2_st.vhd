----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 02:48:37
-- Design Name: 
-- Module Name: Func2_st - Structural
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

entity Func2_st is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           R : out STD_LOGIC);
end Func2_st;

architecture Structural of Func2_st is

component Decoder_3_8_df is
    Port ( IP : in STD_LOGIC_VECTOR (2 downto 0);
           OP : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal IP1 : STD_LOGIC_VECTOR (2 downto 0);
signal D1 : STD_LOGIC_VECTOR (7 downto 0);

begin
IP1(0) <= C;
IP1(1) <= B;
IP1(2) <= A;
L1: Decoder_3_8_df Port Map(IP1, D1);
R <= D1(3) OR D1(6);
end Structural;
