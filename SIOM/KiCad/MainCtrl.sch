EESchema Schematic File Version 4
LIBS:SIOMv01-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
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
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5F9C6626
P 4200 6750
AR Path="/5F8C27AF/5F9C6626" Ref="#PWR?"  Part="1" 
AR Path="/5F97DE9D/5F9C6626" Ref="#PWR0906"  Part="1" 
F 0 "#PWR0906" H 4200 6600 50  0001 C CNN
F 1 "+3V3" H 4215 6923 50  0000 C CNN
F 2 "" H 4200 6750 50  0001 C CNN
F 3 "" H 4200 6750 50  0001 C CNN
	1    4200 6750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5F9C6634
P 4200 6950
AR Path="/5F8C27AF/5F9C6634" Ref="R?"  Part="1" 
AR Path="/5F97DE9D/5F9C6634" Ref="R902"  Part="1" 
F 0 "R902" H 4150 6950 50  0000 R CNN
F 1 "100k" V 4200 7050 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4130 6950 50  0001 C CNN
F 3 "~" H 4200 6950 50  0001 C CNN
	1    4200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 7100 4200 7150
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5F9C6652
P 3850 6750
AR Path="/5F8C27AF/5F9C6652" Ref="#PWR?"  Part="1" 
AR Path="/5F97DE9D/5F9C6652" Ref="#PWR0905"  Part="1" 
F 0 "#PWR0905" H 3850 6600 50  0001 C CNN
F 1 "+3V3" H 3865 6923 50  0000 C CNN
F 2 "" H 3850 6750 50  0001 C CNN
F 3 "" H 3850 6750 50  0001 C CNN
	1    3850 6750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5F9C6660
P 3850 6950
AR Path="/5F8C27AF/5F9C6660" Ref="R?"  Part="1" 
AR Path="/5F97DE9D/5F9C6660" Ref="R901"  Part="1" 
F 0 "R901" H 3800 6950 50  0000 R CNN
F 1 "100k" V 3850 7050 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 6950 50  0001 C CNN
F 3 "~" H 3850 6950 50  0001 C CNN
	1    3850 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7100 3850 7150
Text Label 4200 7150 3    50   ~ 0
SCL
Text Label 3850 7150 3    50   ~ 0
SDA
Wire Wire Line
	3850 6750 3850 6800
Wire Wire Line
	4200 6750 4200 6800
$Comp
L TinyPico:TinyPico U901
U 1 1 5FA7526C
P 5200 3800
F 0 "U901" H 4950 4500 50  0000 C CNN
F 1 "TinyPico" H 5200 4350 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket_LongPads" H 5650 4250 50  0001 C CNN
F 3 "https://www.tinypico.com/" H 5650 4250 50  0001 C CNN
	1    5200 3800
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0903
U 1 1 5FA77160
P 4700 4550
F 0 "#PWR0903" H 4700 4300 50  0001 C CNN
F 1 "GND" H 4705 4377 50  0000 C CNN
F 2 "" H 4700 4550 50  0001 C CNN
F 3 "" H 4700 4550 50  0001 C CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR0904
U 1 1 5FA7777E
P 5700 4550
F 0 "#PWR0904" H 5700 4300 50  0001 C CNN
F 1 "GND" H 5705 4377 50  0000 C CNN
F 2 "" H 5700 4550 50  0001 C CNN
F 3 "" H 5700 4550 50  0001 C CNN
	1    5700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4550 4700 4250
Wire Wire Line
	4700 4250 4750 4250
Wire Wire Line
	5700 4550 5700 3450
Wire Wire Line
	5700 3450 5650 3450
Wire Wire Line
	4750 4050 4700 4050
Wire Wire Line
	4750 4150 4500 4150
Wire Wire Line
	4500 4150 4500 3300
NoConn ~ 4750 4350
$Comp
L SIOMv01-rescue:+5V-power #PWR0901
U 1 1 5FA795F0
P 4500 3300
F 0 "#PWR0901" H 4500 3150 50  0001 C CNN
F 1 "+5V" H 4515 3473 50  0000 C CNN
F 2 "" H 4500 3300 50  0001 C CNN
F 3 "" H 4500 3300 50  0001 C CNN
	1    4500 3300
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0902
U 1 1 5FA79B79
P 4700 3300
F 0 "#PWR0902" H 4700 3150 50  0001 C CNN
F 1 "+3V3" H 4715 3473 50  0000 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3450 4350 3450
Wire Wire Line
	4750 3550 4350 3550
Text HLabel 7850 3050 2    50   Output ~ 0
ANA_OUT_01
Wire Wire Line
	5650 3850 5850 3850
Wire Wire Line
	5650 3950 5850 3950
Text Label 5850 3850 0    50   ~ 0
SDA
Text Label 5850 3950 0    50   ~ 0
SCL
Wire Wire Line
	5650 4050 5850 4050
Wire Wire Line
	5650 4150 5850 4150
