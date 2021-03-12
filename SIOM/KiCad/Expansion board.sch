EESchema Schematic File Version 4
LIBS:SIOMv01-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
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
L SIOMv01-rescue:SC16IS740-Interface_UART U?
U 1 1 5FC181A5
P 2450 3300
AR Path="/5F8BACBE/5FC181A5" Ref="U?"  Part="1" 
AR Path="/5FB9434D/5FC181A5" Ref="U803"  Part="1" 
F 0 "U803" H 2800 3950 50  0000 C CNN
F 1 "SC16IS740" H 2200 2650 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 2450 2100 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/SC16IS740_750_760.pdf" H 2450 1900 50  0001 C CNN
	1    2450 3300
	1    0    0    -1  
$EndComp
NoConn ~ 2950 3200
Wire Wire Line
	2450 4000 2450 4050
Wire Wire Line
	2450 2600 2450 2550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FC181B0
P 2450 4050
AR Path="/5FC181B0" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FC181B0" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC181B0" Ref="#PWR0815"  Part="1" 
F 0 "#PWR0815" H 2450 3800 50  0001 C CNN
F 1 "GND" H 2455 3877 50  0000 C CNN
F 2 "" H 2450 4050 50  0001 C CNN
F 3 "" H 2450 4050 50  0001 C CNN
	1    2450 4050
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FC181B6
P 2450 2550
AR Path="/5F8BACBE/5FC181B6" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC181B6" Ref="#PWR0805"  Part="1" 
F 0 "#PWR0805" H 2450 2400 50  0001 C CNN
F 1 "+3V3" H 2465 2723 50  0000 C CNN
F 2 "" H 2450 2550 50  0001 C CNN
F 3 "" H 2450 2550 50  0001 C CNN
	1    2450 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 2900 1900 2900
Wire Wire Line
	1900 2900 1900 2550
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FC181BE
P 1900 2550
AR Path="/5F8BACBE/5FC181BE" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC181BE" Ref="#PWR0804"  Part="1" 
F 0 "#PWR0804" H 1900 2400 50  0001 C CNN
F 1 "+3V3" H 1915 2723 50  0000 C CNN
F 2 "" H 1900 2550 50  0001 C CNN
F 3 "" H 1900 2550 50  0001 C CNN
	1    1900 2550
	-1   0    0    -1  
$EndComp
NoConn ~ 1950 3500
Wire Wire Line
	2950 3600 3000 3600
Wire Wire Line
	3000 4550 2750 4550
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FC181CC
P 2750 4350
AR Path="/5FC181CC" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FC181CC" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FC181CC" Ref="R807"  Part="1" 
F 0 "R807" H 2820 4396 50  0000 L CNN
F 1 "1k00" H 2820 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2680 4350 50  0001 C CNN
F 3 "~" H 2750 4350 50  0001 C CNN
	1    2750 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 4500 2750 4550
Wire Wire Line
	2750 4200 2750 4150
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FC181D6
P 2750 4150
AR Path="/5F8BACBE/5FC181D6" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC181D6" Ref="#PWR0816"  Part="1" 
F 0 "#PWR0816" H 2750 4000 50  0001 C CNN
F 1 "+3V3" H 2765 4323 50  0000 C CNN
F 2 "" H 2750 4150 50  0001 C CNN
F 3 "" H 2750 4150 50  0001 C CNN
	1    2750 4150
	-1   0    0    -1  
$EndComp
Text Label 1950 3700 2    50   ~ 0
XTAL1
Text Label 1950 3800 2    50   ~ 0
XTAL2
Wire Wire Line
	3000 3600 3000 4550
NoConn ~ 1950 2800
$Comp
L Amplifier_Operational:LM7332 U?
U 1 1 5FC5AEEC
P 9150 1150
AR Path="/5F8C23F2/5FC5AEEC" Ref="U?"  Part="2" 
AR Path="/5FB9434D/5FC5AEEC" Ref="U801"  Part="1" 
AR Path="/5FC5AEEC" Ref="U?"  Part="1" 
F 0 "U801" H 9200 1450 50  0000 C CNN
F 1 "LM7332" H 9200 1350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9100 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 9200 1350 50  0001 C CNN
	1    9150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1150 9500 1150
Wire Wire Line
	8850 1250 8800 1250
Wire Wire Line
	8800 1250 8800 1450
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FC5AEF5
P 9150 1450
AR Path="/5F8C23F2/5FC5AEF5" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FC5AEF5" Ref="R802"  Part="1" 
F 0 "R802" V 9050 1450 50  0000 C CNN
F 1 "10k0" V 9150 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9080 1450 50  0001 C CNN
F 3 "~" H 9150 1450 50  0001 C CNN
	1    9150 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 1450 9500 1450
Wire Wire Line
	9500 1450 9500 1150
Connection ~ 9500 1150
Wire Wire Line
	9500 1150 9850 1150
Wire Wire Line
	9000 1450 8800 1450
Wire Wire Line
	8800 1450 8800 1500
