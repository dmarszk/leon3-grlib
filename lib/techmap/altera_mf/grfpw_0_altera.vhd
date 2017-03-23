------------------------------------------------------------------------------
--  This file is a part of the GRLIB VHDL IP LIBRARY
--  Copyright (C) 2015, Cobham Gaisler AB - all rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE GAISLER LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.
------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity grfpw_0_altera is
port(
  rst :  in std_logic;
  clk :  in std_logic;
  holdn :  in std_logic;
  cpi_flush :  in std_logic;
  cpi_exack :  in std_logic;
  cpi_a_rs1 : in std_logic_vector (4 downto 0);
  cpi_d_pc : in std_logic_vector (31 downto 0);
  cpi_d_inst : in std_logic_vector (31 downto 0);
  cpi_d_cnt : in std_logic_vector (1 downto 0);
  cpi_d_trap :  in std_logic;
  cpi_d_annul :  in std_logic;
  cpi_d_pv :  in std_logic;
  cpi_a_pc : in std_logic_vector (31 downto 0);
  cpi_a_inst : in std_logic_vector (31 downto 0);
  cpi_a_cnt : in std_logic_vector (1 downto 0);
  cpi_a_trap :  in std_logic;
  cpi_a_annul :  in std_logic;
  cpi_a_pv :  in std_logic;
  cpi_e_pc : in std_logic_vector (31 downto 0);
  cpi_e_inst : in std_logic_vector (31 downto 0);
  cpi_e_cnt : in std_logic_vector (1 downto 0);
  cpi_e_trap :  in std_logic;
  cpi_e_annul :  in std_logic;
  cpi_e_pv :  in std_logic;
  cpi_m_pc : in std_logic_vector (31 downto 0);
  cpi_m_inst : in std_logic_vector (31 downto 0);
  cpi_m_cnt : in std_logic_vector (1 downto 0);
  cpi_m_trap :  in std_logic;
  cpi_m_annul :  in std_logic;
  cpi_m_pv :  in std_logic;
  cpi_x_pc : in std_logic_vector (31 downto 0);
  cpi_x_inst : in std_logic_vector (31 downto 0);
  cpi_x_cnt : in std_logic_vector (1 downto 0);
  cpi_x_trap :  in std_logic;
  cpi_x_annul :  in std_logic;
  cpi_x_pv :  in std_logic;
  cpi_lddata : in std_logic_vector (31 downto 0);
  cpi_dbg_enable :  in std_logic;
  cpi_dbg_write :  in std_logic;
  cpi_dbg_fsr :  in std_logic;
  cpi_dbg_addr : in std_logic_vector (4 downto 0);
  cpi_dbg_data : in std_logic_vector (31 downto 0);
  cpo_data : out std_logic_vector (31 downto 0);
  cpo_exc :  out std_logic;
  cpo_cc : out std_logic_vector (1 downto 0);
  cpo_ccv :  out std_logic;
  cpo_ldlock :  out std_logic;
  cpo_holdn :  out std_logic;
  cpo_dbg_data : out std_logic_vector (31 downto 0);
  rfi1_rd1addr : out std_logic_vector (3 downto 0);
  rfi1_rd2addr : out std_logic_vector (3 downto 0);
  rfi1_wraddr : out std_logic_vector (3 downto 0);
  rfi1_wrdata : out std_logic_vector (31 downto 0);
  rfi1_ren1 :  out std_logic;
  rfi1_ren2 :  out std_logic;
  rfi1_wren :  out std_logic;
  rfi2_rd1addr : out std_logic_vector (3 downto 0);
  rfi2_rd2addr : out std_logic_vector (3 downto 0);
  rfi2_wraddr : out std_logic_vector (3 downto 0);
  rfi2_wrdata : out std_logic_vector (31 downto 0);
  rfi2_ren1 :  out std_logic;
  rfi2_ren2 :  out std_logic;
  rfi2_wren :  out std_logic;
  rfo1_data1 : in std_logic_vector (31 downto 0);
  rfo1_data2 : in std_logic_vector (31 downto 0);
  rfo2_data1 : in std_logic_vector (31 downto 0);
  rfo2_data2 : in std_logic_vector (31 downto 0));
end grfpw_0_altera;

architecture beh of grfpw_0_altera is

begin

  assert false report "Simulation of netlist FPU is not supported on this technology. Please disable the FPU to run simulation" severity failure;
  
end beh;

