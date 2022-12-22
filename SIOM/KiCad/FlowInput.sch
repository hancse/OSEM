EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 10
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
U 1 1 5FBAA90B
P 5250 2600
AR Path="/5FBAA90B" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FBAA90B" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FBAA90B" Ref="R303"  Part="1" 
F 0 "R303" H 5000 2600 50  0000 L CNN
F 1 "10K" H 5000 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5180 2600 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FBAA911
P 5000 2400
AR Path="/5FBAA911" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FBAA911" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FBAA911" Ref="R301"  Part="1" 
F 0 "R301" V 5100 2350 50  0000 L CNN
F 1 "10K" V 4900 2350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 2400 50  0001 C CNN
F 3 "~" H 5000 2400 50  0001 C CNN
	1    5000 2400
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBAA923
P 5650 2800
AR Path="/5FBAA923" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FBAA923" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBAA923" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 5650 2550 50  0001 C CNN
F 1 "GND" H 5655 2627 50  0000 C CNN
F 2 "" H 5650 2800 50  0001 C CNN
F 3 "" H 5650 2800 50  0001 C CNN
	1    5650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2800 5650 2750
Wire Wire Line
	5650 2450 5650 2400
Wire Wire Line
	5650 2400 6000 2400
Connection ~ 5650 2400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBAA93C
P 6300 2800
AR Path="/5FBAA93C" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FBAA93C" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBAA93C" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 6300 2550 50  0001 C CNN
F 1 "GND" H 6305 2627 50  0000 C CNN
F 2 "" H 6300 2800 50  0001 C CNN
F 3 "" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2600 6300 2800
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q?
U 1 1 5FBAA943
P 6200 2400
AR Path="/5FBAA943" Ref="Q?"  Part="1" 
AR Path="/5F8BACBE/5FBAA943" Ref="Q?"  Part="1" 
AR Path="/5F8C2412/5FBAA943" Ref="Q301"  Part="1" 
F 0 "Q301" H 6404 2446 50  0000 L CNN
F 1 "BSS138" H 6404 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 2325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 6200 2400 50  0001 L CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:D_TVS-Device D?
U 1 1 5FBAA949
P 5650 2600
AR Path="/5FBAA949" Ref="D?"  Part="1" 
AR Path="/5F8BACBE/5FBAA949" Ref="D?"  Part="1" 
AR Path="/5F8C2412/5FBAA949" Ref="D301"  Part="1" 
F 0 "D301" V 5604 2680 50  0000 L CNN
F 1 "PTVS5V0S1UR" V 5695 2680 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5650 2600 50  0001 C CNN
F 3 "~" H 5650 2600 50  0001 C CNN
	1    5650 2600
	0    1    1    0   
$EndComp
Text Notes 4500 1650 0    50   ~ 0
Power consumption 3V3 7mA
Text HLabel 4800 2400 0    50   Input ~ 0
FLOW_01
Wire Wire Line
	5250 2450 5250 2400
Connection ~ 5250 2400
Wire Wire Line
	5250 2400 5150 2400
Wire Wire Line
	5250 2400 5650 2400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBBCB25
P 5250 2800
AR Path="/5FBBCB25" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FBBCB25" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBBCB25" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 5250 2550 50  0001 C CNN
F 1 "GND" H 5255 2627 50  0000 C CNN
F 2 "" H 5250 2800 50  0001 C CNN
F 3 "" H 5250 2800 50  0001 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2800 5250 2750
Wire Wire Line
	4850 2400 4800 2400
Wire Wire Line
	6300 2150 6300 2200
Connection ~ 6300 2150
Wire Wire Line
	6300 2100 6300 2150
Wire Wire Line
	6300 1800 6300 1750
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FBAA94F
P 6300 1950
AR Path="/5FBAA94F" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FBAA94F" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FBAA94F" Ref="R305"  Part="1" 
F 0 "R305" H 6370 1996 50  0000 L CNN
F 1 "10K" H 6400 1900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 1950 50  0001 C CNN
F 3 "~" H 6300 1950 50  0001 C CNN
	1    6300 1950
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FBD6639
P 5250 4250
AR Path="/5FBD6639" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FBD6639" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FBD6639" Ref="R304"  Part="1" 
F 0 "R304" H 5000 4250 50  0000 L CNN
F 1 "10K" H 5050 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5180 4250 50  0001 C CNN
F 3 "~" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FBD663F
P 5000 4050
AR Path="/5FBD663F" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FBD663F" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FBD663F" Ref="R302"  Part="1" 
F 0 "R302" V 5100 4000 50  0000 L CNN
F 1 "10K" V 4900 4000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 4050 50  0001 C CNN
F 3 "~" H 5000 4050 50  0001 C CNN
	1    5000 4050
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBD6645
P 5650 4450
AR Path="/5FBD6645" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FBD6645" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBD6645" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 5650 4200 50  0001 C CNN
F 1 "GND" H 5655 4277 50  0000 C CNN
F 2 "" H 5650 4450 50  0001 C CNN
F 3 "" H 5650 4450 50  0001 C CNN
	1    5650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4450 5650 4400
Wire Wire Line
	5650 4100 5650 4050
Wire Wire Line
	5650 4050 6000 4050
