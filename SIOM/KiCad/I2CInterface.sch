EESchema Schematic File Version 4
LIBS:SIOMv01-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SIOMv01-rescue:+5V-power #PWR0706
U 1 1 5F92B30A
P 4650 3500
F 0 "#PWR0706" H 4650 3350 50  0001 C CNN
F 1 "+5V" H 4665 3673 50  0000 C CNN
F 2 "" H 4650 3500 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0705
U 1 1 5F92B310
P 4150 3500
F 0 "#PWR0705" H 4150 3350 50  0001 C CNN
F 1 "+3V3" H 4165 3673 50  0000 C CNN
F 2 "" H 4150 3500 50  0001 C CNN
F 3 "" H 4150 3500 50  0001 C CNN
	1    4150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3500 4650 3600
Wire Wire Line
	4150 3500 4150 3550
$Comp
L SIOMv01-rescue:C-Device C701
U 1 1 5F935F05
P 4050 4900
F 0 "C701" H 4165 4946 50  0000 L CNN
F 1 "100n/16" H 4165 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4088 4750 50  0001 C CNN
F 3 "~" H 4050 4900 50  0001 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0709
U 1 1 5F9432EF
P 4050 5150
F 0 "#PWR0709" H 4050 4900 50  0001 C CNN
F 1 "GND" H 4055 4977 50  0000 C CNN
F 2 "" H 4050 5150 50  0001 C CNN
F 3 "" H 4050 5150 50  0001 C CNN
	1    4050 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0707
U 1 1 5F94371C
P 4050 4650
F 0 "#PWR0707" H 4050 4500 50  0001 C CNN
F 1 "+3V3" H 4065 4823 50  0000 C CNN
F 2 "" H 4050 4650 50  0001 C CNN
F 3 "" H 4050 4650 50  0001 C CNN
	1    4050 4650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q702
U 1 1 5F9A9D35
P 4400 3850
F 0 "Q702" V 4650 3750 50  0000 L CNN
F 1 "BSS138" V 4750 3700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4600 3775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4400 3850 50  0001 L CNN
	1    4400 3850
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:R-Device R705
U 1 1 5F95C195
P 4150 3750
F 0 "R705" H 4100 3750 50  0000 R CNN
F 1 "100k" V 4150 3850 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 3750 50  0001 C CNN
F 3 "~" H 4150 3750 50  0001 C CNN
	1    4150 3750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R706
U 1 1 5F95CA5A
P 4650 3750
F 0 "R706" H 4700 3750 50  0000 L CNN
F 1 "100k" V 4650 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 3750 50  0001 C CNN
F 3 "~" H 4650 3750 50  0001 C CNN
	1    4650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3900 4150 3950
Wire Wire Line
	4150 3950 4200 3950
Wire Wire Line
	4600 3950 4650 3950
Wire Wire Line
	4650 3950 4650 3900
Wire Wire Line
	4150 3550 4400 3550
Wire Wire Line
	4400 3550 4400 3650
Connection ~ 4150 3550
Wire Wire Line
	4150 3550 4150 3600
Connection ~ 4150 3950
Connection ~ 4650 3950
$Comp
L SIOMv01-rescue:+5V-power #PWR0704
U 1 1 5F97039E
P 4650 2500
F 0 "#PWR0704" H 4650 2350 50  0001 C CNN
F 1 "+5V" H 4665 2673 50  0000 C CNN
F 2 "" H 4650 2500 50  0001 C CNN
F 3 "" H 4650 2500 50  0001 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0703
U 1 1 5F9703A4
P 4150 2500
F 0 "#PWR0703" H 4150 2350 50  0001 C CNN
F 1 "+3V3" H 4165 2673 50  0000 C CNN
F 2 "" H 4150 2500 50  0001 C CNN
F 3 "" H 4150 2500 50  0001 C CNN
	1    4150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2500 4650 2600
Wire Wire Line
	4150 2500 4150 2550
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q701
U 1 1 5F9703AC
P 4400 2850
F 0 "Q701" V 4650 2750 50  0000 L CNN
F 1 "BSS138" V 4750 2700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4600 2775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4400 2850 50  0001 L CNN
	1    4400 2850
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:R-Device R703
U 1 1 5F9703B2
P 4150 2750
F 0 "R703" H 4100 2750 50  0000 R CNN
F 1 "100k" V 4150 2850 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 2750 50  0001 C CNN
F 3 "~" H 4150 2750 50  0001 C CNN
	1    4150 2750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R704
U 1 1 5F9703B8
P 4650 2750
F 0 "R704" H 4700 2750 50  0000 L CNN
F 1 "100k" V 4650 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 2750 50  0001 C CNN
F 3 "~" H 4650 2750 50  0001 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2900 4150 2950
Wire Wire Line
	4150 2950 4200 2950
Wire Wire Line
	4600 2950 4650 2950
Wire Wire Line
	4650 2950 4650 2900
