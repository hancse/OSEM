EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
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
L SIOMv01-rescue:+5V-power #PWR0608
U 1 1 5F92B30A
P 4650 3500
F 0 "#PWR0608" H 4650 3350 50  0001 C CNN
F 1 "+5V" H 4665 3673 50  0000 C CNN
F 2 "" H 4650 3500 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0606
U 1 1 5F92B310
P 4150 3500
F 0 "#PWR0606" H 4150 3350 50  0001 C CNN
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
L SIOMv01-rescue:C-Device C602
U 1 1 5F935F05
P 4050 4900
F 0 "C602" H 4165 4946 50  0000 L CNN
F 1 "100nF 50V" H 4165 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4088 4750 50  0001 C CNN
F 3 "~" H 4050 4900 50  0001 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0604
U 1 1 5F9432EF
P 4050 5150
F 0 "#PWR0604" H 4050 4900 50  0001 C CNN
F 1 "GND" H 4055 4977 50  0000 C CNN
F 2 "" H 4050 5150 50  0001 C CNN
F 3 "" H 4050 5150 50  0001 C CNN
	1    4050 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0603
U 1 1 5F94371C
P 4050 4650
F 0 "#PWR0603" H 4050 4500 50  0001 C CNN
F 1 "+3V3" H 4065 4823 50  0000 C CNN
F 2 "" H 4050 4650 50  0001 C CNN
F 3 "" H 4050 4650 50  0001 C CNN
	1    4050 4650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q602
U 1 1 5F9A9D35
P 4400 3850
F 0 "Q602" V 4650 3750 50  0000 L CNN
F 1 "BSS138" V 4750 3700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4600 3775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4400 3850 50  0001 L CNN
	1    4400 3850
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:R-Device R602
U 1 1 5F95C195
P 4150 3750
F 0 "R602" H 4100 3800 50  0000 R CNN
F 1 "100k" H 4100 3700 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 3750 50  0001 C CNN
F 3 "~" H 4150 3750 50  0001 C CNN
	1    4150 3750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R604
U 1 1 5F95CA5A
P 4650 3750
F 0 "R604" H 4700 3800 50  0000 L CNN
F 1 "100k" H 4700 3700 50  0000 L CNN
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
L SIOMv01-rescue:+5V-power #PWR0607
U 1 1 5F97039E
P 4650 2500
F 0 "#PWR0607" H 4650 2350 50  0001 C CNN
F 1 "+5V" H 4665 2673 50  0000 C CNN
F 2 "" H 4650 2500 50  0001 C CNN
F 3 "" H 4650 2500 50  0001 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0605
U 1 1 5F9703A4
P 4150 2500
F 0 "#PWR0605" H 4150 2350 50  0001 C CNN
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
L SIOMv01-rescue:BSS138-Transistor_FET Q601
U 1 1 5F9703AC
P 4400 2850
F 0 "Q601" V 4650 2750 50  0000 L CNN
F 1 "BSS138" V 4750 2700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4600 2775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 4400 2850 50  0001 L CNN
	1    4400 2850
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:R-Device R601
U 1 1 5F9703B2
P 4150 2750
F 0 "R601" H 4100 2800 50  0000 R CNN
F 1 "100K" H 4100 2700 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 2750 50  0001 C CNN
F 3 "~" H 4150 2750 50  0001 C CNN
	1    4150 2750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R603
U 1 1 5F9703B8
P 4650 2750
F 0 "R603" H 4700 2800 50  0000 L CNN
F 1 "100K" H 4700 2700 50  0000 L CNN
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
L SIOMv01-rescue:C-Device C603
U 1 1 5F9A398F
P 4750 4900
F 0 "C603" H 4865 4946 50  0000 L CNN
F 1 "100nF 50V" H 4865 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 4750 50  0001 C CNN
F 3 "~" H 4750 4900 50  0001 C CNN
	1    4750 4900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0610
U 1 1 5F9A39A7
P 4750 5150
F 0 "#PWR0610" H 4750 4900 50  0001 C CNN
F 1 "GND" H 4755 4977 50  0000 C CNN
F 2 "" H 4750 5150 50  0001 C CNN
F 3 "" H 4750 5150 50  0001 C CNN
	1    4750 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR0609
