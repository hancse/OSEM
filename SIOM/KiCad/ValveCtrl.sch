EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 10
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
L Amplifier_Operational:LM7332 U501
U 1 1 5FA46782
P 5500 2100
F 0 "U501" H 5550 2400 50  0000 C CNN
F 1 "LM7332" H 5550 2300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 5550 2300 50  0001 C CNN
	1    5500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2100 5850 2100
Wire Wire Line
	5200 2200 5150 2200
Wire Wire Line
	5150 2200 5150 2400
$Comp
L SIOMv01-rescue:R-Device R503
U 1 1 5FA48E11
P 5500 2400
F 0 "R503" V 5400 2400 50  0000 C CNN
F 1 "22K" V 5600 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 2400 50  0001 C CNN
F 3 "~" H 5500 2400 50  0001 C CNN
	1    5500 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2400 5850 2400
Wire Wire Line
	5850 2400 5850 2100
Connection ~ 5850 2100
Wire Wire Line
	5850 2100 5950 2100
Wire Wire Line
	5350 2400 5150 2400
Wire Wire Line
	5150 2400 5150 2450
Connection ~ 5150 2400
$Comp
L SIOMv01-rescue:R-Device R501
U 1 1 5FA49C27
P 5150 2600
F 0 "R501" H 5200 2600 50  0000 L CNN
F 1 "10K" H 5250 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 2600 50  0001 C CNN
F 3 "~" H 5150 2600 50  0001 C CNN
	1    5150 2600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0501
U 1 1 5FA4A713
P 5150 2800
F 0 "#PWR0501" H 5150 2550 50  0001 C CNN
F 1 "GND" H 5155 2627 50  0000 C CNN
F 2 "" H 5150 2800 50  0001 C CNN
F 3 "" H 5150 2800 50  0001 C CNN
	1    5150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2800 5150 2750
$Comp
L Amplifier_Operational:LM7332 U501
U 2 1 5FA507BC
P 5500 3450
F 0 "U501" H 5550 3750 50  0000 C CNN
F 1 "LM7332" H 5550 3650 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 5550 3650 50  0001 C CNN
	2    5500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3450 5850 3450
Wire Wire Line
	5200 3550 5150 3550
Wire Wire Line
	5150 3550 5150 3750
$Comp
L SIOMv01-rescue:R-Device R504
U 1 1 5FA507C6
P 5500 3750
F 0 "R504" V 5400 3750 50  0000 C CNN
F 1 "22K" V 5600 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 3750 50  0001 C CNN
F 3 "~" H 5500 3750 50  0001 C CNN
	1    5500 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3750 5850 3750
Wire Wire Line
	5850 3750 5850 3450
Connection ~ 5850 3450
Wire Wire Line
	5850 3450 5950 3450
Wire Wire Line
	5350 3750 5150 3750
Wire Wire Line
	5150 3750 5150 3800
Connection ~ 5150 3750
$Comp
L SIOMv01-rescue:R-Device R502
U 1 1 5FA507D3
P 5150 3950
F 0 "R502" H 5200 3950 50  0000 L CNN
F 1 "10K" H 5200 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 3950 50  0001 C CNN
F 3 "~" H 5150 3950 50  0001 C CNN
	1    5150 3950
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0502
U 1 1 5FA507D9
P 5150 4150
F 0 "#PWR0502" H 5150 3900 50  0001 C CNN
F 1 "GND" H 5155 3977 50  0000 C CNN
F 2 "" H 5150 4150 50  0001 C CNN
F 3 "" H 5150 4150 50  0001 C CNN
	1    5150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4150 5150 4100
$Comp
L Amplifier_Operational:LM7332 U501
U 3 1 5FA56DF7
P 5450 5200
F 0 "U501" H 5408 5246 50  0000 L CNN
F 1 "LM7332" H 5408 5155 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5400 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 5500 5400 50  0001 C CNN
	3    5450 5200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0504
U 1 1 5FA5D9F0
P 5350 5600
F 0 "#PWR0504" H 5350 5350 50  0001 C CNN
F 1 "GND" H 5355 5427 50  0000 C CNN
F 2 "" H 5350 5600 50  0001 C CNN
F 3 "" H 5350 5600 50  0001 C CNN
	1    5350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5600 5350 5550
Wire Wire Line
	5350 4800 5350 4850
