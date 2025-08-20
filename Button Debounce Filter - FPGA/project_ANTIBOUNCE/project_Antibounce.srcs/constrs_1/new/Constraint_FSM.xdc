## Clock signal NEXYS 4
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz               
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];


##----Switches NEXYS 4
#set_property -dict { PACKAGE_PIN U9   IOSTANDARD LVCMOS33 } [get_ports { unit[0] }];
#set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports { unit[1] }];
#set_property -dict { PACKAGE_PIN R7   IOSTANDARD LVCMOS33 } [get_ports { unit[2] }];
#set_property -dict { PACKAGE_PIN R6   IOSTANDARD LVCMOS33 } [get_ports { unit[3] }]; 
#set_property -dict { PACKAGE_PIN R5   IOSTANDARD LVCMOS33 } [get_ports { ten[0] }];
#set_property -dict { PACKAGE_PIN V7   IOSTANDARD LVCMOS33 } [get_ports { ten[1] }];
#set_property -dict { PACKAGE_PIN V6   IOSTANDARD LVCMOS33 } [get_ports { ten[2] }];
#set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports { ten[3] }];
#set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports { hundred[0] }]; 
#set_property -dict { PACKAGE_PIN V2   IOSTANDARD LVCMOS33 } [get_ports { hundred[1] }];
#set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports { hundred[2] }];
#set_property -dict { PACKAGE_PIN T3   IOSTANDARD LVCMOS33 } [get_ports { hundred[3] }];
#set_property -dict { PACKAGE_PIN T1   IOSTANDARD LVCMOS33 } [get_ports { thousand[0] }];
#set_property -dict { PACKAGE_PIN R3   IOSTANDARD LVCMOS33 } [get_ports { thousand[1] }];
#set_property -dict { PACKAGE_PIN P3   IOSTANDARD LVCMOS33 } [get_ports { thousand[2] }];
#set_property -dict { PACKAGE_PIN P4   IOSTANDARD LVCMOS33 } [get_ports { thousand[3] }];


##7 segment display NEXYS 4
#set_property -dict { PACKAGE_PIN L3   IOSTANDARD LVCMOS33 } [get_ports { BCD[6] }]; #IO_L24N_T3_A00_D16_14 Sch=ca
#set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports { BCD[5] }]; #IO_25_14 Sch=cb
#set_property -dict { PACKAGE_PIN L5   IOSTANDARD LVCMOS33 } [get_ports { BCD[4] }]; #IO_25_15 Sch=cc
#set_property -dict { PACKAGE_PIN L4   IOSTANDARD LVCMOS33 } [get_ports { BCD[3] }]; #IO_L17P_T2_A26_15 Sch=cd
#set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports { BCD[2] }]; #IO_L13P_T2_MRCC_14 Sch=ce
#set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports { BCD[1] }]; #IO_L19P_T3_A10_D26_14 Sch=cf
#set_property -dict { PACKAGE_PIN L6   IOSTANDARD LVCMOS33 } [get_ports { BCD[0] }]; #IO_L4P_T0_D04_14 Sch=cg

#set_property -dict { PACKAGE_PIN M4   IOSTANDARD LVCMOS33 } [get_ports { dp}]; #IO_L19N_T3_A21_VREF_15 Sch=dp


##ANs segment display NEXYS 4
#set_property -dict { PACKAGE_PIN N6   IOSTANDARD LVCMOS33 } [get_ports { AN[0] }]; 
#set_property -dict { PACKAGE_PIN M6   IOSTANDARD LVCMOS33 } [get_ports { AN[1] }]; 
#set_property -dict { PACKAGE_PIN M3   IOSTANDARD LVCMOS33 } [get_ports { AN[2] }]; 
#set_property -dict { PACKAGE_PIN N5   IOSTANDARD LVCMOS33 } [get_ports { AN[3] }]; 
#set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports { AN[4] }]; 
#set_property -dict { PACKAGE_PIN N4   IOSTANDARD LVCMOS33 } [get_ports { AN[5] }]; 
#set_property -dict { PACKAGE_PIN L1   IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; 
#set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports { AN[7] }]; 



##Buttons NEXYS 4
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn
set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { bp_r }]; #IO_L9P_T1_DQS_14 Sch=btnc
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { dp_vector[1] }]; #IO_L4N_T0_D05_14 Sch=btnu
#set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { dp_vector[2] }]; #IO_L12P_T1_MRCC_14 Sch=btnl
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { dp_vector[3] }]; #IO_L10N_T1_D15_14 Sch=btnr
#set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { BTND }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd


##Pmod NEXYS 4 Header JA

set_property -dict { PACKAGE_PIN B13  IOSTANDARD LVCMOS33 } [get_ports { bp_s_r  }]; #IO_L20N_T3_A19_15 Sch=ja[1]
#set_property -dict { PACKAGE_PIN F14  IOSTANDARD LVCMOS33 } [get_ports { clk_out  }];
#set_property -dict { PACKAGE_PIN D17  IOSTANDARD LVCMOS33 } [get_ports { clk_out  }];
#set_property -dict { PACKAGE_PIN E17  IOSTANDARD LVCMOS33 } [get_ports { clk_out  }];
#set_property -dict { PACKAGE_PIN G13  IOSTANDARD LVCMOS33 } [get_ports { clk_out  }];
#set_property -dict { PACKAGE_PIN C17  IOSTANDARD LVCMOS33 } [get_ports { clk_out  }];  

##LEDS

## LEDs

set_property -dict { PACKAGE_PIN T8   IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L18P_T2_A24_15 Sch=led[0]
#set_property -dict { PACKAGE_PIN V9   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
#set_property -dict { PACKAGE_PIN R8   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
#set_property -dict { PACKAGE_PIN T6   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
#set_property -dict { PACKAGE_PIN T5   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
#set_property -dict { PACKAGE_PIN T4   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
#set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
#set_property -dict { PACKAGE_PIN U6   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]