Connection ~ 8800 1450
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FC5AF02
P 8800 1650
AR Path="/5F8C23F2/5FC5AF02" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FC5AF02" Ref="R803"  Part="1" 
F 0 "R803" H 8850 1650 50  0000 L CNN
F 1 "22k0" V 8800 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8730 1650 50  0001 C CNN
F 3 "~" H 8800 1650 50  0001 C CNN
	1    8800 1650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FC5AF08
P 8800 1850
AR Path="/5F8C23F2/5FC5AF08" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC5AF08" Ref="#PWR0802"  Part="1" 
F 0 "#PWR0802" H 8800 1600 50  0001 C CNN
F 1 "GND" H 8805 1677 50  0000 C CNN
F 2 "" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1850 8800 1800
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FC5AF0F
P 10200 1150
AR Path="/5F8C23F2/5FC5AF0F" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FC5AF0F" Ref="R801"  Part="1" 
F 0 "R801" V 10100 1150 50  0000 C CNN
F 1 "470R" V 10200 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10130 1150 50  0001 C CNN
F 3 "~" H 10200 1150 50  0001 C CNN
	1    10200 1150
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:DZ2S120X0L-Diode D?
U 1 1 5FC5AF15
P 9850 1650
AR Path="/5F8C23F2/5FC5AF15" Ref="D?"  Part="1" 
AR Path="/5FB9434D/5FC5AF15" Ref="D801"  Part="1" 
F 0 "D801" V 9804 1730 50  0000 L CNN
F 1 "DZ2S120X0L" V 9895 1730 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-523" H 9850 1475 50  0001 C CNN
F 3 "https://industrial.panasonic.com/content/data/SC/ds/ds4/DZ2S12000L_E.pdf" H 9850 1650 50  0001 C CNN
	1    9850 1650
	0    1    1    0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FC5AF1B
P 9850 1850
AR Path="/5F8C23F2/5FC5AF1B" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC5AF1B" Ref="#PWR0803"  Part="1" 
F 0 "#PWR0803" H 9850 1600 50  0001 C CNN
F 1 "GND" H 9855 1677 50  0000 C CNN
F 2 "" H 9850 1850 50  0001 C CNN
F 3 "" H 9850 1850 50  0001 C CNN
	1    9850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1850 9850 1800
Wire Wire Line
	9850 1500 9850 1150
Wire Wire Line
	10350 1150 10450 1150
Text HLabel 10450 1150 2    50   Output ~ 0
V_OUT
Wire Wire Line
	8850 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2800
Text HLabel 10450 2250 2    50   Output ~ 0
I_OUT
Wire Wire Line
	8600 1050 8600 2400
Connection ~ 8600 1050
Wire Wire Line
	8600 1050 8850 1050
Wire Wire Line
	8600 2400 8850 2400
Text Notes 10850 1200 0    50   ~ 0
1..10V
Text Notes 10850 2300 0    50   ~ 0
1..20mA
$Comp
L Amplifier_Operational:LM7332 U?
U 2 1 5FC61515
P 9150 2500
AR Path="/5F8C23F2/5FC61515" Ref="U?"  Part="2" 
AR Path="/5FB9434D/5FC61515" Ref="U801"  Part="2" 
AR Path="/5FC61515" Ref="U?"  Part="2" 
F 0 "U801" H 9200 2800 50  0000 C CNN
F 1 "LM7332" H 9200 2700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9100 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 9200 2700 50  0001 C CNN
	2    9150 2500
	1    0    0    -1  
$EndComp
Connection ~ 9850 1150
Wire Wire Line
	9850 1150 10050 1150
$Comp
L SIOMv01-rescue:Crystal-Device Y?
U 1 1 5FD4A161
P 2200 5000
AR Path="/5F8BACBE/5FD4A161" Ref="Y?"  Part="1" 
AR Path="/5FB9434D/5FD4A161" Ref="Y801"  Part="1" 
F 0 "Y801" H 2200 5268 50  0000 C CNN
F 1 "7.3728MHz" H 2200 5177 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 2200 5000 50  0001 C CNN
F 3 "~" H 2200 5000 50  0001 C CNN
	1    2200 5000
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FD4A167
P 2000 5200
AR Path="/5F8BACBE/5FD4A167" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FD4A167" Ref="C805"  Part="1" 
F 0 "C805" H 2115 5246 50  0000 L CNN
F 1 "18p" H 2115 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2038 5050 50  0001 C CNN
F 3 "~" H 2000 5200 50  0001 C CNN
	1    2000 5200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FD4A16D
P 2400 5200
AR Path="/5F8BACBE/5FD4A16D" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FD4A16D" Ref="C806"  Part="1" 
F 0 "C806" H 2515 5246 50  0000 L CNN
F 1 "18p" H 2515 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2438 5050 50  0001 C CNN
F 3 "~" H 2400 5200 50  0001 C CNN
	1    2400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5350 2000 5400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FD4A174
P 2000 5400
AR Path="/5FD4A174" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FD4A174" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FD4A174" Ref="#PWR0818"  Part="1" 
F 0 "#PWR0818" H 2000 5150 50  0001 C CNN
F 1 "GND" H 2005 5227 50  0000 C CNN
F 2 "" H 2000 5400 50  0001 C CNN
F 3 "" H 2000 5400 50  0001 C CNN
	1    2000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5350 2400 5400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FD4A17B