Wire Wire Line
	5650 4250 5850 4250
Wire Wire Line
	5650 4350 5850 4350
Wire Wire Line
	5650 3750 5850 3750
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FAFE640
P 4850 6950
AR Path="/5F8BACBE/5FAFE640" Ref="C?"  Part="1" 
AR Path="/5F97DE9D/5FAFE640" Ref="C901"  Part="1" 
F 0 "C901" H 4965 6996 50  0000 L CNN
F 1 "100n/16" H 4965 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 6800 50  0001 C CNN
F 3 "~" H 4850 6950 50  0001 C CNN
	1    4850 6950
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAFE646
P 4850 7150
AR Path="/5FAFE646" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FAFE646" Ref="#PWR?"  Part="1" 
AR Path="/5F97DE9D/5FAFE646" Ref="#PWR0909"  Part="1" 
F 0 "#PWR0909" H 4850 6900 50  0001 C CNN
F 1 "GND" H 4855 6977 50  0000 C CNN
F 2 "" H 4850 7150 50  0001 C CNN
F 3 "" H 4850 7150 50  0001 C CNN
	1    4850 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7150 4850 7100
Wire Wire Line
	4850 6800 4850 6750
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 5FAFE64E
P 4850 6750
AR Path="/5F8BACBE/5FAFE64E" Ref="#PWR?"  Part="1" 
AR Path="/5F97DE9D/5FAFE64E" Ref="#PWR0907"  Part="1" 
F 0 "#PWR0907" H 4850 6600 50  0001 C CNN
F 1 "+5V" H 4865 6923 50  0000 C CNN
F 2 "" H 4850 6750 50  0001 C CNN
F 3 "" H 4850 6750 50  0001 C CNN
	1    4850 6750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FAFF5AB
P 5500 6950
AR Path="/5F8BACBE/5FAFF5AB" Ref="C?"  Part="1" 
AR Path="/5F97DE9D/5FAFF5AB" Ref="C902"  Part="1" 
F 0 "C902" H 5615 6996 50  0000 L CNN
F 1 "100n/16" H 5615 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5538 6800 50  0001 C CNN
F 3 "~" H 5500 6950 50  0001 C CNN
	1    5500 6950
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAFF5B1
P 5500 7150
AR Path="/5FAFF5B1" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FAFF5B1" Ref="#PWR?"  Part="1" 
AR Path="/5F97DE9D/5FAFF5B1" Ref="#PWR0910"  Part="1" 
F 0 "#PWR0910" H 5500 6900 50  0001 C CNN
F 1 "GND" H 5505 6977 50  0000 C CNN
F 2 "" H 5500 7150 50  0001 C CNN
F 3 "" H 5500 7150 50  0001 C CNN
	1    5500 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7150 5500 7100
Wire Wire Line
	5500 6800 5500 6750
$Comp
L SIOMv01-rescue:+3V3-power #PWR0908
U 1 1 5FAFF8BF
P 5500 6750
F 0 "#PWR0908" H 5500 6600 50  0001 C CNN
F 1 "+3V3" H 5515 6923 50  0000 C CNN
F 2 "" H 5500 6750 50  0001 C CNN
F 3 "" H 5500 6750 50  0001 C CNN
	1    5500 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3650 4350 3650
Wire Wire Line
	4350 3750 4750 3750
Wire Wire Line
	5650 3650 5850 3650
Wire Wire Line
	4750 3950 4350 3950
Text Label 5850 3650 0    50   ~ 0
INT_HP
Text Label 5850 3750 0    50   ~ 0
INT_P1
Text Label 5850 4050 0    50   ~ 0
SPI_CS_P1
Text Label 5850 4250 0    50   ~ 0
SPI_MISO
Text Label 5850 4350 0    50   ~ 0
SPI_MOSI
Text Label 4350 3950 2    50   ~ 0
SPI_CS_HP
Text Label 7550 4050 2    50   ~ 0
INT_HP
Text Label 7550 3650 2    50   ~ 0
SPI_CS_HP
Text Label 7550 3050 2    50   ~ 0
DAC01
Text Label 7550 4150 2    50   ~ 0
DAC02
Text Label 4350 3450 2    50   ~ 0
DAC01
Text Label 4350 3550 2    50   ~ 0
DAC02
Text Label 2750 3050 0    50   ~ 0
FLOW_IN_01
Text Label 2750 3150 0    50   ~ 0
FLOW_IN_02
Wire Wire Line
	7550 3150 7850 3150
Wire Wire Line
	7850 4150 7550 4150
Text Label 4350 3650 2    50   ~ 0
FLOW_IN_01
Text Label 4350 3750 2    50   ~ 0
FLOW_IN_02
Text Notes 4200 2600 0    50   ~ 0
Power consumption 5V unknown current consumption\nPower consumption 3V3 unknown current consumption
Text Notes 4900 7500 0    50   ~ 0
Near TinyPico
Text Label 2750 3750 0    50   ~ 0
SPI_SCLK
Text Label 2750 3850 0    50   ~ 0
SPI_MISO
Text Label 2750 3950 0    50   ~ 0
SPI_MOSI
Wire Wire Line
	2750 3750 2450 3750
