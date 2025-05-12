----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2025 22:35:09
-- Design Name: 
-- Module Name: Adder_Subtractor_Composite_st - Structural
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

entity Adder_Subtractor_Composite_st is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CS : in STD_LOGIC;
           Res : out STD_LOGIC_VECTOR (3 downto 0);
           CB : out STD_LOGIC);
end Adder_Subtractor_Composite_st;

architecture Structural of Adder_Subtractor_Composite_st is

component FA_df is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
end component;

signal temp : STD_LOGIC_VECTOR (3 downto 0);
signal C1 : STD_LOGIC;
signal C2 : STD_LOGIC;
signal C3 : STD_LOGIC;

begin
gk: for i in 0 to 3 generate
temp(i) <= B(i) XOR CS;
end generate gk;
L1: FA_df Port Map(A(0), temp(0), CS, Res(0), C1);
L2: FA_df Port Map(A(1), temp(1), C1, Res(1), C2);
L3: FA_df Port Map(A(2), temp(2), C2, Res(2), C3);
L4: FA_df Port Map(A(3), temp(3), C3, Res(3), CB);
end Structural;