Connection ~ 5650 4050
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBD664F
P 6300 4450
AR Path="/5FBD664F" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FBD664F" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBD664F" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 6300 4200 50  0001 C CNN
F 1 "GND" H 6305 4277 50  0000 C CNN
F 2 "" H 6300 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
	1    6300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4250 6300 4450
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q?
U 1 1 5FBD6656
P 6200 4050
AR Path="/5FBD6656" Ref="Q?"  Part="1" 
AR Path="/5F8BACBE/5FBD6656" Ref="Q?"  Part="1" 
AR Path="/5F8C2412/5FBD6656" Ref="Q302"  Part="1" 
F 0 "Q302" H 6404 4096 50  0000 L CNN
F 1 "BSS138" H 6404 4005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 3975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 6200 4050 50  0001 L CNN
	1    6200 4050
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:D_TVS-Device D?
U 1 1 5FBD665C
P 5650 4250
AR Path="/5FBD665C" Ref="D?"  Part="1" 
AR Path="/5F8BACBE/5FBD665C" Ref="D?"  Part="1" 
AR Path="/5F8C2412/5FBD665C" Ref="D302"  Part="1" 
F 0 "D302" V 5604 4330 50  0000 L CNN
F 1 "PTVS5V0S1UR" V 5695 4330 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5650 4250 50  0001 C CNN
F 3 "~" H 5650 4250 50  0001 C CNN
	1    5650 4250
	0    1    1    0   
$EndComp
Text HLabel 4800 4050 0    50   Input ~ 0
FLOW_02
Wire Wire Line
	5250 4100 5250 4050
Connection ~ 5250 4050
Wire Wire Line
	5250 4050 5150 4050
Wire Wire Line
	5250 4050 5650 4050
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FBD6667
P 5250 4450
AR Path="/5FBD6667" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FBD6667" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBD6667" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 5250 4200 50  0001 C CNN
F 1 "GND" H 5255 4277 50  0000 C CNN
F 2 "" H 5250 4450 50  0001 C CNN
F 3 "" H 5250 4450 50  0001 C CNN
	1    5250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4450 5250 4400
Wire Wire Line
	4850 4050 4800 4050
Wire Wire Line
	6300 3800 6300 3850
Connection ~ 6300 3800
Wire Wire Line
	6300 3750 6300 3800
Wire Wire Line
	6300 3450 6300 3400
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FBD667A
P 6300 3600
AR Path="/5FBD667A" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FBD667A" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FBD667A" Ref="R306"  Part="1" 
F 0 "R306" H 6370 3646 50  0000 L CNN
F 1 "10K" H 6400 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 3600 50  0001 C CNN
F 3 "~" H 6300 3600 50  0001 C CNN
	1    6300 3600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FBDD20B
P 6300 3400
AR Path="/5F8BACBE/5FBDD20B" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBDD20B" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 6300 3250 50  0001 C CNN
F 1 "+3V3" H 6315 3573 50  0000 C CNN
F 2 "" H 6300 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FBDD9D7
P 6300 1750
AR Path="/5F8BACBE/5FBDD9D7" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FBDD9D7" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 6300 1600 50  0001 C CNN
F 1 "+3V3" H 6315 1923 50  0000 C CNN
F 2 "" H 6300 1750 50  0001 C CNN
F 3 "" H 6300 1750 50  0001 C CNN
	1    6300 1750
	1    0    0    -1  
$EndComp
Text Notes 3750 2450 0    50   ~ 0
24V pulse input
Text Notes 3750 4100 0    50   ~ 0
24V pulse input
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FDF090B
P 6300 5350
AR Path="/5F8C27AF/5FDF090B" Ref="C?"  Part="1" 
AR Path="/5F8C2412/5FDF090B" Ref="C301"  Part="1" 
F 0 "C301" H 6415 5396 50  0000 L CNN
F 1 "100nF 50V" H 6415 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6338 5200 50  0001 C CNN
F 3 "~" H 6300 5350 50  0001 C CNN
	1    6300 5350
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FDF0911
P 6300 5600
AR Path="/5F8C27AF/5FDF0911" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FDF0911" Ref="#PWR0310"  Part="1" 
F 0 "#PWR0310" H 6300 5350 50  0001 C CNN
F 1 "GND" H 6305 5427 50  0000 C CNN
F 2 "" H 6300 5600 50  0001 C CNN
F 3 "" H 6300 5600 50  0001 C CNN
	1    6300 5600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FDF0917
P 6300 5100
AR Path="/5F8C27AF/5FDF0917" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FDF0917" Ref="#PWR0309"  Part="1" 
F 0 "#PWR0309" H 6300 4950 50  0001 C CNN
F 1 "+3V3" H 6315 5273 50  0000 C CNN
F 2 "" H 6300 5100 50  0001 C CNN
F 3 "" H 6300 5100 50  0001 C CNN
	1    6300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5100 6300 5200
Wire Wire Line
	6300 5500 6300 5600
Text Notes 6050 5900 0    50   ~ 0
Near mosfets
Text Label 6900 2150 2    50   ~ 0
FlowIn01
Text Label 6900 3800 2    50   ~ 0
FlowIn02
Wire Wire Line
	6300 3800 6950 3800
Wire Wire Line
	6300 2150 6950 2150
Text HLabel 6950 2150 2    50   Output ~ 0
FLOW_IN_01
Text HLabel 6950 3800 2    50   Output ~ 0
FLOW_IN_02
$EndSCHEMATC