P 2400 5400
AR Path="/5FD4A17B" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FD4A17B" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FD4A17B" Ref="#PWR0819"  Part="1" 
F 0 "#PWR0819" H 2400 5150 50  0001 C CNN
F 1 "GND" H 2405 5227 50  0000 C CNN
F 2 "" H 2400 5400 50  0001 C CNN
F 3 "" H 2400 5400 50  0001 C CNN
	1    2400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5000 2000 5000
Wire Wire Line
	2000 5000 2000 5050
Wire Wire Line
	2350 5000 2400 5000
Wire Wire Line
	2400 5000 2400 5050
Wire Wire Line
	2000 5000 1900 5000
Connection ~ 2000 5000
Wire Wire Line
	2400 5000 2500 5000
Connection ~ 2400 5000
Text Label 1900 5000 2    50   ~ 0
XTAL1
Text Label 2500 5000 0    50   ~ 0
XTAL2
$Comp
L Amplifier_Operational:LM7332 U?
U 3 1 5FE0F416
P 5550 6750
AR Path="/5F8C23F2/5FE0F416" Ref="U?"  Part="3" 
AR Path="/5FB9434D/5FE0F416" Ref="U801"  Part="3" 
AR Path="/5FE0F416" Ref="U?"  Part="3" 
F 0 "U801" H 5508 6796 50  0000 L CNN
F 1 "LM7332" H 5508 6705 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5500 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm7332.pdf" H 5600 6950 50  0001 C CNN
	3    5550 6750
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FE0F41C
P 5450 7150
AR Path="/5F8C23F2/5FE0F41C" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE0F41C" Ref="#PWR0831"  Part="1" 
F 0 "#PWR0831" H 5450 6900 50  0001 C CNN
F 1 "GND" H 5455 6977 50  0000 C CNN
F 2 "" H 5450 7150 50  0001 C CNN
F 3 "" H 5450 7150 50  0001 C CNN
	1    5450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 7150 5450 7100
Wire Wire Line
	5450 6350 5450 6400
$Comp
L SIOMv01-rescue:+12V-power #PWR?
U 1 1 5FE0F424
P 5450 6350
AR Path="/5F8C23F2/5FE0F424" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE0F424" Ref="#PWR0824"  Part="1" 
F 0 "#PWR0824" H 5450 6200 50  0001 C CNN
F 1 "+12V" H 5465 6523 50  0000 C CNN
F 2 "" H 5450 6350 50  0001 C CNN
F 3 "" H 5450 6350 50  0001 C CNN
	1    5450 6350
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FE0F42A
P 5900 6750
AR Path="/5F8C23F2/5FE0F42A" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FE0F42A" Ref="C807"  Part="1" 
F 0 "C807" H 6015 6796 50  0000 L CNN
F 1 "100n/16" H 6015 6705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5938 6600 50  0001 C CNN
F 3 "~" H 5900 6750 50  0001 C CNN
	1    5900 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6600 5900 6400
Wire Wire Line
	5900 6400 5450 6400
Connection ~ 5450 6400
Wire Wire Line
	5450 6400 5450 6450
Wire Wire Line
	5900 6900 5900 7100
Wire Wire Line
	5900 7100 5450 7100
Connection ~ 5450 7100
Wire Wire Line
	5450 7100 5450 7050
Text Notes 6000 6950 0    50   ~ 0
Near IC
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FE299FF
P 1750 6900
AR Path="/5F8BACBE/5FE299FF" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FE299FF" Ref="C808"  Part="1" 
F 0 "C808" H 1865 6946 50  0000 L CNN
F 1 "NP" H 1865 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1788 6750 50  0001 C CNN
F 3 "~" H 1750 6900 50  0001 C CNN
	1    1750 6900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FE29A05
P 2050 7150
AR Path="/5FE29A05" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FE29A05" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE29A05" Ref="#PWR0828"  Part="1" 
F 0 "#PWR0828" H 2050 6900 50  0001 C CNN
F 1 "GND" H 2055 6977 50  0000 C CNN
F 2 "" H 2050 7150 50  0001 C CNN
F 3 "" H 2050 7150 50  0001 C CNN
	1    2050 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 7150 2050 7100
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FE29A0C
P 2050 6650
AR Path="/5F8BACBE/5FE29A0C" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE29A0C" Ref="#PWR0826"  Part="1" 
F 0 "#PWR0826" H 2050 6500 50  0001 C CNN
F 1 "+3V3" H 2065 6823 50  0000 C CNN
F 2 "" H 2050 6650 50  0001 C CNN
F 3 "" H 2050 6650 50  0001 C CNN
	1    2050 6650
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FE29A14
P 2350 6900
AR Path="/5F8BACBE/5FE29A14" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FE29A14" Ref="C809"  Part="1" 
F 0 "C809" H 2465 6946 50  0000 L CNN
F 1 "100n/16" H 2465 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2388 6750 50  0001 C CNN
F 3 "~" H 2350 6900 50  0001 C CNN
	1    2350 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 7050 1750 7100
