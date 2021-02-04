EESchema Schematic File Version 4
LIBS:SIOMv01-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
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
AR Path="/5F8BACBE/5F8C0D34" Ref="R502"  Part="1" 
F 0 "R502" H 4250 2600 50  0000 L CNN
F 1 "1k00" V 4200 2500 50  0000 L CNN
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
AR Path="/5F8BACBE/5F8C0D46" Ref="#PWR0501"  Part="1" 
F 0 "#PWR0501" H 4200 1800 50  0001 C CNN
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
AR Path="/5F8BACBE/5F8C0D5E" Ref="#PWR0505"  Part="1" 
F 0 "#PWR0505" H 4200 3200 50  0001 C CNN
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
AR Path="/5F8BACBE/5F8C0D64" Ref="#PWR0506"  Part="1" 
F 0 "#PWR0506" H 4950 3200 50  0001 C CNN
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
AR Path="/5F8BACBE/5F8C0D79" Ref="#PWR0507"  Part="1" 
F 0 "#PWR0507" H 5550 3200 50  0001 C CNN
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
AR Path="/5F8BACBE/5F8C0D80" Ref="Q501"  Part="1" 
F 0 "Q501" H 5654 2846 50  0000 L CNN
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
AR Path="/5F8BACBE/5F8C0D86" Ref="D502"  Part="1" 
F 0 "D502" V 4154 3080 50  0000 L CNN
F 1 "PTVS5V0S1UR" V 4245 3080 50  0000 L CNN
F 2 "Diode_SMD:Nexperia_CFP3_SOD-123W" H 4200 3000 50  0001 C CNN
F 3 "~" H 4200 3000 50  0001 C CNN
	1    4200 3000
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5F8C0D8C
P 5550 2200
AR Path="/5F8C0D8C" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D8C" Ref="R501"  Part="1" 
F 0 "R501" H 5600 2200 50  0000 L CNN
F 1 "1k00" V 5550 2100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5480 2200 50  0001 C CNN
F 3 "~" H 5550 2200 50  0001 C CNN
	1    5550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2050 5550 1950
Wire Wire Line
	5550 2350 5550 2500
Text Notes 3250 4350 0    50   ~ 0
According:\nDutch Smart Meter Requirements (DSMR)\n\nOnly data transmitted will be used. The power and data received input will be ommited.
$Comp
L SIOMv01-rescue:C-Device C502
U 1 1 5F92D579
P 4200 5150
F 0 "C502" H 4315 5196 50  0000 L CNN
F 1 "100n/16" H 4315 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4238 5000 50  0001 C CNN
F 3 "~" H 4200 5150 50  0001 C CNN
	1    4200 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5F92E9D9
P 4200 5400
AR Path="/5F92E9D9" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5F92E9D9" Ref="#PWR0512"  Part="1" 
F 0 "#PWR0512" H 4200 5150 50  0001 C CNN
F 1 "GND" H 4205 5227 50  0000 C CNN
F 2 "" H 4200 5400 50  0001 C CNN
F 3 "" H 4200 5400 50  0001 C CNN
	1    4200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5400 4200 5300
Wire Wire Line
	4200 5000 4200 4900
$Comp
L SIOMv01-rescue:+5V-power #PWR0510
U 1 1 5F93139B
P 4200 4900
F 0 "#PWR0510" H 4200 4750 50  0001 C CNN
F 1 "+5V" H 4215 5073 50  0000 C CNN
F 2 "" H 4200 4900 50  0001 C CNN
F 3 "" H 4200 4900 50  0001 C CNN
	1    4200 4900
	1    0    0    -1  
$EndComp
Text Notes 5050 1450 0    50   ~ 0
Power consumption 5V 20mA\nPower consumption 3V3 10mA
$Comp
L SIOMv01-rescue:SC16IS740-Interface_UART U501
U 1 1 5FAAC503
P 6650 2700
F 0 "U501" H 7000 3350 50  0000 C CNN
F 1 "SC16IS740" H 6400 2050 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 6650 1500 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/SC16IS740_750_760.pdf" H 6650 1300 50  0001 C CNN
	1    6650 2700
	-1   0    0    -1  
$EndComp
NoConn ~ 6150 2800
NoConn ~ 6150 2700
NoConn ~ 6150 2600
Wire Wire Line
	6650 3400 6650 3450