$Comp
L SIOMv01-rescue:+12V-power #PWR0503
U 1 1 5FA60B81
P 5350 4800
F 0 "#PWR0503" H 5350 4650 50  0001 C CNN
F 1 "+12V" H 5365 4973 50  0000 C CNN
F 2 "" H 5350 4800 50  0001 C CNN
F 3 "" H 5350 4800 50  0001 C CNN
	1    5350 4800
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C501
U 1 1 5FA626C1
P 5800 5200
F 0 "C501" H 5915 5246 50  0000 L CNN
F 1 "100nF 50V" H 5915 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 5050 50  0001 C CNN
F 3 "~" H 5800 5200 50  0001 C CNN
	1    5800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5050 5800 4850
Wire Wire Line
	5800 4850 5350 4850
Connection ~ 5350 4850
Wire Wire Line
	5350 4850 5350 4900
Wire Wire Line
	5800 5350 5800 5550
Wire Wire Line
	5800 5550 5350 5550
Connection ~ 5350 5550
Wire Wire Line
	5350 5550 5350 5500
$Comp
L SIOMv01-rescue:R-Device R505
U 1 1 5FA72B27
P 6150 2100
F 0 "R505" V 6050 2100 50  0000 C CNN
F 1 "470R" V 6250 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 2100 50  0001 C CNN
F 3 "~" H 6150 2100 50  0001 C CNN
	1    6150 2100
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:R-Device R506
U 1 1 5FA8B859
P 6150 3450
F 0 "R506" V 6050 3450 50  0000 C CNN
F 1 "470R" V 6250 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 3450 50  0001 C CNN
F 3 "~" H 6150 3450 50  0001 C CNN
	1    6150 3450
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:DZ2S120X0L-Diode D501
U 1 1 5FA8ED42
P 5950 2600
F 0 "D501" V 5904 2680 50  0000 L CNN
F 1 "DZ2S120X0L" V 5995 2680 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-523" H 5950 2425 50  0001 C CNN
F 3 "https://industrial.panasonic.com/content/data/SC/ds/ds4/DZ2S12000L_E.pdf" H 5950 2600 50  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0505
U 1 1 5FAA36F5
P 5950 2800
F 0 "#PWR0505" H 5950 2550 50  0001 C CNN
F 1 "GND" H 5955 2627 50  0000 C CNN
F 2 "" H 5950 2800 50  0001 C CNN
F 3 "" H 5950 2800 50  0001 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2800 5950 2750
Wire Wire Line
	5950 2450 5950 2100
Connection ~ 5950 2100
Wire Wire Line
	5950 2100 6000 2100
$Comp
L SIOMv01-rescue:DZ2S120X0L-Diode D502
U 1 1 5FAAA996
P 5950 3950
F 0 "D502" V 5904 4030 50  0000 L CNN
F 1 "DZ2S120X0L" V 5995 4030 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-523" H 5950 3775 50  0001 C CNN
F 3 "https://industrial.panasonic.com/content/data/SC/ds/ds4/DZ2S12000L_E.pdf" H 5950 3950 50  0001 C CNN
	1    5950 3950
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0506
U 1 1 5FAAA99C
P 5950 4150
F 0 "#PWR0506" H 5950 3900 50  0001 C CNN
F 1 "GND" H 5955 3977 50  0000 C CNN
F 2 "" H 5950 4150 50  0001 C CNN
F 3 "" H 5950 4150 50  0001 C CNN
	1    5950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4150 5950 4100
Wire Wire Line
	5950 3800 5950 3450
Connection ~ 5950 3450
Wire Wire Line
	5950 3450 6000 3450
Wire Wire Line
	6300 2100 6400 2100
Text HLabel 6400 2100 2    50   Output ~ 0
ANA_OUT_10V_01
Wire Wire Line
	6300 3450 6400 3450
Text HLabel 6400 3450 2    50   Output ~ 0
ANA_OUT_10V_02
Text Notes 4950 1550 0    50   ~ 0
Power consumption 12V 60mA
Text Notes 5900 5400 0    50   ~ 0
Near IC
Wire Wire Line
	4550 3350 5200 3350
Wire Wire Line
	4550 2000 5200 2000
Text HLabel 4550 2000 0    50   Input ~ 0
DAC1_OUT1_VALVE_1
Text HLabel 4550 3350 0    50   Input ~ 0
DAC1_OUT2_VALVE_2
$Comp
L Device:CP C502
U 1 1 6090E3EF
P 4800 5200
F 0 "C502" H 4918 5246 50  0000 L CNN
F 1 "10uF 50V" H 4918 5155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 4838 5050 50  0001 C CNN
F 3 "~" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5350 4800 5550
Wire Wire Line
	4800 5050 4800 4850
Wire Wire Line
	4800 4850 5350 4850
Wire Wire Line
	4800 5550 5350 5550
$EndSCHEMATC
