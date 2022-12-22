EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
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
L SIOMv01-rescue:R-Device R?
U 1 1 5F8C0D34
P 4200 2600
AR Path="/5F8C0D34" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D34" Ref="R801"  Part="1" 
F 0 "R801" H 4250 2600 50  0000 L CNN
F 1 "1K" H 4250 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4130 2600 50  0001 C CNN
F 3 "~" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 5F8C0D46
P 4200 1950
AR Path="/5F8C0D46" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D46" Ref="#PWR0801"  Part="1" 
F 0 "#PWR0801" H 4200 1800 50  0001 C CNN
F 1 "+5V" H 4215 2123 50  0000 C CNN
F 2 "" H 4200 1950 50  0001 C CNN
F 3 "" H 4200 1950 50  0001 C CNN
	1    4200 1950
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F8C0D5E
P 4200 3450
AR Path="/5F8C0D5E" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D5E" Ref="#PWR0802"  Part="1" 
F 0 "#PWR0802" H 4200 3200 50  0001 C CNN
F 1 "GND" H 4205 3277 50  0000 C CNN
F 2 "" H 4200 3450 50  0001 C CNN
F 3 "" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F8C0D64
P 4950 3450
AR Path="/5F8C0D64" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D64" Ref="#PWR0803"  Part="1" 
F 0 "#PWR0803" H 4950 3200 50  0001 C CNN
F 1 "GND" H 4955 3277 50  0000 C CNN
F 2 "" H 4950 3450 50  0001 C CNN
F 3 "" H 4950 3450 50  0001 C CNN
	1    4950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3450 4200 3150
Wire Wire Line
	4950 3450 4950 3150
Wire Wire Line
	4200 2850 4200 2800
Wire Wire Line
	4200 2450 4200 2400
Wire Wire Line
	4200 2750 4200 2800
Wire Wire Line
	4200 2400 4950 2400
Wire Wire Line
	4950 2400 4950 2850
Connection ~ 4200 2400
Wire Wire Line
	4200 2400 4200 2350
Wire Wire Line
	4200 2050 4200 1950
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F8C0D79
P 5550 3450
AR Path="/5F8C0D79" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D79" Ref="#PWR0805"  Part="1" 
F 0 "#PWR0805" H 5550 3200 50  0001 C CNN
F 1 "GND" H 5555 3277 50  0000 C CNN
F 2 "" H 5550 3450 50  0001 C CNN
F 3 "" H 5550 3450 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3000 5550 3450
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q?
U 1 1 5F8C0D80
P 5450 2800
AR Path="/5F8C0D80" Ref="Q?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D80" Ref="Q801"  Part="1" 
F 0 "Q801" H 5654 2846 50  0000 L CNN
F 1 "BSS138" H 5654 2755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5650 2725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 5450 2800 50  0001 L CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:D_TVS-Device D?
U 1 1 5F8C0D86
P 4200 3000
AR Path="/5F8C0D86" Ref="D?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D86" Ref="D802"  Part="1" 
F 0 "D802" V 4154 3080 50  0000 L CNN
F 1 "PTVS5V0S1UR" V 4245 3080 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4200 3000 50  0001 C CNN
F 3 "~" H 4200 3000 50  0001 C CNN
	1    4200 3000
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5F8C0D8C
P 5550 2200
AR Path="/5F8C0D8C" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D8C" Ref="R802"  Part="1" 
F 0 "R802" H 5650 2200 50  0000 L CNN
F 1 "1K" H 5650 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5480 2200 50  0001 C CNN
F 3 "~" H 5550 2200 50  0001 C CNN
	1    5550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2050 5550 1950
Text Notes 5050 1450 0    50   ~ 0
Power consumption 5V 20mA\nPower consumption 3V3 10mA
Wire Wire Line
	4200 2800 3900 2800
Connection ~ 4200 2800
Text HLabel 3900 2800 0    50   Input ~ 0
P1_INPUT
$Comp
L SIOMv01-rescue:1N4148W-Diode D801
U 1 1 6002EFB9
P 4200 2200
F 0 "D801" V 4246 2120 50  0000 R CNN
F 1 "1N4148W" V 4155 2120 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 4200 2025 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4200 2200 50  0001 C CNN
	1    4200 2200
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:C-Device C801
U 1 1 60034EB4
P 4950 3000
F 0 "C801" H 5065 3046 50  0000 L CNN
F 1 "100nF 50V" H 5065 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 2850 50  0001 C CNN
F 3 "~" H 4950 3000 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2800 5250 2800
Wire Wire Line
	5550 2500 5550 2600
Wire Wire Line
	5550 2350 5550 2500
Connection ~ 5550 2500
Wire Wire Line
	5550 2500 6150 2500
$Comp
L SIOMv01-rescue:+3V3-power #PWR0804
U 1 1 5FAB4F21
P 5550 1950
F 0 "#PWR0804" H 5550 1800 50  0001 C CNN
F 1 "+3V3" H 5565 2123 50  0000 C CNN
F 2 "" H 5550 1950 50  0001 C CNN
F 3 "" H 5550 1950 50  0001 C CNN
	1    5550 1950
	1    0    0    -1  
$EndComp
Text HLabel 6150 2500 2    50   Input ~ 0
UART_RX
$EndSCHEMATC