Wire Wire Line
	6650 2000 6650 1950
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAB464E
P 6650 3450
AR Path="/5FAB464E" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FAB464E" Ref="#PWR0508"  Part="1" 
F 0 "#PWR0508" H 6650 3200 50  0001 C CNN
F 1 "GND" H 6655 3277 50  0000 C CNN
F 2 "" H 6650 3450 50  0001 C CNN
F 3 "" H 6650 3450 50  0001 C CNN
	1    6650 3450
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR0503
U 1 1 5FAB4F21
P 6650 1950
F 0 "#PWR0503" H 6650 1800 50  0001 C CNN
F 1 "+3V3" H 6665 2123 50  0000 C CNN
F 2 "" H 6650 1950 50  0001 C CNN
F 3 "" H 6650 1950 50  0001 C CNN
	1    6650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2300 7200 2300
Wire Wire Line
	7200 2300 7200 1950
$Comp
L SIOMv01-rescue:+3V3-power #PWR0504
U 1 1 5FAB75CF
P 7200 1950
F 0 "#PWR0504" H 7200 1800 50  0001 C CNN
F 1 "+3V3" H 7215 2123 50  0000 C CNN
F 2 "" H 7200 1950 50  0001 C CNN
F 3 "" H 7200 1950 50  0001 C CNN
	1    7200 1950
	1    0    0    -1  
$EndComp
Connection ~ 5550 2500
Wire Wire Line
	5550 2500 5550 2600
Wire Wire Line
	5550 2500 6150 2500
Wire Wire Line
	7150 2500 7650 2500
Wire Wire Line
	7150 2600 7650 2600
Wire Wire Line
	7150 2700 7650 2700
Wire Wire Line
	7150 2800 7650 2800
NoConn ~ 7150 2900
Wire Wire Line
	6150 3000 6100 3000
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FAC1C2B
P 6350 3750
AR Path="/5FAC1C2B" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FAC1C2B" Ref="R503"  Part="1" 
F 0 "R503" H 6400 3750 50  0000 L CNN
F 1 "1k00" V 6350 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 3750 50  0001 C CNN
F 3 "~" H 6350 3750 50  0001 C CNN
	1    6350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3900 6350 3950
Wire Wire Line
	6350 3600 6350 3550
$Comp
L SIOMv01-rescue:+3V3-power #PWR0509
U 1 1 5FAC2ECD
P 6350 3550
F 0 "#PWR0509" H 6350 3400 50  0001 C CNN
F 1 "+3V3" H 6365 3723 50  0000 C CNN
F 2 "" H 6350 3550 50  0001 C CNN
F 3 "" H 6350 3550 50  0001 C CNN
	1    6350 3550
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:Crystal-Device Y501
U 1 1 5FAC3B59
P 6850 5000
F 0 "Y501" H 6850 5268 50  0000 C CNN
F 1 "7.3728MHz" H 6850 5177 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 6850 5000 50  0001 C CNN
F 3 "~" H 6850 5000 50  0001 C CNN
	1    6850 5000
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C505
U 1 1 5FAC44E7
P 6650 5200
F 0 "C505" H 6765 5246 50  0000 L CNN
F 1 "18p" H 6765 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6688 5050 50  0001 C CNN
F 3 "~" H 6650 5200 50  0001 C CNN
	1    6650 5200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C506
U 1 1 5FAC4BEC
P 7050 5200
F 0 "C506" H 7165 5246 50  0000 L CNN
F 1 "18p" H 7165 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7088 5050 50  0001 C CNN
F 3 "~" H 7050 5200 50  0001 C CNN
	1    7050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5350 6650 5400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAC531D
P 6650 5400
AR Path="/5FAC531D" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FAC531D" Ref="#PWR0514"  Part="1" 
F 0 "#PWR0514" H 6650 5150 50  0001 C CNN
F 1 "GND" H 6655 5227 50  0000 C CNN
F 2 "" H 6650 5400 50  0001 C CNN
F 3 "" H 6650 5400 50  0001 C CNN
	1    6650 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5350 7050 5400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAC5851
P 7050 5400
AR Path="/5FAC5851" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FAC5851" Ref="#PWR0515"  Part="1" 
F 0 "#PWR0515" H 7050 5150 50  0001 C CNN
F 1 "GND" H 7055 5227 50  0000 C CNN
F 2 "" H 7050 5400 50  0001 C CNN
F 3 "" H 7050 5400 50  0001 C CNN
	1    7050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5000 6650 5000
Wire Wire Line
	6650 5000 6650 5050
Wire Wire Line
	7000 5000 7050 5000
Wire Wire Line
	7050 5000 7050 5050
Wire Wire Line
	6650 5000 6550 5000
Connection ~ 6650 5000
Wire Wire Line
	7050 5000 7150 5000