Wire Wire Line
	1750 7100 2050 7100
Connection ~ 2050 7100
Wire Wire Line
	2050 7100 2350 7100
Wire Wire Line
	2350 7100 2350 7050
Wire Wire Line
	2350 6750 2350 6700
Wire Wire Line
	2350 6700 2050 6700
Connection ~ 2050 6700
Wire Wire Line
	2050 6700 2050 6650
Wire Wire Line
	2050 6700 1750 6700
Wire Wire Line
	1750 6700 1750 6750
$Comp
L SIOMv01-rescue:MAX3226-Interface_UART U802
U 1 1 5FE51138
P 4650 2200
F 0 "U802" H 4100 3250 50  0000 C CNN
F 1 "MAX3226" H 5100 1150 50  0000 C CNN
F 2 "Package_SO:SSOP-16_5.3x6.2mm_P0.65mm" H 4650 900 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3224-MAX3245.pdf" H 4650 2300 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:MAX13432EESD-Interface_UART U804
U 1 1 5FE95101
P 4350 4650
F 0 "U804" H 4000 5300 50  0000 C CNN
F 1 "MAX13432EESD" H 4050 4000 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4350 3650 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX13430E-MAX13433E.pdf" H 4350 5450 50  0001 C CNN
	1    4350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2700 3850 2700
Wire Wire Line
	2950 3400 3500 3400
Wire Wire Line
	3500 2300 3850 2300
Wire Wire Line
	3350 4350 3850 4350
Wire Wire Line
	3850 4850 3500 4850
Wire Wire Line
	3850 4550 3800 4550
Wire Wire Line
	3800 5050 3850 5050
Wire Wire Line
	4650 3400 4650 3450
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FEB0D13
P 4650 3450
AR Path="/5FEB0D13" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FEB0D13" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FEB0D13" Ref="#PWR0809"  Part="1" 
F 0 "#PWR0809" H 4650 3200 50  0001 C CNN
F 1 "GND" H 4655 3277 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 5350 4450 5400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FEB2E17
P 4450 5400
AR Path="/5FEB2E17" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FEB2E17" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FEB2E17" Ref="#PWR0820"  Part="1" 
F 0 "#PWR0820" H 4450 5150 50  0001 C CNN
F 1 "GND" H 4455 5227 50  0000 C CNN
F 2 "" H 4450 5400 50  0001 C CNN
F 3 "" H 4450 5400 50  0001 C CNN
	1    4450 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 5350 4550 5400
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FEB4EEF
P 4550 5400
AR Path="/5FEB4EEF" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FEB4EEF" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FEB4EEF" Ref="#PWR0821"  Part="1" 
F 0 "#PWR0821" H 4550 5150 50  0001 C CNN
F 1 "GND" H 4555 5227 50  0000 C CNN
F 2 "" H 4550 5400 50  0001 C CNN
F 3 "" H 4550 5400 50  0001 C CNN
	1    4550 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2950 3300 3150 3300
Wire Wire Line
	3150 3300 3150 4950
Wire Wire Line
	3150 4950 3800 4950
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FED1FF7
P 6300 4350
AR Path="/5F8C23F2/5FED1FF7" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FED1FF7" Ref="R808"  Part="1" 
F 0 "R808" H 6350 4350 50  0000 L CNN
F 1 "120R" V 6300 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 4350 50  0001 C CNN
F 3 "~" H 6300 4350 50  0001 C CNN
	1    6300 4350
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FED27DE
P 6300 4850
AR Path="/5F8C23F2/5FED27DE" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FED27DE" Ref="R810"  Part="1" 
F 0 "R810" H 6350 4850 50  0000 L CNN
F 1 "120R" V 6300 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 4850 50  0001 C CNN
F 3 "~" H 6300 4850 50  0001 C CNN
	1    6300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4250 4900 4250
Wire Wire Line
	4850 4450 4900 4450
Wire Wire Line
	4850 4750 4900 4750
Wire Wire Line
	4850 4950 4900 4950
Wire Wire Line
	4900 4150 5100 4150
Wire Wire Line
	6300 4150 6300 4200
Wire Wire Line
	4900 4650 6000 4650
Wire Wire Line
	6300 4650 6300 4700
Wire Wire Line
	4900 4550 5300 4550
Wire Wire Line
	6300 4550 6300 4500
Wire Wire Line
	6300 5050 6300 5000
Wire Wire Line
	4900 4950 4900 5050
Wire Wire Line
	4900 4650 4900 4750
Wire Wire Line
	4900 4450 4900 4550
Wire Wire Line
	4900 4150 4900 4250
Wire Wire Line
	6300 4150 6500 4150
Connection ~ 6300 4150
Wire Wire Line
	6300 4550 6500 4550
Connection ~ 6300 4550
Wire Wire Line
	6300 4650 6500 4650
Connection ~ 6300 4650
Wire Wire Line
	6300 5050 6500 5050
