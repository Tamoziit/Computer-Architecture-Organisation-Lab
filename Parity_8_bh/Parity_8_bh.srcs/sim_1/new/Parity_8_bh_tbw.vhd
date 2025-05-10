----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2025 16:34:39
-- Design Name: 
-- Module Name: Parity_8_bh_tbw - Behavioral
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

entity Parity_8_bh_tbw is
--  Port ( );
end Parity_8_bh_tbw;

architecture Behavioral of Parity_8_bh_tbw is

component Parity_8_bh is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           PO : out STD_LOGIC;
           PE : out STD_LOGIC);
end component;

signal A1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal PO1 : STD_LOGIC;
signal PE1 : STD_LOGIC;

begin
uut: Parity_8_bh Port Map(A => A1, PO => PO1, PE => PE1);
stim_proc: process
begin
wait for 50ns;
A1 <= "10010010";
wait for 50ns;
A1 <= "10010000";
wait for 50ns;
A1 <= "10011010";
wait for 50ns;
A1 <= "00010011";
wait;
end process;
end Behavioral;
