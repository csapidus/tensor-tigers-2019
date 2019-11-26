EESchema Schematic File Version 4
LIBS:V2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SALUS V2.1 Main Board"
Date ""
Rev "2"
Comp "Anti-Rotational Technologies Inc."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L V2-rescue:NodeMCU1.0(ESP-12E)-ESP8266-7971-MEDEVAC-rescue-V2-rescue U1
U 1 1 5D62AB3D
P 1970 2030
F 0 "U1" H 1970 3117 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)-ESP8266" H 1970 3011 60  0000 C CNN
F 2 "ESP8266:NodeMCU1.0(LUA)" H 1370 1180 60  0001 C CNN
F 3 "" H 1370 1180 60  0000 C CNN
	1    1970 2030
	1    0    0    -1  
$EndComp
Text Label 1170 2630 2    50   ~ 0
GND
Text Label 1170 2730 2    50   ~ 0
5V
Text Label 1740 4660 2    50   ~ 0
5V
Text Label 1740 4760 2    50   ~ 0
GND
Text Label 1740 4860 2    50   ~ 0
IMU_SCL
Text Label 1740 4960 2    50   ~ 0
IMU_SDA
NoConn ~ 1170 2330
NoConn ~ 1170 2230
NoConn ~ 2770 1830
NoConn ~ 2770 1930
$Comp
L Device:LED D1
U 1 1 5D630C93
P 9470 1600
F 0 "D1" H 9461 1816 50  0000 C CNN
F 1 "LED_GREEN" H 9461 1725 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 9470 1600 50  0001 C CNN
F 3 "~" H 9470 1600 50  0001 C CNN
	1    9470 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D630E85
P 9770 1600
F 0 "R1" V 9563 1600 50  0000 C CNN
F 1 "80R" V 9654 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9700 1600 50  0001 C CNN
F 3 "~" H 9770 1600 50  0001 C CNN
	1    9770 1600
	0    -1   -1   0   
$EndComp
NoConn ~ 2770 2630
NoConn ~ 1170 2430
NoConn ~ 1170 1530
NoConn ~ 1170 1430
NoConn ~ 1170 1330
$Comp
L Device:R R4
U 1 1 5D6B0492
P 3060 3550
F 0 "R4" V 2970 3540 50  0000 C CNN
F 1 "R" V 3050 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 2990 3550 50  0001 C CNN
F 3 "~" H 3060 3550 50  0001 C CNN
	1    3060 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D6B0DA3
P 1920 3750
F 0 "R5" V 1870 3590 50  0000 C CNN
F 1 "R" V 1910 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 1850 3750 50  0001 C CNN
F 3 "~" H 1920 3750 50  0001 C CNN
	1    1920 3750
	0    -1   -1   0   
$EndComp
Text Notes 990  3120 0    50   ~ 10
Floodlights IR/Visual
Wire Notes Line
	960  4320 3530 4320
Wire Notes Line
	3590 4320 3590 3030
Wire Notes Line
	3530 3030 960  3030
Wire Notes Line
	960  3030 960  4320
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 5D6B368F
P 2400 3650
F 0 "J6" H 2450 4067 50  0000 C CNN
F 1 "IDC Header" H 2450 3976 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 2400 3650 50  0001 C CNN
F 3 "~" H 2400 3650 50  0001 C CNN
	1    2400 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D6B4B8D
P 3210 3700
F 0 "C1" H 3325 3746 50  0000 L CNN
F 1 "100uF" H 3325 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3248 3550 50  0001 C CNN
F 3 "~" H 3210 3700 50  0001 C CNN
	1    3210 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5D6B4D07
P 1770 3970
F 0 "C2" H 1885 4016 50  0000 L CNN
F 1 "100uF" H 1885 3925 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 1808 3820 50  0001 C CNN
F 3 "~" H 1770 3970 50  0001 C CNN
	1    1770 3970
	1    0    0    -1  