Connection ~ 6300 5050
Text HLabel 6500 4150 2    50   BiDi ~ 0
RS485_RX_A
Text HLabel 6500 4550 2    50   BiDi ~ 0
RS485_RX_B
Text HLabel 6500 4650 2    50   BiDi ~ 0
RS485_TX_A
Text HLabel 6500 5050 2    50   BiDi ~ 0
RS485_TX_B
Wire Wire Line
	4350 3950 4350 3900
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FF19014
P 3800 3900
AR Path="/5F8BACBE/5FF19014" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FF19014" Ref="#PWR0812"  Part="1" 
F 0 "#PWR0812" H 3800 3750 50  0001 C CNN
F 1 "+3V3" H 3815 4073 50  0000 C CNN
F 2 "" H 3800 3900 50  0001 C CNN
F 3 "" H 3800 3900 50  0001 C CNN
	1    3800 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 4150 3850 4150
Wire Wire Line
	3800 3900 3800 4150
$Comp
L SIOMv01-rescue:+5V-power #PWR0813
U 1 1 5FF2210D
P 4350 3900
F 0 "#PWR0813" H 4350 3750 50  0001 C CNN
F 1 "+5V" H 4365 4073 50  0000 C CNN
F 2 "" H 4350 3900 50  0001 C CNN
F 3 "" H 4350 3900 50  0001 C CNN
	1    4350 3900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:SP0502BAHT-Power_Protection D802
U 1 1 5FF46504
P 5200 5300
F 0 "D802" H 5405 5346 50  0000 L CNN
F 1 "SP0502BAHT" H 5405 5255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5425 5250 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 5325 5425 50  0001 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:SP0502BAHT-Power_Protection D803
U 1 1 5FF60559
P 6100 5300
F 0 "D803" H 6305 5346 50  0000 L CNN
F 1 "SP0502BAHT" H 6305 5255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6325 5250 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 6225 5425 50  0001 C CNN
	1    6100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5500 5200 5550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FF62611
P 5200 5550
AR Path="/5FF62611" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FF62611" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FF62611" Ref="#PWR0822"  Part="1" 
F 0 "#PWR0822" H 5200 5300 50  0001 C CNN
F 1 "GND" H 5205 5377 50  0000 C CNN
F 2 "" H 5200 5550 50  0001 C CNN
F 3 "" H 5200 5550 50  0001 C CNN
	1    5200 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 5500 6100 5550
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FF6633B
P 6100 5550
AR Path="/5FF6633B" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FF6633B" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FF6633B" Ref="#PWR0823"  Part="1" 
F 0 "#PWR0823" H 6100 5300 50  0001 C CNN
F 1 "GND" H 6105 5377 50  0000 C CNN
F 2 "" H 6100 5550 50  0001 C CNN
F 3 "" H 6100 5550 50  0001 C CNN
	1    6100 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 5100 6200 5050
Connection ~ 6200 5050
Wire Wire Line
	6200 5050 6300 5050
Wire Wire Line
	6000 5100 6000 4650
Connection ~ 6000 4650
Wire Wire Line
	6000 4650 6300 4650
Wire Wire Line
	5100 5100 5100 4150
Connection ~ 5100 4150
Wire Wire Line
	5100 4150 6300 4150
Wire Wire Line
	4900 5050 6200 5050
Wire Wire Line
	5300 5100 5300 4550
Connection ~ 5300 4550
Wire Wire Line
	5300 4550 6300 4550
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FFBBE68
P 3300 6900
AR Path="/5F8BACBE/5FFBBE68" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FFBBE68" Ref="C810"  Part="1" 
F 0 "C810" H 3415 6946 50  0000 L CNN
F 1 "100n/16" H 3415 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3338 6750 50  0001 C CNN
F 3 "~" H 3300 6900 50  0001 C CNN
	1    3300 6900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FFBBE6E
P 3300 7150
AR Path="/5FFBBE6E" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FFBBE6E" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE6E" Ref="#PWR0829"  Part="1" 
F 0 "#PWR0829" H 3300 6900 50  0001 C CNN
F 1 "GND" H 3305 6977 50  0000 C CNN
F 2 "" H 3300 7150 50  0001 C CNN
F 3 "" H 3300 7150 50  0001 C CNN
	1    3300 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7150 3300 7050
Wire Wire Line
	3300 6750 3300 6650