Wire Wire Line
	2750 3850 2450 3850
Wire Wire Line
	2750 3950 2450 3950
Text Label 2750 4050 0    50   ~ 0
INT_P1
Text Label 2750 3650 0    50   ~ 0
SPI_CS_P1
Wire Wire Line
	2750 4050 2450 4050
Wire Wire Line
	2750 3650 2450 3650
Text Label 7550 3750 2    50   ~ 0
SPI_SCLK
Text Label 7550 3850 2    50   ~ 0
SPI_MISO
Text Label 7550 3950 2    50   ~ 0
SPI_MOSI
Wire Wire Line
	7550 3750 7850 3750
Wire Wire Line
	7550 3850 7850 3850
Wire Wire Line
	7550 3950 7850 3950
Wire Wire Line
	7550 4050 7850 4050
Wire Wire Line
	7550 3650 7850 3650
Text Label 7550 3150 2    50   ~ 0
DAC02
Wire Wire Line
	7850 3050 7550 3050
Wire Wire Line
	2750 3150 2450 3150
Wire Wire Line
	2450 3050 2750 3050
Wire Wire Line
	7550 4850 7850 4850
Wire Wire Line
	7850 4750 7550 4750
Wire Wire Line
	2750 4850 2450 4850
Wire Wire Line
	2450 4750 2750 4750
Text Label 7550 4750 2    50   ~ 0
SDA
Text Label 7550 4850 2    50   ~ 0
SCL
Text Label 2750 4750 0    50   ~ 0
SDA
Text Label 2750 4850 0    50   ~ 0
SCL
Wire Wire Line
	7850 4250 7550 4250
Wire Wire Line
	4700 4050 4700 3300
Wire Wire Line
	4750 3850 4350 3850
Text Label 4350 3850 2    50   ~ 0
BOILER
Text Label 7550 4250 2    50   ~ 0
BOILER
Text HLabel 2450 3650 0    50   Output ~ 0
SPI_CS_P1
Text HLabel 2450 3750 0    50   Output ~ 0
SPI_MOSI_P1
Text HLabel 2450 3850 0    50   Input ~ 0
SPI_MISO_P1
Text HLabel 2450 3950 0    50   Output ~ 0
SPI_SCLK_P1
Text HLabel 2450 4050 0    50   Input ~ 0
INT_P1
Text HLabel 2450 3050 0    50   Input ~ 0
FLOW_IN_01
Text HLabel 2450 3150 0    50   Input ~ 0
FLOW_IN_02
Text HLabel 2450 4850 0    50   Output ~ 0
SCL_TS
Text HLabel 2450 4750 0    50   BiDi ~ 0
SDA_TS
Text HLabel 7850 3150 2    50   Output ~ 0
ANA_OUT_02
Text Label 5850 4150 0    50   ~ 0
SPI_SCLK
Text HLabel 7850 4850 2    50   Output ~ 0
SCL_AUX
Text HLabel 7850 4750 2    50   BiDi ~ 0
SDA_AUX
Text HLabel 7850 3650 2    50   Output ~ 0
SPI_CS_HP
Text HLabel 7850 3750 2    50   Output ~ 0
SPI_MOSI_HP
Text HLabel 7850 3850 2    50   Input ~ 0
SPI_MISO_HP
Text HLabel 7850 3950 2    50   Output ~ 0
SPI_SCLK_HP
Text HLabel 7850 4050 2    50   Input ~ 0
INT_HP
Text HLabel 7850 4250 2    50   Output ~ 0
BOILER
Text HLabel 7850 4150 2    50   Output ~ 0
ANA_OUT_HP
$Comp
L Switch:SW_Push SW901
U 1 1 602A5193
P 2800 6900
F 0 "SW901" V 2754 7048 50  0000 L CNN
F 1 "SW_Push" V 2845 7048 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 2800 7100 50  0001 C CNN
F 3 "~" H 2800 7100 50  0001 C CNN
	1    2800 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 6700 2800 6650
Wire Wire Line
	2800 7100 2800 7150
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 602A8A64
P 2800 7150
AR Path="/602A8A64" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/602A8A64" Ref="#PWR?"  Part="1" 
AR Path="/5F97DE9D/602A8A64" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 2800 6900 50  0001 C CNN
F 1 "GND" H 2805 6977 50  0000 C CNN
F 2 "" H 2800 7150 50  0001 C CNN
F 3 "" H 2800 7150 50  0001 C CNN
	1    2800 7150
	1    0    0    -1  
$EndComp
Text Label 2800 6650 0    50   ~ 0
RESET
Text Label 5850 3550 0    50   ~ 0
RESET
Wire Wire Line
	5650 3550 5850 3550
$EndSCHEMATC