U 1 1 5F9A4B24
P 4750 4650
F 0 "#PWR0609" H 4750 4500 50  0001 C CNN
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
L SIOMv01-rescue:Jumper_2_Open-Jumper JP601
U 1 1 5F984652
P 5150 2700
F 0 "JP601" V 5104 2798 50  0000 L CNN
F 1 "I2C Trm" V 5195 2798 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 2700 50  0001 C CNN
F 3 "~" H 5150 2700 50  0001 C CNN
	1    5150 2700
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:Jumper_2_Open-Jumper JP602
U 1 1 5F98F58F
P 5650 2700
F 0 "JP602" V 5604 2798 50  0000 L CNN
F 1 "I2C Trm" V 5695 2798 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5650 2700 50  0001 C CNN
F 3 "~" H 5650 2700 50  0001 C CNN
	1    5650 2700
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR0611
U 1 1 5F9920CF
P 5150 2050
F 0 "#PWR0611" H 5150 1900 50  0001 C CNN
F 1 "+5V" H 5165 2223 50  0000 C CNN
F 2 "" H 5150 2050 50  0001 C CNN
F 3 "" H 5150 2050 50  0001 C CNN
	1    5150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2050 5150 2150
$Comp
L SIOMv01-rescue:R-Device R605
U 1 1 5F9920D6
P 5150 2300
F 0 "R605" H 5220 2346 50  0000 L CNN
F 1 "1K5" H 5220 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 2300 50  0001 C CNN
F 3 "~" H 5150 2300 50  0001 C CNN
	1    5150 2300
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR0614
U 1 1 5F992D19
P 5650 2050
F 0 "#PWR0614" H 5650 1900 50  0001 C CNN
F 1 "+5V" H 5665 2223 50  0000 C CNN
F 2 "" H 5650 2050 50  0001 C CNN
F 3 "" H 5650 2050 50  0001 C CNN
	1    5650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2050 5650 2150
$Comp
L SIOMv01-rescue:R-Device R606
U 1 1 5F992D20
P 5650 2300
F 0 "R606" H 5720 2346 50  0000 L CNN
F 1 "1K5" H 5720 2255 50  0000 L CNN
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
$Comp
L SIOMv01-rescue:C-Device C601
U 1 1 60899804
P 3400 4900
F 0 "C601" H 3515 4946 50  0000 L CNN
F 1 "100nF 50V" H 3515 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3438 4750 50  0001 C CNN
F 3 "~" H 3400 4900 50  0001 C CNN
	1    3400 4900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C604
U 1 1 60899F68
P 5400 4900
F 0 "C604" H 5515 4946 50  0000 L CNN
F 1 "100nF 50V" H 5515 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 4750 50  0001 C CNN
F 3 "~" H 5400 4900 50  0001 C CNN
	1    5400 4900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0613
U 1 1 6089A1FD
P 5400 5150
F 0 "#PWR0613" H 5400 4900 50  0001 C CNN
F 1 "GND" H 5405 4977 50  0000 C CNN
F 2 "" H 5400 5150 50  0001 C CNN
F 3 "" H 5400 5150 50  0001 C CNN
	1    5400 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR0612
U 1 1 6089A569
P 5400 4650
F 0 "#PWR0612" H 5400 4500 50  0001 C CNN
F 1 "+5V" H 5415 4823 50  0000 C CNN
F 2 "" H 5400 4650 50  0001 C CNN
F 3 "" H 5400 4650 50  0001 C CNN
	1    5400 4650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0601
U 1 1 6089A981
P 3400 4650
F 0 "#PWR0601" H 3400 4500 50  0001 C CNN
F 1 "+3V3" H 3415 4823 50  0000 C CNN
F 2 "" H 3400 4650 50  0001 C CNN
F 3 "" H 3400 4650 50  0001 C CNN
	1    3400 4650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0602
U 1 1 6089AD15
P 3400 5150
F 0 "#PWR0602" H 3400 4900 50  0001 C CNN
F 1 "GND" H 3405 4977 50  0000 C CNN
F 2 "" H 3400 5150 50  0001 C CNN
F 3 "" H 3400 5150 50  0001 C CNN
	1    3400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5150 3400 5050
Wire Wire Line
	3400 4650 3400 4750
Wire Wire Line
	5400 4650 5400 4750
Wire Wire Line
	5400 5050 5400 5150
$EndSCHEMATC