$Comp
L SIOMv01-rescue:+5V-power #PWR?
U 1 1 5FFBBE76
P 4400 6600
AR Path="/5F8BACBE/5FFBBE76" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE76" Ref="#PWR0825"  Part="1" 
F 0 "#PWR0825" H 4400 6450 50  0001 C CNN
F 1 "+5V" H 4415 6773 50  0000 C CNN
F 2 "" H 4400 6600 50  0001 C CNN
F 3 "" H 4400 6600 50  0001 C CNN
	1    4400 6600
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FFBBE7C
P 4100 6900
AR Path="/5F8BACBE/5FFBBE7C" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FFBBE7C" Ref="C811"  Part="1" 
F 0 "C811" H 4215 6946 50  0000 L CNN
F 1 "1u/16" H 4215 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 6750 50  0001 C CNN
F 3 "~" H 4100 6900 50  0001 C CNN
	1    4100 6900
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FFBBE82
P 4400 7150
AR Path="/5FFBBE82" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FFBBE82" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE82" Ref="#PWR0830"  Part="1" 
F 0 "#PWR0830" H 4400 6900 50  0001 C CNN
F 1 "GND" H 4405 6977 50  0000 C CNN
F 2 "" H 4400 7150 50  0001 C CNN
F 3 "" H 4400 7150 50  0001 C CNN
	1    4400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7150 4400 7100
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FFBBE89
P 3300 6650
AR Path="/5F8BACBE/5FFBBE89" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FFBBE89" Ref="#PWR0827"  Part="1" 
F 0 "#PWR0827" H 3300 6500 50  0001 C CNN
F 1 "+3V3" H 3315 6823 50  0000 C CNN
F 2 "" H 3300 6650 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	1    0    0    -1  
$EndComp
Text Notes 4000 7450 0    50   ~ 0
Near MAX13432EESD
Text Notes 3050 7450 0    50   ~ 0
Near MAX3226
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FFBBE91
P 4700 6900
AR Path="/5F8BACBE/5FFBBE91" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FFBBE91" Ref="C812"  Part="1" 
F 0 "C812" H 4815 6946 50  0000 L CNN
F 1 "100n/16" H 4815 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4738 6750 50  0001 C CNN
F 3 "~" H 4700 6900 50  0001 C CNN
	1    4700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7050 4100 7100
Wire Wire Line
	4100 7100 4400 7100
Connection ~ 4400 7100
Wire Wire Line
	4400 7100 4700 7100
Wire Wire Line
	4700 7100 4700 7050
Wire Wire Line
	4700 6750 4700 6700
Wire Wire Line
	4700 6700 4400 6700
Connection ~ 4400 6700
Wire Wire Line
	4400 6700 4100 6700
Wire Wire Line
	4100 6700 4100 6750
Wire Wire Line
	4400 6600 4400 6700
Wire Wire Line
	1950 3100 1450 3100
Wire Wire Line
	1950 3200 1450 3200
Wire Wire Line
	1950 3300 1450 3300
Wire Wire Line
	1950 3400 1450 3400
Text Label 1500 3100 0    50   ~ 0
SPI_CS_HP
Text Label 1500 3200 0    50   ~ 0
SPI_MOSI
Text Label 1500 3300 0    50   ~ 0
SPI_MISO
Text Label 1500 3400 0    50   ~ 0
SPI_SCLK
Text Label 1500 4550 0    50   ~ 0
INT_HP
Wire Wire Line
	2750 4550 1450 4550
Connection ~ 2750 4550
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FDA1049
P 4650 1000
AR Path="/5F8BACBE/5FDA1049" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FDA1049" Ref="#PWR0801"  Part="1" 
F 0 "#PWR0801" H 4650 850 50  0001 C CNN
F 1 "+3V3" H 4665 1173 50  0000 C CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0001 C CNN
	1    4650 1000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 1050 8600 1050
Text Label 8250 1050 0    50   ~ 0
ANA_OUT
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6D71A
P 3850 1450
AR Path="/5F8BACBE/5FC6D71A" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6D71A" Ref="C801"  Part="1" 
F 0 "C801" H 3965 1496 50  0000 L CNN
F 1 "100n/16" H 3965 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3888 1300 50  0001 C CNN
F 3 "~" H 3850 1450 50  0001 C CNN
	1    3850 1450
	-1   0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6EFC3
P 5450 1450
AR Path="/5F8BACBE/5FC6EFC3" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6EFC3" Ref="C802"  Part="1" 
F 0 "C802" H 5565 1496 50  0000 L CNN
F 1 "100n/16" H 5565 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 1300 50  0001 C CNN
F 3 "~" H 5450 1450 50  0001 C CNN
	1    5450 1450
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6F4B0
P 6250 3250
AR Path="/5F8BACBE/5FC6F4B0" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6F4B0" Ref="C803"  Part="1" 
F 0 "C803" H 6365 3296 50  0000 L CNN
F 1 "100n/16" H 6365 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6288 3100 50  0001 C CNN
F 3 "~" H 6250 3250 50  0001 C CNN
	1    6250 3250
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:C-Device C?
U 1 1 5FC6FCF1
P 6800 3250
AR Path="/5F8BACBE/5FC6FCF1" Ref="C?"  Part="1" 
AR Path="/5FB9434D/5FC6FCF1" Ref="C804"  Part="1" 
F 0 "C804" H 6915 3296 50  0000 L CNN
F 1 "100n/16" H 6915 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 3100 50  0001 C CNN
F 3 "~" H 6800 3250 50  0001 C CNN
	1    6800 3250
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FC84224
P 3800 3450
AR Path="/5FC84224" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FC84224" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC84224" Ref="#PWR0808"  Part="1" 
F 0 "#PWR0808" H 3800 3200 50  0001 C CNN
F 1 "GND" H 3805 3277 50  0000 C CNN
F 2 "" H 3800 3450 50  0001 C CNN
F 3 "" H 3800 3450 50  0001 C CNN
	1    3800 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 2900 3850 2900