$EndComp
Wire Wire Line
	1770 3820 1770 3750
Connection ~ 1770 3750
Text Label 1770 4120 3    50   ~ 0
GND
Text Label 3210 3850 3    50   ~ 0
GND
Wire Notes Line
	3540 3030 3590 3030
Wire Notes Line
	3540 4320 3590 4320
Wire Notes Line
	3620 3030 3620 4320
Wire Notes Line
	3620 4320 5230 4320
Wire Notes Line
	5230 4320 5230 3030
Wire Notes Line
	5230 3030 3620 3030
Wire Notes Line
	960  4340 3590 4340
Wire Notes Line
	3590 4340 3590 5800
Wire Notes Line
	3590 5800 960  5800
Wire Notes Line
	960  5800 960  4340
Text Notes 1010 4440 0    50   ~ 10
IMU 9250 Module
Wire Notes Line
	3620 4340 3620 5800
Wire Notes Line
	3620 5800 5230 5800
Wire Notes Line
	5230 5800 5230 4340
Wire Notes Line
	5230 4340 3620 4340
Text Notes 3640 3120 0    50   ~ 10
OpenLog uSD Card Module
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5D72E0D3
P 1940 5060
F 0 "J1" H 2020 5052 50  0000 L CNN
F 1 "IMU_Connect" H 2020 4961 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1940 5060 50  0001 C CNN
F 3 "~" H 1940 5060 50  0001 C CNN
	1    1940 5060
	1    0    0    -1  
$EndComp
NoConn ~ 1740 5060
NoConn ~ 1740 5160
NoConn ~ 1740 5260
NoConn ~ 1740 5360
NoConn ~ 1740 5460
NoConn ~ 1740 5560
Wire Notes Line
	960  3000 960  690 
Wire Notes Line
	5230 3000 960  3000
Text Notes 1020 840  0    50   ~ 10
uController + Shift Register
NoConn ~ 1170 1730
Text Notes 4270 1430 2    50   Italic 0
note: SD3/SD2/SD1 \nhave internal functions!
Text Notes 4270 1040 2    50   Italic 0
note maximum current\ndraw for GPIO is 12mA!
NoConn ~ 1170 1630
$Comp
L Device:LED D4
U 1 1 5D73ADFF
P 9460 1110
F 0 "D4" H 9451 1326 50  0000 C CNN
F 1 "LED_BLUE" H 9451 1235 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 9460 1110 50  0001 C CNN
F 3 "~" H 9460 1110 50  0001 C CNN
	1    9460 1110
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D73AE06
P 9760 1110
F 0 "R7" V 9553 1110 50  0000 C CNN
F 1 "80R" V 9644 1110 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9690 1110 50  0001 C CNN
F 3 "~" H 9760 1110 50  0001 C CNN
	1    9760 1110
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:TIP122 Q6
U 1 1 5D73D3F9
P 6610 1490
F 0 "Q6" H 6320 1810 50  0000 L CNN
F 1 "TIP122" H 6230 1730 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6810 1415 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 6610 1490 50  0001 L CNN
	1    6610 1490
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP122 Q4
U 1 1 5D73D83A
P 5980 2080
F 0 "Q4" H 5780 2320 50  0000 L CNN
F 1 "TIP122" H 5680 2240 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6180 2005 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 5980 2080 50  0001 L CNN
	1    5980 2080
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP122 Q5
U 1 1 5D73D89E
P 6600 2400
F 0 "Q5" H 6800 2310 50  0000 L CNN
F 1 "TIP122" H 6800 2230 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6800 2325 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 6600 2400 50  0001 L CNN
	1    6600 2400
	1    0    0    -1  