Wire Wire Line
	4150 2550 4400 2550
Wire Wire Line
	4400 2550 4400 2650
Connection ~ 4150 2550
Wire Wire Line
	4150 2550 4150 2600
Connection ~ 4150 2950
Connection ~ 4650 2950
$Comp
L SIOMv01-rescue:C-Device C702
U 1 1 5F9A398F
P 4750 4900
F 0 "C702" H 4865 4946 50  0000 L CNN
F 1 "100n/16" H 4865 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 4750 50  0001 C CNN
F 3 "~" H 4750 4900 50  0001 C CNN
	1    4750 4900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0710
U 1 1 5F9A39A7
P 4750 5150
F 0 "#PWR0710" H 4750 4900 50  0001 C CNN
F 1 "GND" H 4755 4977 50  0000 C CNN
F 2 "" H 4750 5150 50  0001 C CNN
F 3 "" H 4750 5150 50  0001 C CNN
	1    4750 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR0708
U 1 1 5F9A4B24
P 4750 4650
F 0 "#PWR0708" H 4750 4500 50  0001 C CNN
F 1 "+5V" H 4765 4823 50  0000 C CNN
F 2 "" H 4750 4650 50  0001 C CNN
F 3 "" H 4750 4650 50  0001 C CNN
	1    4750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4650 4050 4750
Wire Wire Line
	4050 5050 4050 5150
Wire Wire Line
	4750 4650 4750 4750
Wire Wire Line
	4750 5050 4750 5150
Text Notes 4150 5450 0    50   ~ 0
Near mosfets
$Comp
L SIOMv01-rescue:Jumper_2_Open-Jumper JP701
U 1 1 5F984652
P 5150 2700
F 0 "JP701" V 5104 2798 50  0000 L CNN
F 1 "I2C Trm" V 5195 2798 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 2700 50  0001 C CNN
F 3 "~" H 5150 2700 50  0001 C CNN
	1    5150 2700
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:Jumper_2_Open-Jumper JP702
U 1 1 5F98F58F
P 5650 2700
F 0 "JP702" V 5604 2798 50  0000 L CNN
F 1 "I2C Trm" V 5695 2798 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5650 2700 50  0001 C CNN
F 3 "~" H 5650 2700 50  0001 C CNN
	1    5650 2700
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR0701
U 1 1 5F9920CF
P 5150 2050
F 0 "#PWR0701" H 5150 1900 50  0001 C CNN
F 1 "+5V" H 5165 2223 50  0000 C CNN
F 2 "" H 5150 2050 50  0001 C CNN
F 3 "" H 5150 2050 50  0001 C CNN
	1    5150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2050 5150 2150
$Comp
L SIOMv01-rescue:R-Device R701
U 1 1 5F9920D6
P 5150 2300
F 0 "R701" H 5220 2346 50  0000 L CNN
F 1 "1k50" H 5220 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 2300 50  0001 C CNN
F 3 "~" H 5150 2300 50  0001 C CNN
	1    5150 2300
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR0702
U 1 1 5F992D19
P 5650 2050
F 0 "#PWR0702" H 5650 1900 50  0001 C CNN
F 1 "+5V" H 5665 2223 50  0000 C CNN
F 2 "" H 5650 2050 50  0001 C CNN
F 3 "" H 5650 2050 50  0001 C CNN
	1    5650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2050 5650 2150
$Comp
L SIOMv01-rescue:R-Device R702
U 1 1 5F992D20
P 5650 2300
F 0 "R702" H 5720 2346 50  0000 L CNN
F 1 "1k50" H 5720 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5580 2300 50  0001 C CNN
F 3 "~" H 5650 2300 50  0001 C CNN
	1    5650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2450 5150 2500
Wire Wire Line
	5150 2900 5150 2950
Wire Wire Line
	5650 2450 5650 2500
Text HLabel 6100 2950 2    50   BiDi ~ 0
SDA_5V
Text HLabel 6100 3950 2    50   Output ~ 0
SCL_5V
Wire Wire Line
	4650 2950 5150 2950
Connection ~ 5150 2950
Wire Wire Line
	4650 3950 5650 3950
Wire Wire Line
	5150 2950 6100 2950
Wire Wire Line
	5650 2900 5650 3950
Connection ~ 5650 3950
Wire Wire Line
	5650 3950 6100 3950
Text Notes 4550 1700 0    50   ~ 0
Power consumption 5V 7mA\nPower consumption 3V3 1mA
Text Label 3550 2950 0    50   ~ 0
SDA
Text Label 3550 3950 0    50   ~ 0
SCL
Wire Wire Line
	3500 2950 4150 2950
Wire Wire Line
	3500 3950 4150 3950
Text HLabel 3500 3950 0    50   Input ~ 0
SCL_AUX
Text HLabel 3500 2950 0    50   BiDi ~ 0
SDA_AUX
$EndSCHEMATC
