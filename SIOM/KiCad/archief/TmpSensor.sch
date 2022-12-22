EESchema Schematic File Version 4
LIBS:SIOMv01-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L TinyPico:DS2482-800 U201
U 1 1 5FB249DB
P 6050 3600
F 0 "U201" H 6250 4100 50  0000 C CNN
F 1 "DS2482-800" H 5800 3100 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6050 2950 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS2482-800.pdf" H 5850 3600 50  0001 C CNN
	1    6050 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 3750 6600 3750
Wire Wire Line
	6600 3750 6600 3850
Wire Wire Line
	6600 3950 6450 3950
Wire Wire Line
	6450 3850 6600 3850
Connection ~ 6600 3850
Wire Wire Line
	6600 3850 6600 3950
Wire Wire Line
	6600 3950 6600 4200
Connection ~ 6600 3950
Wire Wire Line
	6050 4150 6050 4200
Wire Wire Line
	6050 3050 6050 3000
$Comp
L SIOMv01-rescue:GND-power #PWR0202
U 1 1 5FB29487
P 6050 4200
F 0 "#PWR0202" H 6050 3950 50  0001 C CNN
F 1 "GND" H 6055 4027 50  0000 C CNN
F 2 "" H 6050 4200 50  0001 C CNN
F 3 "" H 6050 4200 50  0001 C CNN
	1    6050 4200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0203
U 1 1 5FB29A98
P 6600 4200
F 0 "#PWR0203" H 6600 3950 50  0001 C CNN
F 1 "GND" H 6605 4027 50  0000 C CNN
F 2 "" H 6600 4200 50  0001 C CNN
F 3 "" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0201
U 1 1 5FB29E8B
P 6050 3000
F 0 "#PWR0201" H 6050 2850 50  0001 C CNN
F 1 "+3V3" H 6065 3173 50  0000 C CNN
F 2 "" H 6050 3000 50  0001 C CNN
F 3 "" H 6050 3000 50  0001 C CNN
	1    6050 3000
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FB2DA93
P 5750 5050
AR Path="/5F8BACBE/5FB2DA93" Ref="C?"  Part="1" 
AR Path="/5F8C23BC/5FB2DA93" Ref="C201"  Part="1" 
F 0 "C201" H 5865 5096 50  0000 L CNN
F 1 "10u/16" H 5865 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 4900 50  0001 C CNN
F 3 "~" H 5750 5050 50  0001 C CNN
	1    5750 5050
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FB2DA99
P 6050 5300
AR Path="/5FB2DA99" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FB2DA99" Ref="#PWR?"  Part="1" 
AR Path="/5F8C23BC/5FB2DA99" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 6050 5050 50  0001 C CNN
F 1 "GND" H 6055 5127 50  0000 C CNN
F 2 "" H 6050 5300 50  0001 C CNN
F 3 "" H 6050 5300 50  0001 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5300 6050 5250
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FB2DAA1
P 6050 4800
AR Path="/5F8BACBE/5FB2DAA1" Ref="#PWR?"  Part="1" 
AR Path="/5F8C23BC/5FB2DAA1" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 6050 4650 50  0001 C CNN
F 1 "+3V3" H 6065 4973 50  0000 C CNN
F 2 "" H 6050 4800 50  0001 C CNN
F 3 "" H 6050 4800 50  0001 C CNN
	1    6050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3250 5500 3250
Wire Wire Line
	5650 3350 5500 3350
Wire Wire Line
	5650 3450 5500 3450
Wire Wire Line
	5650 3550 5500 3550
Wire Wire Line
	5650 3650 5500 3650
Wire Wire Line
	5650 3750 5500 3750
Wire Wire Line
	5650 3850 5500 3850
Wire Wire Line
	5500 3950 5650 3950
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FB6A68F
P 6350 5050
AR Path="/5F8BACBE/5FB6A68F" Ref="C?"  Part="1" 
AR Path="/5F8C23BC/5FB6A68F" Ref="C202"  Part="1" 
F 0 "C202" H 6465 5096 50  0000 L CNN
F 1 "100n/16" H 6465 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6388 4900 50  0001 C CNN
F 3 "~" H 6350 5050 50  0001 C CNN
	1    6350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4900 6350 4850
Wire Wire Line
	6350 4850 6050 4850
Connection ~ 6050 4850
Wire Wire Line
	6050 4850 6050 4800
Wire Wire Line
	5750 4900 5750 4850
Wire Wire Line
	5750 4850 6050 4850
Wire Wire Line
	5750 5200 5750 5250
Wire Wire Line
	5750 5250 6050 5250
Connection ~ 6050 5250
Wire Wire Line
	6050 5250 6350 5250
Wire Wire Line
	6350 5250 6350 5200
Text HLabel 5500 3250 0    50   BiDi ~ 0
TMP01
Text HLabel 5500 3350 0    50   BiDi ~ 0
TMP02
Text HLabel 5500 3450 0    50   BiDi ~ 0
TMP03
Text HLabel 5500 3550 0    50   BiDi ~ 0
TMP04
Text HLabel 5500 3650 0    50   BiDi ~ 0
TMP05
Text HLabel 5500 3750 0    50   BiDi ~ 0
TMP06
Text HLabel 5500 3850 0    50   BiDi ~ 0
TMP07
Text HLabel 5500 3950 0    50   BiDi ~ 0
TMP08
Text Notes 5500 2600 0    50   ~ 0
Power consumption 3V3 13mA
Text Notes 5900 5600 0    50   ~ 0
Near IC
Text HLabel 6700 3350 2    50   Input ~ 0
SCL_TS
Text Label 6650 3250 2    50   ~ 0
SDA
Text Label 6650 3350 2    50   ~ 0
SCL
Wire Wire Line
	6450 3350 6700 3350
Wire Wire Line
	6450 3250 6700 3250
Text HLabel 6700 3250 2    50   BiDi ~ 0
SDA_TS
$EndSCHEMATC
