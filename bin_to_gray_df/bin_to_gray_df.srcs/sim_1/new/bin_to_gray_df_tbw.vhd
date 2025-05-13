----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 14:15:11
-- Design Name: 
-- Module Name: bin_to_gray_df_tbw - dataflow
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

entity bin_to_gray_df_tbw is
--  Port ( );
end bin_to_gray_df_tbw;

architecture dataflow of bin_to_gray_df_tbw is

component bin_to_gray_df is
    Port ( B : in STD_LOGIC_VECTOR (2 downto 0);
           G : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal B1 : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal G1 : STD_LOGIC_VECTOR (2 downto 0);

begin
uut: bin_to_gray_df Port Map(B => B1, G => G1);
stim_proc: process
begin
wait for 50ns;
B1 <= "000";
wait for 50ns;
B1 <= "001";
wait for 50ns;
B1 <= "010";
wait for 50ns;
B1 <= "011";
wait for 50ns;
B1 <= "100";
wait for 50ns;
B1 <= "101";
wait for 50ns;
B1 <= "110";
wait for 50ns;
B1 <= "111";
wait;
end process;
end dataflow;