Wire Wire Line
	3800 2900 3800 3450
Wire Wire Line
	3850 3000 3650 3000
Wire Wire Line
	3650 3000 3650 2950
$Comp
L SIOMv01-rescue:+3V3-power #PWR?
U 1 1 5FC9803E
P 3650 2950
AR Path="/5F8BACBE/5FC9803E" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FC9803E" Ref="#PWR0806"  Part="1" 
F 0 "#PWR0806" H 3650 2800 50  0001 C CNN
F 1 "+3V3" H 3665 3123 50  0000 C CNN
F 2 "" H 3650 2950 50  0001 C CNN
F 3 "" H 3650 2950 50  0001 C CNN
	1    3650 2950
	-1   0    0    -1  
$EndComp
NoConn ~ 5450 3000
NoConn ~ 5450 2900
Text HLabel 5800 2300 2    50   Output ~ 0
TXD
Text HLabel 5800 2700 2    50   Input ~ 0
RXD
Wire Wire Line
	5450 2300 5800 2300
Wire Wire Line
	5450 2700 5800 2700
Wire Wire Line
	6250 3400 6250 3450
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FCF486E
P 6250 3450
AR Path="/5FCF486E" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FCF486E" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FCF486E" Ref="#PWR0810"  Part="1" 
F 0 "#PWR0810" H 6250 3200 50  0001 C CNN
F 1 "GND" H 6255 3277 50  0000 C CNN
F 2 "" H 6250 3450 50  0001 C CNN
F 3 "" H 6250 3450 50  0001 C CNN
	1    6250 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 3400 6800 3450
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FCFA4E7
P 6800 3450
AR Path="/5FCFA4E7" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FCFA4E7" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FCFA4E7" Ref="#PWR0811"  Part="1" 
F 0 "#PWR0811" H 6800 3200 50  0001 C CNN
F 1 "GND" H 6805 3277 50  0000 C CNN
F 2 "" H 6800 3450 50  0001 C CNN
F 3 "" H 6800 3450 50  0001 C CNN
	1    6800 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 3100 6250 2100
Wire Wire Line
	6250 2100 5450 2100
Wire Wire Line
	6800 3100 6800 1800
Wire Wire Line
	6800 1800 5450 1800
$Comp
L Jumper:Jumper_3_Open JP801
U 1 1 5FD46AD3
P 3350 3100
F 0 "JP801" V 3300 2900 50  0000 L CNN
F 1 "232/485" V 3200 2700 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3350 3100 50  0001 C CNN
F 3 "~" H 3350 3100 50  0001 C CNN
	1    3350 3100
	0    1    1    0   
$EndComp
Connection ~ 3500 3400
Wire Wire Line
	3500 3400 3500 4850
Connection ~ 3800 4950
Wire Wire Line
	3800 4950 3800 5050
Wire Wire Line
	3500 2300 3500 3400
Wire Wire Line
	3800 4550 3800 4950
Wire Wire Line
	3350 2850 3350 2700
Wire Wire Line
	3200 3100 2950 3100
Wire Wire Line
	3350 3350 3350 4350
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FE1077B
P 9650 2500
AR Path="/5FE1077B" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FE1077B" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FE1077B" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FE1077B" Ref="R804"  Part="1" 
F 0 "R804" V 9750 2450 50  0000 L CNN
F 1 "10k0" V 9650 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9580 2500 50  0001 C CNN
F 3 "~" H 9650 2500 50  0001 C CNN
	1    9650 2500
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q?
U 1 1 5FE10792
P 10050 2500
AR Path="/5FE10792" Ref="Q?"  Part="1" 
AR Path="/5F8BACBE/5FE10792" Ref="Q?"  Part="1" 
AR Path="/5F8C2412/5FE10792" Ref="Q?"  Part="1" 
AR Path="/5FB9434D/5FE10792" Ref="Q801"  Part="1" 
F 0 "Q801" H 10254 2546 50  0000 L CNN
F 1 "BSS138" H 10254 2455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10250 2425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 10050 2500 50  0001 L CNN
	1    10050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2250 10150 2300
Wire Wire Line
	10150 2250 10450 2250
Wire Wire Line
	9450 2500 9500 2500
Wire Wire Line
	8800 2800 10150 2800
Connection ~ 10150 2800
Wire Wire Line
	10150 2800 10150 2700
Wire Wire Line
	10150 2850 10150 2800
Wire Wire Line
	10150 3150 10150 3200
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 5FE1078B
P 10150 3200
AR Path="/5FE1078B" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/5FE1078B" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/5FE1078B" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/5FE1078B" Ref="#PWR0807"  Part="1" 
F 0 "#PWR0807" H 10150 2950 50  0001 C CNN
F 1 "GND" H 10155 3027 50  0000 C CNN
F 2 "" H 10150 3200 50  0001 C CNN
F 3 "" H 10150 3200 50  0001 C CNN
	1    10150 3200
	1    0    0    -1  