$EndComp
Text Label 6700 2600 2    50   ~ 0
GND
Text Label 6080 2280 2    50   ~ 0
GND
Text Label 6710 1690 2    50   ~ 0
GND
Text Label 6410 1490 2    50   ~ 0
QA
Text Label 5780 2080 2    50   ~ 0
QB
Text Label 6400 2400 2    50   ~ 0
QC
Text Notes 5480 830  0    50   ~ 10
Status LEDs
NoConn ~ 2770 1330
Text Notes 3360 1190 0    50   Italic 0
note: D0 is not reliable
NoConn ~ 2770 2530
NoConn ~ 2770 2430
NoConn ~ 1170 2130
NoConn ~ 1170 2030
NoConn ~ 1170 1830
NoConn ~ 1170 1930
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5D730DF7
P 4560 3710
F 0 "J2" H 4640 3702 50  0000 L CNN
F 1 "SD_OPENLOG_Connect" V 4810 3350 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4560 3710 50  0001 C CNN
F 3 "~" H 4560 3710 50  0001 C CNN
	1    4560 3710
	1    0    0    -1  
$EndComp
Text Label 4360 3510 2    50   ~ 0
GND
Text Label 4360 3610 2    50   ~ 0
GND
Text Label 4360 3710 2    50   ~ 0
3.3V
Text Label 4360 3910 2    50   ~ 0
RX_SD-TX_8266
Text Label 4360 3810 2    50   ~ 0
TX_SD-RX_8266
Text Label 4360 4010 2    50   ~ 0
SD_RST
Wire Notes Line
	8980 2990 8980 680 
Wire Notes Line
	8980 2990 11030 2990
Wire Notes Line
	11030 2990 11030 680 
Wire Notes Line
	11030 680  8980 680 
NoConn ~ 1170 2530
Text Label 9910 1110 0    50   ~ 0
5V
Text Label 9920 1600 0    50   ~ 0
5V
$Comp
L Device:LED D2
U 1 1 5D630B47
P 9450 2170
F 0 "D2" H 9441 2386 50  0000 C CNN
F 1 "LED_RED" H 9441 2295 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 9450 2170 50  0001 C CNN
F 3 "~" H 9450 2170 50  0001 C CNN
	1    9450 2170
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D630D8E
P 9750 2170
F 0 "R2" V 9550 2170 50  0000 C CNN
F 1 "130R" V 9630 2160 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9680 2170 50  0001 C CNN
F 3 "~" H 9750 2170 50  0001 C CNN
	1    9750 2170
	0    -1   -1   0   
$EndComp
Text Label 9900 2170 0    50   ~ 0
5V
Wire Notes Line
	5240 3000 8950 3000
Wire Notes Line
	8950 3000 8950 690 
Wire Notes Line
	960  690  8950 690 
Wire Notes Line
	960  5830 5230 5830
Wire Notes Line
	5230 5830 5230 7490
Wire Notes Line
	5230 7490 960  7490
Wire Notes Line
	960  7490 960  5830
Text Notes 1010 5960 0    50   ~ 10
IO Screw Terminals
Wire Wire Line
	2200 3750 2070 3750
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5D94BACB
P 1340 3750
F 0 "J3" H 1260 3425 50  0000 C CNN
F 1 "ST_FLOOD" H 1260 3516 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1340 3750 50  0001 C CNN
F 3 "~" H 1340 3750 50  0001 C CNN
	1    1340 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1540 3750 1770 3750
Text Label 2200 3650 2    50   ~ 0
GND
Text Label 2200 3550 2    50   ~ 0
GND
Text Label 2200 3450 2    50   ~ 0
GND
Text Label 2700 3450 0    50   ~ 0
GND
Text Label 2700 3650 0    50   ~ 0
GND
Text Label 2700 3750 0    50   ~ 0
GND
Text Label 2700 3850 0    50   ~ 0
GND
Text Label 2200 3850 3    50   ~ 0
GND
Wire Wire Line
	2700 3550 2910 3550
Wire Wire Line
	1540 3650 1960 3650
Wire Wire Line
	1960 3650 1960 3150
