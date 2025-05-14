----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 02:35:28
-- Design Name: 
-- Module Name: Func1_df - dataflow
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

entity Func1_df is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           R : out STD_LOGIC);
end Func1_df;

architecture dataflow of Func1_df is

signal D: STD_LOGIC_VECTOR (7 downto 0);

begin
-- Decoder
D(0) <= (NOT A) AND (NOT B) AND (NOT C);
D(1) <= (NOT A) AND (NOT B) AND C;
D(2) <= (NOT A) AND B AND (NOT C);
D(3) <= (NOT A) AND B AND C;
D(4) <= A AND (NOT B) AND (NOT C);
D(5) <= A AND (NOT B) AND C;
D(6) <= A AND B AND (NOT C);
D(7) <= A AND B AND C;
-- f(A, B, C) = D(0) + D(6)
R <= D(0) OR D(6);
end dataflow;