$EndComp
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 5FE10775
P 10150 3000
AR Path="/5FE10775" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/5FE10775" Ref="R?"  Part="1" 
AR Path="/5F8C2412/5FE10775" Ref="R?"  Part="1" 
AR Path="/5FB9434D/5FE10775" Ref="R805"  Part="1" 
F 0 "R805" H 10200 3000 50  0000 L CNN
F 1 "150R" V 10150 2900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10080 3000 50  0001 C CNN
F 3 "~" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2500 9850 2500
Text Notes 1750 7450 0    50   ~ 0
Near SC16IS740
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 6003F275
P 9650 4550
AR Path="/6003F275" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/6003F275" Ref="R?"  Part="1" 
AR Path="/5F8C2412/6003F275" Ref="R?"  Part="1" 
AR Path="/5FB9434D/6003F275" Ref="R809"  Part="1" 
F 0 "R809" V 9750 4500 50  0000 L CNN
F 1 "10k0" V 9650 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9580 4550 50  0001 C CNN
F 3 "~" H 9650 4550 50  0001 C CNN
	1    9650 4550
	0    -1   -1   0   
$EndComp
$Comp
L SIOMv01-rescue:GND-power #PWR?
U 1 1 6003F285
P 10150 4950
AR Path="/6003F285" Ref="#PWR?"  Part="1" 
AR Path="/5F8BACBE/6003F285" Ref="#PWR?"  Part="1" 
AR Path="/5F8C2412/6003F285" Ref="#PWR?"  Part="1" 
AR Path="/5FB9434D/6003F285" Ref="#PWR0817"  Part="1" 
F 0 "#PWR0817" H 10150 4700 50  0001 C CNN
F 1 "GND" H 10155 4777 50  0000 C CNN
F 2 "" H 10150 4950 50  0001 C CNN
F 3 "" H 10150 4950 50  0001 C CNN
	1    10150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4750 10150 4950
$Comp
L SIOMv01-rescue:BSS138-Transistor_FET Q?
U 1 1 6003F28C
P 10050 4550
AR Path="/6003F28C" Ref="Q?"  Part="1" 
AR Path="/5F8BACBE/6003F28C" Ref="Q?"  Part="1" 
AR Path="/5F8C2412/6003F28C" Ref="Q?"  Part="1" 
AR Path="/5FB9434D/6003F28C" Ref="Q802"  Part="1" 
F 0 "Q802" H 10254 4596 50  0000 L CNN
F 1 "BSS138" H 10254 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10250 4475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF" H 10050 4550 50  0001 L CNN
	1    10050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4300 10150 4350
Connection ~ 10150 4300
Wire Wire Line
	10150 4250 10150 4300
Wire Wire Line
	10150 3950 10150 3900
$Comp
L SIOMv01-rescue:R-Device R?
U 1 1 6003F2A9
P 10150 4100
AR Path="/6003F2A9" Ref="R?"  Part="1" 
AR Path="/5F8BACBE/6003F2A9" Ref="R?"  Part="1" 
AR Path="/5F8C2412/6003F2A9" Ref="R?"  Part="1" 
AR Path="/5FB9434D/6003F2A9" Ref="R806"  Part="1" 
F 0 "R806" H 10220 4146 50  0000 L CNN
F 1 "1k00" V 10150 4000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10080 4100 50  0001 C CNN
F 3 "~" H 10150 4100 50  0001 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4300 10450 4300
Text HLabel 10450 4300 2    50   Output ~ 0
HEATER
Wire Wire Line
	9800 4550 9850 4550
Wire Wire Line
	8200 4550 9500 4550
Text Label 8250 4550 0    50   ~ 0
BOILER
Text HLabel 1450 3100 0    50   Input ~ 0
SPI_CS_HP
Text HLabel 1450 3200 0    50   Input ~ 0
SPI_MOSI
Text HLabel 1450 3300 0    50   Output ~ 0
SPI_MISO
Text HLabel 1450 3400 0    50   Input ~ 0
SPI_SCLK
Text HLabel 1450 4550 0    50   Output ~ 0
INT_HP
Text HLabel 8200 1050 0    50   Input ~ 0
ANA_OUT_HP
Text HLabel 8200 4550 0    50   Input ~ 0
BOILER
Text Notes 1350 1650 0    50   ~ 0
Power consumption 5V 300mA\nPower consumption 3V3 20mA + 200mA + 10mA
Text Notes 8450 750  0    50   ~ 0
Power consumption 12V 60mA
Text Notes 9550 5250 0    50   ~ 0
Electrical heater ouput via SSR
$Comp
L SIOMv01-rescue:+5V-power #PWR0116
U 1 1 602DD77E
P 10150 3900
F 0 "#PWR0116" H 10150 3750 50  0001 C CNN
F 1 "+5V" H 10165 4073 50  0000 C CNN
F 2 "" H 10150 3900 50  0001 C CNN
F 3 "" H 10150 3900 50  0001 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
Text Notes 8450 4000 0    50   ~ 0
Power consumption 5V 5mA
Text Notes 10850 4350 0    50   ~ 0
5/0V
Text Notes 8150 1200 0    50   ~ 0
0..3.3V
Text Notes 9150 1700 0    50   ~ 0
A=3.2
$EndSCHEMATC