Connection ~ 7050 5000
Text Label 6550 5000 2    50   ~ 0
XTAL1
Text Label 7150 5000 0    50   ~ 0
XTAL2
Text Label 7150 3100 0    50   ~ 0
XTAL1
Text Label 7150 3200 0    50   ~ 0
XTAL2
Wire Wire Line
	6100 3000 6100 3950
Text HLabel 7650 2500 2    50   Input ~ 0
SPI_CS_P1
Text HLabel 7650 2600 2    50   Input ~ 0
SPI_MOSI
Text HLabel 7650 2700 2    50   Output ~ 0
SPI_MISO
Text HLabel 7650 2800 2    50   Input ~ 0
SPI_SCLK
Text HLabel 7650 3950 2    50   Output ~ 0
INT_P1
$Comp
L SIOMv01-rescue:C-Device C503
U 1 1 5FAD6969
P 5000 5150
F 0 "C503" H 5115 5196 50  0000 L CNN
F 1 "NP" H 5115 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 5000 50  0001 C CNN
F 3 "~" H 5000 5150 50  0001 C CNN
	1    5000 5150
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FAD696F
P 5300 5400
AR Path="/5FAD696F" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FAD696F" Ref="#PWR0513"  Part="1" 
F 0 "#PWR0513" H 5300 5150 50  0001 C CNN
F 1 "GND" H 5305 5227 50  0000 C CNN
F 2 "" H 5300 5400 50  0001 C CNN
F 3 "" H 5300 5400 50  0001 C CNN
	1    5300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5400 5300 5350
$Comp
L SIOMv01-rescue:+3V3-power #PWR0511
U 1 1 5FAD7132
P 5300 4900
F 0 "#PWR0511" H 5300 4750 50  0001 C CNN
F 1 "+3V3" H 5315 5073 50  0000 C CNN
F 2 "" H 5300 4900 50  0001 C CNN
F 3 "" H 5300 4900 50  0001 C CNN
	1    5300 4900
	1    0    0    -1  
$EndComp
Text Notes 5150 5700 0    50   ~ 0
Near IC
Text Notes 3950 5700 0    50   ~ 0
Near BSS138
Wire Wire Line
	4200 2800 3900 2800
Connection ~ 4200 2800
Text HLabel 3900 2800 0    50   Input ~ 0
P1_INPUT
NoConn ~ 7150 2200
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 5F8C0D92
P 5550 1950
AR Path="/5F8C0D92" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5F8C0D92" Ref="#PWR0502"  Part="1" 
F 0 "#PWR0502" H 5550 1800 50  0001 C CNN
F 1 "+5V" H 5565 2123 50  0000 C CNN
F 2 "" H 5550 1950 50  0001 C CNN
F 3 "" H 5550 1950 50  0001 C CNN
	1    5550 1950
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C504
U 1 1 5FDE1CE9
P 5600 5150
F 0 "C504" H 5715 5196 50  0000 L CNN
F 1 "100n/16" H 5715 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5638 5000 50  0001 C CNN
F 3 "~" H 5600 5150 50  0001 C CNN
	1    5600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5300 5000 5350
Wire Wire Line
	5000 5350 5300 5350
Connection ~ 5300 5350
Wire Wire Line
	5300 5350 5600 5350
Wire Wire Line
	5600 5350 5600 5300
Wire Wire Line
	5600 5000 5600 4950
Wire Wire Line
	5600 4950 5300 4950
Connection ~ 5300 4950
Wire Wire Line
	5300 4950 5300 4900
Wire Wire Line
	5300 4950 5000 4950
Wire Wire Line
	5000 4950 5000 5000
$Comp
L SIOMv01-rescue:1N4148W-Diode D501
U 1 1 6002EFB9
P 4200 2200
F 0 "D501" V 4246 2120 50  0000 R CNN
F 1 "1N4148W" V 4155 2120 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 4200 2025 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 4200 2200 50  0001 C CNN
	1    4200 2200
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:C-Device C501
U 1 1 60034EB4
P 4950 3000
F 0 "C501" H 5065 3046 50  0000 L CNN
F 1 "100n/10" H 5065 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 2850 50  0001 C CNN
F 3 "~" H 4950 3000 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2800 5250 2800
Text Label 7200 2500 0    50   ~ 0
SPI_CS_P1
Text Label 7200 2600 0    50   ~ 0
SPI_MOSI
Text Label 7200 2700 0    50   ~ 0
SPI_MISO
Text Label 7200 2800 0    50   ~ 0
SPI_SCLK
Text Label 7200 3950 0    50   ~ 0
INT_P1
Wire Wire Line
	6100 3950 6350 3950
Connection ~ 6350 3950
Wire Wire Line
	6350 3950 7650 3950
$EndSCHEMATC