Wire Wire Line
	1960 3150 3210 3150
Wire Wire Line
	3210 3150 3210 3550
Connection ~ 3210 3550
$Comp
L Connector:Screw_Terminal_01x04 J4
U 1 1 5D94F7F4
P 1690 6670
F 0 "J4" H 1610 6245 50  0000 C CNN
F 1 "ST_24V" H 1610 6336 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 1690 6670 50  0001 C CNN
F 3 "~" H 1690 6670 50  0001 C CNN
	1    1690 6670
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 5D94F90E
P 2480 6670
F 0 "J5" H 2400 6245 50  0000 C CNN
F 1 "ST_24V-GND" H 2400 6336 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 2480 6670 50  0001 C CNN
F 3 "~" H 2480 6670 50  0001 C CNN
	1    2480 6670
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J7
U 1 1 5D94F9A6
P 3390 6670
F 0 "J7" H 3310 6245 50  0000 C CNN
F 1 "ST_5V" H 3310 6336 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 3390 6670 50  0001 C CNN
F 3 "~" H 3390 6670 50  0001 C CNN
	1    3390 6670
	-1   0    0    1   
$EndComp
Text Label 3590 6470 0    50   ~ 0
MD_SIG
Text Label 3590 6570 0    50   ~ 0
GND
Text Label 3590 6670 0    50   ~ 0
GND
Text Label 3590 6770 0    50   ~ 0
5V
Text Label 1890 6770 0    50   ~ 0
24V
Text Label 1890 6670 0    50   ~ 0
24V
Text Label 1890 6570 0    50   ~ 0
24V
Text Label 1890 6470 0    50   ~ 0
24V
Text Label 2680 6770 0    50   ~ 0
24V_GND
Text Label 2680 6670 0    50   ~ 0
24V_GND
Text Label 2680 6570 0    50   ~ 0
24V_GND
Text Label 2680 6470 0    50   ~ 0
24V_GND
$Comp
L Connector:Conn_01x05_Male J8
U 1 1 5D95229C
P 4140 5060
F 0 "J8" H 4250 5470 50  0000 C CNN
F 1 "Encoder 5Pin Connector" H 4260 5380 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4140 5060 50  0001 C CNN
F 3 "~" H 4140 5060 50  0001 C CNN
	1    4140 5060
	1    0    0    -1  
$EndComp
Text Notes 3670 4440 0    50   ~ 10
Encoder
NoConn ~ 2770 2730
Text Label 4340 4860 0    50   ~ 0
GND
Text Label 4340 4960 0    50   ~ 0
INDEX
Text Label 4340 5060 0    50   ~ 0
A_Channel
Text Label 4340 5260 0    50   ~ 0
B_Channel
Text Label 4340 5160 0    50   ~ 0
5V
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5DAA16ED
P 7640 1820
F 0 "J?" H 7690 2237 50  0000 C CNN
F 1 "IDC Header" H 7690 2146 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 7640 1820 50  0001 C CNN
F 3 "~" H 7640 1820 50  0001 C CNN
	1    7640 1820
	1    0    0    -1  
$EndComp
Text Label 6710 1290 2    50   ~ 0
QA*
Text Label 7440 1620 2    50   ~ 0
QA*
Text Label 6080 1880 2    50   ~ 0
QB*
Text Label 7440 2020 2    50   ~ 0
QB*
Text Label 6700 2200 2    50   ~ 0
QC*
Text Label 7940 1820 0    50   ~ 0
QC*
Text Label 7440 1720 2    50   ~ 0
GND
Text Label 7440 1820 2    50   ~ 0
GND
Text Label 7440 1920 2    50   ~ 0
GND
Text Label 7940 1620 0    50   ~ 0
GND
Text Label 7940 1720 0    50   ~ 0
GND
Text Label 7940 1920 0    50   ~ 0
GND
Text Label 7940 2020 0    50   ~ 0
GND
$EndSCHEMATC
